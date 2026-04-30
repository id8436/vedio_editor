package com.adobe.premiereclip.prexport;

import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestParameters;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.prexport.PrExportTransferManager;
import com.adobe.premiereclip.prexport.fcpxml.ProjectXmlGenerator;
import com.adobe.premiereclip.prexport.fcpxml.XmlDocument;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.sequence.AssetReference;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.sync.database.CompositeLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.IOUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class PrExportManager implements Handler.Callback, PrExportTransferManager.TransferListener {
    private static final int MSG_CANCEL = 1;
    private static final int MSG_START = 0;
    private static final String PPRO_EXPORT_FOLDER_NAME = "AdobePremiereClipExport";
    private static final String PPRO_EXPORT_MEDIA_FOLDER = "media";
    private ArrayList<AdobeDCXComponent> componentTransfers;
    private float conversionProgress;
    private PrExportCallback exportListener;
    private Handler mExportHandler;
    private XmlDocument mProjectXml;
    private Handler mUiHandler;
    private float mediaTransferProgress;
    private ArrayList<PrExportTransfer> mediaTransfers;
    private String projectExportName;
    private int requestsLeft;
    private Project sourceProject;
    private int totalSteps;
    private PrExportTransferManager transferManager;
    private String xmlFilePath;
    private float xmlTransferProgress;
    private boolean exportCancelled = false;
    private HandlerThread mExportThread = new HandlerThread(getClass().getSimpleName() + ":Handler");

    public interface PrExportCallback {
        void onPProExportCancelled();

        void onPProExportComplete();

        void onPProExportError(boolean z);

        void onPProExportProgress(double d2);
    }

    public PrExportManager(Project project, PrExportCallback prExportCallback, Handler handler) {
        this.sourceProject = project;
        this.projectExportName = project.getProjectExportName();
        this.exportListener = prExportCallback;
        this.mUiHandler = handler;
        this.mExportThread.start();
        this.mExportHandler = new Handler(this.mExportThread.getLooper(), this);
        this.transferManager = new PrExportTransferManager(this, this.mExportHandler);
        this.mediaTransfers = new ArrayList<>();
        this.componentTransfers = new ArrayList<>();
        this.requestsLeft = 0;
        this.mProjectXml = null;
        this.xmlFilePath = "";
    }

    private XmlDocument convertProjectToXml() {
        com.adobe.premiereclip.prexport.fcpxml.Project project = new com.adobe.premiereclip.prexport.fcpxml.Project(this.sourceProject.getProjectName());
        new PrExportProjectConverter().convertProject(this.sourceProject, project);
        XmlDocument xmlDocument = new XmlDocument();
        new ProjectXmlGenerator().convertProjectToXml(project, xmlDocument);
        return xmlDocument;
    }

    private String getProjectCCFolderName() {
        return replaceInvalidPrCharacters(Utilities.removeTrailingCharactersFromString(Utilities.removeTrailingCharactersFromString(this.projectExportName, ' ', d.ROLL_OVER_FILE_NAME_SEPARATOR), '.', d.ROLL_OVER_FILE_NAME_SEPARATOR), d.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    private String getProjectXmlCCAssetName() {
        return replaceInvalidPrCharacters(this.projectExportName, d.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    private String replaceInvalidPrCharacters(String str, String str2) {
        return Utilities.stringByReplacingNonPlaneZeroCharacters(str.replaceAll("&", str2), str2);
    }

    private double getProgress() {
        if (this.totalSteps == 0) {
            return 0.0d;
        }
        if (this.mediaTransferProgress != 100.0d) {
            this.mediaTransferProgress = this.transferManager.getMediaTransferProgress();
        }
        this.xmlTransferProgress = this.transferManager.getUploadTransferProgress();
        return (this.conversionProgress / this.totalSteps) + ((this.mediaTransferProgress * (this.totalSteps - 2)) / this.totalSteps) + (this.xmlTransferProgress / this.totalSteps);
    }

    public void cancelExport() {
        Log.d("PrExportMgr", "sending cancel msg");
        this.mExportHandler.sendEmptyMessage(1);
    }

    public boolean isProjectReadyToExport() {
        AdobeDCXComponent overlayComponent;
        AdobeDCXComponent bumperComponent;
        if (this.sourceProject.getSequence().isBumperEnabled(this.sourceProject.projectKey) && (bumperComponent = getBumperComponent()) != null && (bumperComponent.getEtag() == null || bumperComponent.getEtag().equals(""))) {
            return false;
        }
        if (this.sourceProject.getSequence().isOverlayEnabled() && (overlayComponent = getOverlayComponent()) != null && (overlayComponent.getEtag() == null || overlayComponent.getEtag().equals(""))) {
            return false;
        }
        AdobeDCXComponent lookComponent = getLookComponent();
        if ((lookComponent != null && lookComponent.getEtag() == null) || (lookComponent != null && lookComponent.getEtag().equals(""))) {
            return false;
        }
        AdobeDCXComponent backgroundTrackComponent = getBackgroundTrackComponent();
        if ((backgroundTrackComponent != null && backgroundTrackComponent.getEtag() == null) || (backgroundTrackComponent != null && backgroundTrackComponent.getEtag().equals(""))) {
            return false;
        }
        if (lookComponent != null) {
            Log.d("PrExportManager", "checking - got look component id " + lookComponent.getComponentId());
        }
        if (backgroundTrackComponent != null) {
            Log.d("PrExportManager", "checking - got backgroundtrack component id " + backgroundTrackComponent.getComponentId());
        }
        HashMap<String, AdobeDCXComponent> componentIdToComponentMapForNonSyntheticMedia = getComponentIdToComponentMapForNonSyntheticMedia();
        if (componentIdToComponentMapForNonSyntheticMedia.size() > 0) {
            Iterator<Map.Entry<String, AdobeDCXComponent>> it = componentIdToComponentMapForNonSyntheticMedia.entrySet().iterator();
            while (it.hasNext()) {
                AdobeDCXComponent value = it.next().getValue();
                if (value.getEtag() == null || value.getEtag().equals("")) {
                    return false;
                }
                Log.d("PrExportManager", "checking - got media component id " + value.getComponentId());
            }
        }
        Log.d("PrExportMgr", "project is ready for ppro export");
        return true;
    }

    private AdobeDCXComponent getComponentForManifestNode(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXComposite adobeDCXComposite, String str) {
        for (AdobeDCXComponent adobeDCXComponent : adobeDCXComposite.getCurrent().getComponentsOf(adobeDCXManifestNode)) {
            if (adobeDCXComponent.getRelationship().equals(str)) {
                return adobeDCXComponent;
            }
        }
        return null;
    }

    private AdobeDCXComponent getBumperComponent() {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(this.sourceProject.projectKey, null, null);
        return getComponentForManifestNode(DCXUtils.getBumperNode(adobeDCXCompositeLoadComposite.getCurrent()), adobeDCXCompositeLoadComposite, "video");
    }

    private AdobeDCXComponent getOverlayComponent() {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(this.sourceProject.projectKey, null, null);
        return getComponentForManifestNode(DCXUtils.getOverlayNode(adobeDCXCompositeLoadComposite.getCurrent()), adobeDCXCompositeLoadComposite, "image");
    }

    private AdobeDCXComponent getLookComponent() {
        AdobeDCXCompositeMutableBranch current;
        List<AdobeDCXComponent> componentsOf;
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(this.sourceProject.projectKey);
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null);
        if (adobeDCXCompositeLoadComposite != null && (current = adobeDCXCompositeLoadComposite.getCurrent()) != null && (componentsOf = current.getComponentsOf(DCXUtils.getLookNode(current))) != null && componentsOf.size() > 0) {
            for (AdobeDCXComponent adobeDCXComponent : componentsOf) {
                if (adobeDCXComponent.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    return adobeDCXComponent;
                }
            }
        }
        return null;
    }

    private AdobeDCXComponent getBackgroundTrackComponent() {
        AdobeDCXCompositeMutableBranch current;
        AdobeDCXManifestNode backgroundTrackNode;
        List<AdobeDCXComponent> componentsOf;
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(this.sourceProject.projectKey);
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null);
        if (adobeDCXCompositeLoadComposite != null && (current = adobeDCXCompositeLoadComposite.getCurrent()) != null && (backgroundTrackNode = DCXUtils.getBackgroundTrackNode(current)) != null && (componentsOf = current.getComponentsOf(current.getChildWithId(((String) DCXUtils.appPropertiesFromNode(backgroundTrackNode).opt(DCXProjectKeys.kDCXKey_Clip_mediaRef)).split(URIUtil.SLASH)[2]))) != null && componentsOf.size() > 0) {
            for (AdobeDCXComponent adobeDCXComponent : componentsOf) {
                if (adobeDCXComponent.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    return adobeDCXComponent;
                }
            }
        }
        return null;
    }

    private HashMap<String, AssetReference> getComponentIdToAssetReferenceMapForNonSyntheticMedia() {
        AdobeDCXCompositeMutableBranch current;
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent;
        HashMap<String, AssetReference> map = new HashMap<>();
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(this.sourceProject.projectKey);
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null);
        ArrayList<Clip> clips = this.sourceProject.getSequence().getClips();
        if (adobeDCXCompositeLoadComposite != null && (current = adobeDCXCompositeLoadComposite.getCurrent()) != null && clips.size() > 0) {
            for (Clip clip : clips) {
                if (!clip.getClipType().equals(Clip.CLIP_TYPE.IMAGE_TITLE) && (adobeDCXManifestNodeFindParentOfComponent = current.findParentOfComponent(current.getComponentWithId(clip.getAssetReference().getAssetId()))) != null) {
                    List<AdobeDCXComponent> componentsOf = current.getComponentsOf(adobeDCXManifestNodeFindParentOfComponent);
                    if (componentsOf.size() > 0) {
                        for (AdobeDCXComponent adobeDCXComponent : componentsOf) {
                            if (adobeDCXComponent.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary) && !map.containsKey(adobeDCXComponent.getComponentId())) {
                                map.put(adobeDCXComponent.getComponentId(), clip.getAssetReference());
                            }
                        }
                    }
                }
            }
        }
        return map;
    }

    private HashMap<String, AdobeDCXComponent> getComponentIdToComponentMapForNonSyntheticMedia() {
        AdobeDCXCompositeMutableBranch current;
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent;
        HashMap<String, AdobeDCXComponent> map = new HashMap<>();
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(this.sourceProject.projectKey);
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null);
        ArrayList<Clip> clips = this.sourceProject.getSequence().getClips();
        if (adobeDCXCompositeLoadComposite != null && (current = adobeDCXCompositeLoadComposite.getCurrent()) != null && clips.size() > 0) {
            for (Clip clip : clips) {
                if (!clip.getClipType().equals(Clip.CLIP_TYPE.IMAGE_TITLE) && !clip.getClipType().equals(Clip.CLIP_TYPE.VIDEO_BUMPER) && (adobeDCXManifestNodeFindParentOfComponent = current.findParentOfComponent(current.getComponentWithId(clip.getAssetReference().getAssetId()))) != null) {
                    List<AdobeDCXComponent> componentsOf = current.getComponentsOf(adobeDCXManifestNodeFindParentOfComponent);
                    if (componentsOf.size() > 0) {
                        for (AdobeDCXComponent adobeDCXComponent : componentsOf) {
                            if (adobeDCXComponent.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary) && !map.containsKey(adobeDCXComponent.getComponentId())) {
                                map.put(adobeDCXComponent.getComponentId(), adobeDCXComponent);
                            }
                        }
                    }
                }
            }
        }
        return map;
    }

    private void writeXmlToFile(XmlDocument xmlDocument, String str) {
        String string = xmlDocument.toString(" ", IOUtils.LINE_SEPARATOR_UNIX, -1);
        try {
            File file = new File(Environment.getExternalStorageDirectory(), str);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                if (!file.exists()) {
                    file.createNewFile();
                }
                fileOutputStream.write(string.getBytes());
                fileOutputStream.flush();
                fileOutputStream.close();
                Log.d("PrExportManager", "xml writing done at " + str);
                this.xmlFilePath = file.getAbsolutePath();
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    private void deleteXmlFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    private void createExportFoldersInCCOnCompletion(boolean z) {
        if (!z) {
            Log.d("PrExportMgr", "CC folder creation failed - abort");
            doExportOnCompletion(false, false);
        } else if (this.exportCancelled) {
            deleteXmlFile(this.xmlFilePath);
            doExportOnCompletion(false, false);
        } else {
            this.transferManager.copyAll(this.mediaTransfers);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createFolderInCCIfNotExistsOnCompletion(boolean z) {
        if (z) {
            Log.d("PrExportMgr", "created folder in CC");
        } else {
            Log.d("PrExportMgr", "failed to create folder in CC");
        }
        createExportFoldersInCCOnCompletion(z);
    }

    private void createFolderInCCIfNotExists(String str) {
        final AdobeStorageSession adobeStorageSession = (AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        Handler handler = this.mExportHandler;
        final AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(str);
        if (adobeStorageResourceCollectionCollectionFromHref != null) {
            Log.d("PrExportMgr", "folder to be created is " + adobeStorageResourceCollectionCollectionFromHref.href.toString());
        }
        adobeStorageSession.getDirectory(adobeStorageResourceCollectionCollectionFromHref, AdobeStoragePagingMode.AdobeStorageFirstPage, new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.premiereclip.prexport.PrExportManager.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
            public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection) {
                Log.d("PrExportManager", "folder already exists in CC!");
                PrExportManager.this.createFolderInCCIfNotExistsOnCompletion(true);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                adobeAssetException.printStackTrace();
                Log.d("PrExportMgr", "got CC folder creation error code : " + adobeAssetException.getHttpStatusCode() + "  error description : " + adobeAssetException.getErrorCode().toString());
                if (adobeAssetException.getHttpStatusCode().intValue() != 404) {
                    PrExportManager.this.createFolderInCCIfNotExistsOnCompletion(false);
                } else {
                    Log.d("PrExportManager", "didnt find folder in CC, creating now at" + adobeStorageResourceCollectionCollectionFromHref.href.toString());
                    adobeStorageSession.createDirectory(adobeStorageResourceCollectionCollectionFromHref, new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.premiereclip.prexport.PrExportManager.1.1
                        @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
                        public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection) {
                            Log.d("PrExportManager", "folder created in CC : " + adobeStorageResourceCollection.href.toString());
                            PrExportManager.this.createFolderInCCIfNotExistsOnCompletion(true);
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeAssetException adobeAssetException2) {
                            adobeAssetException2.printStackTrace();
                            Log.d("PrExportManager", "folder creation in CC failed, error : " + adobeAssetException2.getHttpStatusCode() + "  error description : " + adobeAssetException2.getErrorCode().toString());
                            PrExportManager.this.createFolderInCCIfNotExistsOnCompletion(false);
                        }
                    });
                }
            }
        });
    }

    private String getUrlSafeProjectName(String str) {
        return AdobeStorageResourceItem.escapeAssetName(str);
    }

    private String getTrailingSpaceRemovedProjectName(String str) {
        return str.trim();
    }

    private void createExportFoldersInCC(boolean z) {
        String str = "files/AdobePremiereClipExport" + URIUtil.SLASH + getProjectCCFolderName();
        String str2 = str + URIUtil.SLASH + "media";
        Log.d("PrExportMgr", "create export folders in CC");
        Log.d("PrExportMgr", "exportfolderpath : files/AdobePremiereClipExport  ,  projectfolderpath : " + str + "  ,  mediafolderpath : " + str2);
        if (z) {
            Log.d("PrExportMgr", "creating project and media folder");
            createFolderInCCIfNotExists(str2);
        } else {
            Log.d("PrExportMgr", "creating only project folder");
            createFolderInCCIfNotExists(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void userHasEnoughSpaceForMediaAndXmlOnCompletion(boolean z) {
        if (!z) {
            doExportOnCompletion(false, true);
            return;
        }
        if (this.exportCancelled) {
            deleteXmlFile(this.xmlFilePath);
            doExportOnCompletion(false, false);
        } else {
            Log.d("PrExportMgr", "user has space, starting CC uploads!");
            if (this.componentTransfers.size() > 0) {
            }
            this.transferManager.copyAll(this.mediaTransfers);
        }
    }

    private void userHasEnoughSpaceForMediaAndXml(ArrayList<AdobeDCXComponent> arrayList, String str) {
        final long length;
        long length2 = 0;
        if (arrayList.size() <= 0) {
            length = 0;
        } else {
            Iterator<AdobeDCXComponent> it = arrayList.iterator();
            while (true) {
                length = length2;
                if (!it.hasNext()) {
                    break;
                } else {
                    length2 = it.next().getLength() + length;
                }
            }
        }
        Log.d("PrExportMgr", "net transfer size is : " + String.valueOf(length));
        File file = new File(str);
        if (file.exists()) {
            length += file.length();
        }
        ((AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage)).getQuotaInformationOnCompletion(new IAdobeStorageSessionQuotaCallback() { // from class: com.adobe.premiereclip.prexport.PrExportManager.2
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback
            public void onCompletion(Number number, Number number2, Number number3) {
                double d2 = length / 1.073741824E9d;
                Log.d("PrExportMgr", "Transfer size and available size in GB : " + String.valueOf(d2) + "  " + String.valueOf(number2.doubleValue()));
                if (number2.doubleValue() >= d2) {
                    PrExportManager.this.userHasEnoughSpaceForMediaAndXmlOnCompletion(true);
                } else {
                    Log.d("PrExportManager", "not enough space in CC for transfer");
                    PrExportManager.this.userHasEnoughSpaceForMediaAndXmlOnCompletion(false);
                }
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                Log.d("PrExportManager", "unable to get CC quota");
                PrExportManager.this.userHasEnoughSpaceForMediaAndXmlOnCompletion(true);
            }
        }, new Handler(Looper.getMainLooper()));
    }

    private void componentsForTransferOnCompletion() {
        if (this.exportCancelled) {
            Log.d("PrExportManager", "export cancelled due to error - componentsfortransferoncompletion");
            doExportOnCompletion(false, false);
        }
        this.totalSteps = this.mediaTransfers.size() + 2;
        this.xmlFilePath = getProjectXmlCCAssetName() + ".xml";
        writeXmlToFile(this.mProjectXml, this.xmlFilePath);
        this.conversionProgress = 100.0f;
        userHasEnoughSpaceForMediaAndXml(this.componentTransfers, this.xmlFilePath);
    }

    private void componentsForTransfer() {
        AdobeDCXComponent bumperComponent;
        AdobeDCXComponent overlayComponent;
        String projectPathFromProjectId = DCXModelController.getInstance().getProjectPathFromProjectId(this.sourceProject.projectKey);
        AdobeDCXComposite adobeDCXCompositeLoadComposite = DCXModelController.getInstance().loadComposite(new File(projectPathFromProjectId).getName(), projectPathFromProjectId, null);
        AdobeDCXCompositeMutableBranch current = adobeDCXCompositeLoadComposite.getCurrent();
        HashMap<String, AdobeDCXComponent> componentIdToComponentMapForNonSyntheticMedia = getComponentIdToComponentMapForNonSyntheticMedia();
        ArrayList<AdobeDCXComponent> arrayList = new ArrayList();
        if (componentIdToComponentMapForNonSyntheticMedia.size() > 0) {
            Iterator<Map.Entry<String, AdobeDCXComponent>> it = componentIdToComponentMapForNonSyntheticMedia.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getValue());
            }
        }
        AdobeDCXComponent lookComponent = getLookComponent();
        if (lookComponent != null) {
            arrayList.add(lookComponent);
        }
        AdobeDCXComponent backgroundTrackComponent = getBackgroundTrackComponent();
        if (backgroundTrackComponent != null) {
            arrayList.add(backgroundTrackComponent);
        }
        this.requestsLeft = arrayList.size();
        Log.d("PrExportMgr", "componentsfortransfer requests left : " + String.valueOf(this.requestsLeft));
        if (this.requestsLeft == 0) {
            componentsForTransferOnCompletion();
        }
        String str = "AdobePremiereClipExport/" + getProjectCCFolderName() + URIUtil.SLASH + "media";
        if (this.sourceProject.getSequence().isOverlayEnabled() && (overlayComponent = getOverlayComponent()) != null) {
            this.transferManager.itemExistsAtDestination(new PrExportTransfer(DCXReader.getOverlayName(this.sourceProject.projectKey), adobeDCXCompositeLoadComposite.getHref().getPath() + URIUtil.SLASH + overlayComponent.getComponentId(), str, overlayComponent.getType()), overlayComponent);
        }
        if (this.sourceProject.getSequence().isBumperEnabled(this.sourceProject.projectKey) && (bumperComponent = getBumperComponent()) != null) {
            String bumperName = DCXReader.getBumperName(this.sourceProject.projectKey);
            if (DCXProjectKeys.kDCXKey_Sequence_Bumper_Video_Default.equals(bumperName)) {
                bumperName = bumperName + ".mp4";
            }
            this.transferManager.itemExistsAtDestination(new PrExportTransfer(bumperName, adobeDCXCompositeLoadComposite.getHref().getPath() + URIUtil.SLASH + bumperComponent.getComponentId(), str, bumperComponent.getType()), bumperComponent);
        }
        try {
            if (arrayList.size() > 0) {
                for (AdobeDCXComponent adobeDCXComponent : arrayList) {
                    String strSubstring = "";
                    String pathForComponent = DCXUtils.getPathForComponent(adobeDCXComponent, current);
                    if (pathForComponent.contains(".")) {
                        strSubstring = pathForComponent.substring(pathForComponent.lastIndexOf(".") + 1, pathForComponent.length());
                    }
                    String str2 = adobeDCXCompositeLoadComposite.getHref().getPath() + URIUtil.SLASH + adobeDCXComponent.getComponentId();
                    Log.d("PrExportMgr", "componentsfortransfer -  got media sourcepath : " + str2);
                    String str3 = adobeDCXComponent.getComponentId() + "." + strSubstring;
                    String type = adobeDCXComponent.getType();
                    String str4 = "AdobePremiereClipExport/" + getProjectCCFolderName() + URIUtil.SLASH + "media";
                    Log.d("PrExportMgr", "component src path: " + str2 + "    target folder: " + str4 + "   target name: " + str3 + "   media type: " + type);
                    this.transferManager.itemExistsAtDestination(new PrExportTransfer(str3, str2, str4, type), adobeDCXComponent);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            doExportOnCompletion(false, false);
        }
    }

    private void doExportOnCompletion(final boolean z, final boolean z2) {
        this.mUiHandler.post(new Runnable() { // from class: com.adobe.premiereclip.prexport.PrExportManager.3
            @Override // java.lang.Runnable
            public void run() {
                if (PrExportManager.this.exportCancelled) {
                    PrExportManager.this.exportListener.onPProExportCancelled();
                } else if (z) {
                    PrExportManager.this.exportListener.onPProExportComplete();
                } else {
                    PrExportManager.this.exportListener.onPProExportError(z2);
                }
            }
        });
        this.mExportThread.quitSafely();
    }

    private void doExport() {
        this.exportCancelled = false;
        this.mProjectXml = convertProjectToXml();
        Log.d("PrExportManager", "project xml is : " + this.mProjectXml.toString());
        if (this.mProjectXml == null || this.mProjectXml.toString().equals("")) {
            Log.d("PrExportManager", "error in exporting xml");
            this.exportCancelled = true;
            doExportOnCompletion(false, false);
            return;
        }
        componentsForTransfer();
    }

    public void exportFilesToCC() {
        Log.d("PrExportMgr", "sending start msg");
        this.mExportHandler.sendEmptyMessage(0);
    }

    @Override // com.adobe.premiereclip.prexport.PrExportTransferManager.TransferListener
    public void onItemExistsAtDestination(boolean z, PrExportTransfer prExportTransfer, AdobeDCXComponent adobeDCXComponent) {
        if (!z) {
            this.mediaTransfers.add(prExportTransfer);
            this.componentTransfers.add(adobeDCXComponent);
            Log.d("PrExportMgr", "added to mediatransfr and componenttransfr");
        }
        this.requestsLeft--;
        if (this.requestsLeft == 0) {
            componentsForTransferOnCompletion();
        }
    }

    @Override // com.adobe.premiereclip.prexport.PrExportTransferManager.TransferListener
    public void onUploadComplete(boolean z) {
        deleteXmlFile(this.xmlFilePath);
        this.xmlTransferProgress = 100.0f;
        if (!z) {
            if (this.exportCancelled) {
                Log.d("PrExportManager", "user cancelled ppro export");
                doExportOnCompletion(false, false);
                return;
            } else {
                Log.d("PrExportManager", "CC xml upload failed");
                doExportOnCompletion(false, false);
                return;
            }
        }
        doExportOnCompletion(true, false);
    }

    @Override // com.adobe.premiereclip.prexport.PrExportTransferManager.TransferListener
    public void onCopyAllComplete(boolean z) {
        this.mediaTransferProgress = 100.0f;
        if (!z) {
            Log.d("PrExportMgr", "oncopyallcomplete - error in media transfer - aborting!");
            deleteXmlFile(this.xmlFilePath);
            doExportOnCompletion(false, false);
            return;
        }
        String str = "AdobePremiereClipExport/" + getProjectCCFolderName();
        Log.d("PrExportMgr", "starting xml upload at " + str + "  from " + this.xmlFilePath);
        PrExportTransfer prExportTransfer = new PrExportTransfer(getProjectXmlCCAssetName() + ".xml", this.xmlFilePath, str, AdobeNetworkHttpRequestParameters.HTTP_CONTENT_TYPE_APPLICATION_XML);
        if (this.exportCancelled) {
            deleteXmlFile(this.xmlFilePath);
            doExportOnCompletion(false, false);
        } else {
            this.transferManager.upload(prExportTransfer);
        }
    }

    @Override // com.adobe.premiereclip.prexport.PrExportTransferManager.TransferListener
    public void onUploadProgress() {
        final double progress = getProgress();
        this.mUiHandler.post(new Runnable() { // from class: com.adobe.premiereclip.prexport.PrExportManager.4
            @Override // java.lang.Runnable
            public void run() {
                PrExportManager.this.exportListener.onPProExportProgress(progress);
            }
        });
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                Log.d("PrExportMgr", "starting export");
                doExport();
                break;
            case 1:
                Log.d("PrExportMgr", "cancelling export");
                this.exportCancelled = true;
                this.transferManager.cancelAllTransfers();
                break;
        }
        return true;
    }
}
