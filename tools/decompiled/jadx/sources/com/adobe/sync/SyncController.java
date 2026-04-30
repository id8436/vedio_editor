package com.adobe.sync;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXControllerMode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXLocalStorageScheme;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncPhase;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushCompletionHandler;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.sync.ComponentUtils;
import com.adobe.sync.database.ComponentWaitingModel;
import com.adobe.sync.database.CompositeLoader;
import com.adobe.sync.s3utils.DirectS3HttpTaskHandle;
import com.adobe.sync.s3utils.S3TransferManager;
import com.adobe.utility.AndroidMiscUtils;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class SyncController implements IAdobeDCXControllerDelegate {
    public static final String ANALYTICSKEY_SYNC_ACTION_DELETE = "ccSyncActionType:delete";
    public static final String ANALYTICSKEY_SYNC_ACTION_PULL = "ccSyncActionType:pull";
    public static final String ANALYTICSKEY_SYNC_ACTION_PUSH = "ccSyncActionType:push";
    private static final long INT64_MAX = Long.MAX_VALUE;
    private static final String PULLED_DIRECTORY_PREFIX = "_pulled";
    private ComponentManager componentManager;
    private ComponentManagerHelper componentManagerHelper;
    protected HashMap<String, String> mCompositeIdMap;
    private List<String> mCompositesToBeDeleted;
    protected AdobeDCXController mDCXSyncController;
    protected String mDeletedProjectDirectory;
    protected String mPulledProjectDirectory;
    private Random mRandom;
    protected String mRootDirectory;
    private ISyncControllerInterface mSyncDelegate;
    protected String mSyncGroupName;
    private Handler uiHandler;
    private static AdobeDCXLocalStorageScheme storageScheme = AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite;
    private static Integer fixedDelay = 30;
    private static Integer maxRandomDelay = 30;
    private HashMap<String, AdobeDCXComposite> compositeCache = new HashMap<>();
    private ConcurrentHashMap<String, AdobeNetworkHttpTaskHandle> pushRequests = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, AdobeNetworkHttpTaskHandle> pullRequests = new ConcurrentHashMap<>();
    private ArrayList<String> pausedComposites = new ArrayList<>();
    private HashSet<String> compositesToOverwrite = new HashSet<>();
    private AdobeStorageSession mStorageSession = (AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);

    public enum DCXRefreshMode {
        DCX_PUSH_ACCEPTED,
        DCX_PULL_RESOLVED,
        DCX_COMPOSITE_DELETED
    }

    public interface IDCXModelInterface {
        String getDocumentID();

        String getDocumentPath();

        String getDocumentTitle();

        String getProjectType();

        String getRenditionPath();

        void setCreationTS(Date date);

        void setDocumentID(String str);

        void setDocumentPath(String str);

        void setDocumentTitle(String str);

        void setLastModifiedTS(Date date);

        void setProjectMode(String str);

        void setProjectType(String str);

        void setRenditionPath(String str);
    }

    /* JADX INFO: loaded from: classes.dex */
    public interface ISyncControllerInterface {
        void collectCloudSyncWithAction(String str, String str2);

        String currentOpenProjectPath();

        void projectsUpdated();

        void pullStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle);

        void pullStopped(String str, AdobeCSDKException adobeCSDKException);

        void pushStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle);

        void pushStopped(String str, AdobeCSDKException adobeCSDKException);

        void refreshProjectWithId(String str, DCXRefreshMode dCXRefreshMode);

        void removeProjectFromList(String str);

        void resolveConflict(AdobeDCXComposite adobeDCXComposite);

        void setLowDiskSpaceSyncStop(boolean z);

        void showLowDiskSpaceAlert();

        void syncHasFinished();

        void syncHasStarted();

        boolean trackComposite(AdobeDCXComposite adobeDCXComposite);
    }

    public String getSyncGroupName() {
        return this.mSyncGroupName;
    }

    public SyncController(String str, ISyncControllerInterface iSyncControllerInterface, String str2, String str3, String str4, boolean z, Handler handler) {
        this.mSyncDelegate = iSyncControllerInterface;
        this.uiHandler = handler;
        this.mDCXSyncController = new AdobeDCXController(str, this.mStorageSession, this, null);
        this.mDCXSyncController.setMode(AdobeDCXControllerMode.AdobeDCXControllerPaused);
        this.componentManager = new ComponentManager(str2, this.mStorageSession, this.mDCXSyncController);
        this.mStorageSession.setComponentManager(this.componentManager);
        this.mRootDirectory = str2;
        this.mCompositeIdMap = new HashMap<>();
        this.mCompositesToBeDeleted = new ArrayList();
        this.mRandom = new Random();
        this.mPulledProjectDirectory = str3;
        this.mDeletedProjectDirectory = str4;
        this.mSyncGroupName = str;
        initializeCompositeLoader();
        populateCompositeLocalPathMap(str2);
        populateCompositeLocalPathMap(str4);
        populateDeletedCompositeLocalPathMap(str4);
        setNetworkPreference(z);
        this.componentManagerHelper = ComponentManagerHelper.getInstance();
        this.componentManagerHelper.initialize();
    }

    protected void initializeCompositeLoader() {
        CompositeLoader.getInstance().initialize(this.mRootDirectory, this.mPulledProjectDirectory, this.mDeletedProjectDirectory, this.mSyncGroupName, this.mDCXSyncController);
    }

    public void setNetworkPreference(boolean z) {
        EnumSet<AdobeNetworkReachability.AdobeNetworkStatusCode> enumSetOf;
        if (z) {
            enumSetOf = EnumSet.of(AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered);
        } else {
            enumSetOf = EnumSet.of(AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableMetered, AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered);
        }
        this.mDCXSyncController.setSyncAllowedByNetworkStatusMask(enumSetOf);
    }

    public void startMonitor() {
        logMessage("start monitor");
        this.mDCXSyncController.setMode(AdobeDCXControllerMode.AdobeDCXControllerSyncing);
    }

    public void stopMonitor() {
        logMessage("stop monitor");
        this.mDCXSyncController.setMode(AdobeDCXControllerMode.AdobeDCXControllerStopped);
    }

    protected void populateCompositeLocalPathMap(String str) {
        File file = new File(str);
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            ArrayList<AdobeDCXComposite> arrayList = new ArrayList<>();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    try {
                        String fileNameFromPath = getFileNameFromPath(file2.getPath());
                        AdobeDCXComposite adobeDCXCompositeLoadComposite = !fileNameFromPath.equals("preferences") ? loadComposite(fileNameFromPath, file2.getPath(), null) : null;
                        if (adobeDCXCompositeLoadComposite != null) {
                            arrayList.add(adobeDCXCompositeLoadComposite);
                            this.mCompositeIdMap.put(adobeDCXCompositeLoadComposite.getCompositeId(), file2.getPath());
                        }
                    } catch (AdobeDCXException e2) {
                        logMessage(e2.getMessage());
                    }
                }
            }
            logMessage("SyncController scanLocalCompositesInPath " + (this.mDCXSyncController.scanLocalComposites(arrayList) ? "passed" : "failed"));
        }
    }

    private void populateDeletedCompositeLocalPathMap(String str) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                try {
                    AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(file2.getPath()), file2.getPath(), null);
                    if (adobeDCXCompositeLoadComposite != null) {
                        this.mCompositesToBeDeleted.add(adobeDCXCompositeLoadComposite.getCompositeId());
                    }
                } catch (AdobeDCXException e2) {
                    logMessage("Sync: createCompositeFromPath failed in populateDeletedCompositeLocalPathMap");
                }
            }
        }
    }

    protected void logMessage(String str) {
        Log.d("SyncController", "Sync: " + str);
    }

    private AdobeDCXComposite newCompositeWithID(AdobeDCXController adobeDCXController, String str, String str2) {
        AdobeDCXComposite adobeDCXCompositeCreateCompositeFromHref;
        Exception e2;
        String str3 = this.mPulledProjectDirectory + File.separator + str;
        try {
            adobeDCXCompositeCreateCompositeFromHref = AdobeDCXComposite.createCompositeFromHref(new URI(str2), str, str3, storageScheme);
        } catch (Exception e3) {
            adobeDCXCompositeCreateCompositeFromHref = null;
            e2 = e3;
        }
        try {
            adobeDCXCompositeCreateCompositeFromHref.setController(adobeDCXController);
            this.mCompositeIdMap.put(str, str3);
        } catch (Exception e4) {
            e2 = e4;
            logMessage("Unable to create Composite for pull composite: " + str + IOUtils.LINE_SEPARATOR_UNIX + e2.getStackTrace());
        }
        return adobeDCXCompositeCreateCompositeFromHref;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOutUnmanagedComponentDownloadCache(AdobeDCXComposite adobeDCXComposite) {
        AdobeDCXCompositeBranch pulled = adobeDCXComposite.getPulled();
        if (pulled != null) {
            Iterator<AdobeDCXComponent> it = pulled.getAllComponents().iterator();
            while (it.hasNext()) {
                ComponentUtils.ComponentKeys componentKeys = ComponentUtils.getComponentKeys(it.next(), pulled);
                if (componentKeys != null) {
                    this.componentManagerHelper.clearOutComponentDownload(componentKeys.assetUrl, componentKeys.createdDate);
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerRequestsPullOfCompositeWithID(AdobeDCXController adobeDCXController, final String str, String str2) {
        logMessage("Sync Controller Pull Started : " + str);
        this.mCompositeIdMap.get(str);
        if (AndroidMiscUtils.getFreeDiskspace() < 52428800) {
            logMessage("LOW DISK SPACE");
            this.mSyncDelegate.setLowDiskSpaceSyncStop(true);
            stopMonitor();
            return;
        }
        final AdobeDCXComposite adobeDCXCompositeCompositeForCompositeID = compositeForCompositeID(str);
        if (adobeDCXCompositeCompositeForCompositeID == null || adobeDCXCompositeCompositeForCompositeID.getCompositeId() == null) {
            adobeDCXCompositeCompositeForCompositeID = newCompositeWithID(adobeDCXController, str, str2);
        }
        if (adobeDCXCompositeCompositeForCompositeID != null) {
            this.mSyncDelegate.projectsUpdated();
            AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandlePullComposite = AdobeDCXCompositeXfer.pullComposite(adobeDCXCompositeCompositeForCompositeID, this.mStorageSession, new IAdobeDCXPullCompletionHandler() { // from class: com.adobe.sync.SyncController.1
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
                public void onSuccess(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
                    if (adobeDCXCompositeBranch == null) {
                        SyncController.this.logMessage("Sync: Pull Successful with null branch(dummy callback)... for composite " + str);
                    } else {
                        SyncController.this.logMessage("Sync: Pull Successful ... " + adobeDCXCompositeBranch.toString() + " for composite " + str);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
                public void onFailure(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeCSDKException adobeCSDKException) {
                    adobeCSDKException.printStackTrace();
                    SyncController.this.logMessage("Sync: Pull Fail" + adobeCSDKException.getDescription() + " for composite " + str);
                    SyncController.this.mSyncDelegate.projectsUpdated();
                    if (adobeCSDKException.getClass().equals(AdobeNetworkException.class)) {
                        SyncController.this.clearOutUnmanagedComponentDownloadCache(adobeDCXCompositeCompositeForCompositeID);
                        if (((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorServiceDisconnected) {
                            SyncController.this.mStorageSession.getService().reconnect();
                        }
                        try {
                            adobeDCXCompositeCompositeForCompositeID.discardPulledBranch();
                        } catch (AdobeDCXException e2) {
                            SyncController.this.logMessage("Sync: some problem in discarding pulled branch. Error: " + adobeCSDKException.getDescription());
                        }
                    }
                }
            }, null);
            if (adobeNetworkHttpTaskHandlePullComposite != null) {
                beginPull(str, adobeNetworkHttpTaskHandlePullComposite);
            }
        }
    }

    public boolean checkAndAddToComponentWaitingForComposite(AdobeDCXComposite adobeDCXComposite) {
        boolean z = false;
        for (AdobeDCXComponent adobeDCXComponent : adobeDCXComposite.getCurrent().getAllComponents()) {
            ComponentUtils.ComponentKeys componentKeys = ComponentUtils.getComponentKeys(adobeDCXComponent, adobeDCXComposite.getCurrent());
            if (componentKeys != null) {
                if (this.componentManagerHelper.isUploadOfComponentInProgress(componentKeys.assetUrl, componentKeys.createdDate, adobeDCXComposite.getCompositeId(), adobeDCXComponent.getComponentId())) {
                    z = true;
                    try {
                        if (this.componentManagerHelper.getComponentWaitingModel(adobeDCXComponent.getComponentId()) == null) {
                            ComponentWaitingModel componentWaitingModel = new ComponentWaitingModel();
                            componentWaitingModel.setComponentId(adobeDCXComponent.getComponentId());
                            componentWaitingModel.setCompositeId(adobeDCXComposite.getCompositeId());
                            componentWaitingModel.setUCID(getUCIDForAssetUrl(componentKeys.assetUrl, componentKeys.createdDate));
                            componentWaitingModel.setAssetSyncStatus(ComponentWaitingModel.SYNC_STATUS.PENDING.name());
                            componentWaitingModel.setServerHref("");
                            componentWaitingModel.setAdobeId(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
                            componentWaitingModel.setCloudId(AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID());
                            this.componentManagerHelper.insertComponentWaiting(componentWaitingModel);
                        }
                    } catch (DBException e2) {
                        e2.printStackTrace();
                    }
                }
                z = z;
            }
        }
        return z;
    }

    private String getServerHref(String str, String str2) {
        return "assets/" + this.mSyncGroupName + str + URIUtil.SLASH + str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateServer2ServerHrefs(AdobeDCXComposite adobeDCXComposite) {
        ComponentWaitingModel componentWaitingModel;
        AdobeDCXCompositeBranch pushed = adobeDCXComposite.getPushed();
        if (pushed != null && !adobeDCXComposite.getPushed().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete)) {
            List<AdobeDCXComponent> allComponents = pushed.getAllComponents();
            String compositeId = adobeDCXComposite.getCompositeId();
            for (AdobeDCXComponent adobeDCXComponent : allComponents) {
                String componentId = adobeDCXComponent.getComponentId();
                ComponentUtils.ComponentKeys componentKeys = ComponentUtils.getComponentKeys(adobeDCXComponent, pushed);
                if (componentKeys != null) {
                    try {
                        componentWaitingModel = this.componentManagerHelper.getComponentWaitingModel(componentId);
                    } catch (DBException e2) {
                        e2.printStackTrace();
                        componentWaitingModel = null;
                    }
                    if (componentWaitingModel == null) {
                        ComponentWaitingModel componentWaitingModel2 = new ComponentWaitingModel();
                        componentWaitingModel2.setCompositeId(compositeId);
                        componentWaitingModel2.setComponentId(componentId);
                        componentWaitingModel2.setUCID(getUCIDForAssetUrl(componentKeys.assetUrl, componentKeys.createdDate));
                        componentWaitingModel2.setAssetSyncStatus(ComponentWaitingModel.SYNC_STATUS.DONE.name());
                        componentWaitingModel2.setServerHref(getServerHref(compositeId, componentId));
                        componentWaitingModel2.setAdobeId(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
                        componentWaitingModel2.setCloudId(AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID());
                        try {
                            this.componentManagerHelper.insertComponentWaiting(componentWaitingModel2);
                        } catch (DBException e3) {
                            e3.printStackTrace();
                        }
                    } else if (componentWaitingModel.getAssetSyncStatus().equals(ComponentWaitingModel.SYNC_STATUS.PENDING.name())) {
                        componentWaitingModel.setAssetSyncStatus(ComponentWaitingModel.SYNC_STATUS.DONE.name());
                        componentWaitingModel.setServerHref(getServerHref(compositeId, componentId));
                        try {
                            this.componentManagerHelper.updateComponentWaiting(componentWaitingModel);
                        } catch (DBException e4) {
                            e4.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerRequestsPushOfCompositeWithID(AdobeDCXController adobeDCXController, final String str) {
        this.mCompositeIdMap.get(str);
        final AdobeDCXComposite adobeDCXCompositeCompositeForCompositeID = compositeForCompositeID(str);
        if (adobeDCXCompositeCompositeForCompositeID != null) {
            if (checkAndAddToComponentWaitingForComposite(adobeDCXCompositeCompositeForCompositeID) && !this.mDCXSyncController.isSyncPausedForComposite(adobeDCXCompositeCompositeForCompositeID)) {
                this.mDCXSyncController.pauseSyncForComposite(adobeDCXCompositeCompositeForCompositeID);
                logMessage("Sync: Push paused for composite " + str);
                return;
            }
            logMessage("Sync: Push started for composite: " + str);
            adobeDCXCompositeCompositeForCompositeID.setController(adobeDCXController);
            this.mSyncDelegate.projectsUpdated();
            if (!adobeDCXController.isSyncPausedForComposite(adobeDCXCompositeCompositeForCompositeID)) {
                boolean zContains = this.compositesToOverwrite.contains(str);
                this.compositesToOverwrite.remove(str);
                AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandlePushComposite = AdobeDCXCompositeXfer.pushComposite(adobeDCXCompositeCompositeForCompositeID, zContains, this.mStorageSession, new IAdobeDCXPushCompletionHandler() { // from class: com.adobe.sync.SyncController.2
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushCompletionHandler
                    public void onSuccess() {
                        CompositeRetrySyncManager.getInstance().resetRetryCountCompositeSync(str);
                        try {
                            AdobeDCXCompositeBranch pushed = adobeDCXCompositeCompositeForCompositeID.getPushed();
                            if (pushed != null) {
                                List<AdobeDCXComponent> allComponents = pushed.getAllComponents();
                                String compositeState = adobeDCXCompositeCompositeForCompositeID.getCurrent().getCompositeState();
                                boolean z = (compositeState.equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete) || compositeState.equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete)) ? false : true;
                                if (allComponents != null && !allComponents.isEmpty() && z) {
                                    for (AdobeDCXComponent adobeDCXComponent : allComponents) {
                                        ComponentUtils.ComponentKeys componentKeys = ComponentUtils.getComponentKeys(adobeDCXComponent, pushed);
                                        if (componentKeys != null) {
                                            SyncController.this.componentManager.didUploadComponent(adobeDCXComponent, adobeDCXCompositeCompositeForCompositeID, SyncController.this.getUCIDForAssetUrl(componentKeys.assetUrl, componentKeys.createdDate), componentKeys.assetUrl, null);
                                        }
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        SyncController.this.updateServer2ServerHrefs(adobeDCXCompositeCompositeForCompositeID);
                        SyncController.this.logMessage("Sync: Push Successful: " + adobeDCXCompositeCompositeForCompositeID.getCompositeId());
                        SyncController.this.mSyncDelegate.projectsUpdated();
                    }

                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushCompletionHandler
                    public void onFailure(AdobeCSDKException adobeCSDKException) {
                        String compositeId = adobeDCXCompositeCompositeForCompositeID.getCompositeId();
                        SyncController.this.logMessage("Sync: Push failed: " + compositeId);
                        String str2 = SyncController.this.mCompositeIdMap.get(compositeId);
                        if (str2 != null) {
                            if (!SyncController.this.mSyncDelegate.currentOpenProjectPath().equals(SyncController.this.getProjectIdFromPath(str2))) {
                                if (SyncController.this.mCompositesToBeDeleted.contains(compositeId)) {
                                    if (adobeDCXCompositeCompositeForCompositeID.getPushed() == null) {
                                        try {
                                            SyncController.this.mCompositesToBeDeleted.remove(compositeId);
                                            adobeDCXCompositeCompositeForCompositeID.removeLocalStorage();
                                            adobeDCXCompositeCompositeForCompositeID.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete);
                                            SyncController.this.mCompositeIdMap.remove(compositeId);
                                            return;
                                        } catch (AdobeDCXException e2) {
                                            SyncController.this.logMessage("Sync: Error in removing local storage" + e2.getStackTrace());
                                            return;
                                        }
                                    }
                                    if (adobeDCXCompositeCompositeForCompositeID.getPushed().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
                                        SyncController.this.logMessage("Sync: Pushed branch has been successful. Lets update local and Re queue it for deletion.");
                                        try {
                                            adobeDCXCompositeCompositeForCompositeID.acceptPush();
                                            try {
                                                adobeDCXCompositeCompositeForCompositeID.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete);
                                                adobeDCXCompositeCompositeForCompositeID.commitChanges();
                                                return;
                                            } catch (AdobeDCXException e3) {
                                                SyncController.this.logMessage("Sync: Error in committing changes to current: " + e3.getStackTrace());
                                                return;
                                            }
                                        } catch (AdobeDCXException e4) {
                                            SyncController.this.logMessage("Sync: Error in accepting pushed branch: " + e4.getStackTrace());
                                            return;
                                        }
                                    }
                                    if (adobeDCXCompositeCompositeForCompositeID.getPushed().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete)) {
                                        try {
                                            adobeDCXCompositeCompositeForCompositeID.removeLocalStorage();
                                            adobeDCXCompositeCompositeForCompositeID.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete);
                                            SyncController.this.logMessage("Sync: Project deleted from Local");
                                            SyncController.this.mCompositeIdMap.remove(compositeId);
                                            SyncController.this.mCompositesToBeDeleted.remove(compositeId);
                                            return;
                                        } catch (AdobeDCXException e5) {
                                            SyncController.this.logMessage("Sync: Error While deleting project which is marked for deletion from local" + e5.getStackTrace());
                                            return;
                                        }
                                    }
                                    return;
                                }
                                SyncController.this.logMessage("Sync: Push Failed for composite: " + compositeId + " Error: " + adobeCSDKException.getDescription());
                                if (adobeCSDKException.getClass().equals(AdobeAssetException.class)) {
                                    switch (((AdobeAssetException) adobeCSDKException).getErrorCode()) {
                                        case AdobeAssetErrorExceededQuota:
                                            SyncController.this.logMessage("Sync: Error for exceeding quota");
                                            break;
                                        case AdobeAssetErrorConflictingChanges:
                                            SyncController.this.logMessage("Sync: Conflicting changes on server, merge will happen after pull is triggered.");
                                            break;
                                        case AdobeAssetErrorUnexpectedResponse:
                                            SyncController.this.logMessage("Sync: Asset Error unexpected Response server, retry after random delay");
                                            SyncController.this.addCompositeToPushQueueWithRandomDelay(adobeDCXCompositeCompositeForCompositeID);
                                            break;
                                        case AdobeAssetErrorFileWriteFailure:
                                            if (AndroidMiscUtils.getFreeDiskspace() < 52428800) {
                                                SyncController.this.mSyncDelegate.showLowDiskSpaceAlert();
                                                SyncController.this.stopMonitor();
                                            } else {
                                                SyncController.this.addCompositeToPushQueueWithRandomDelay(adobeDCXCompositeCompositeForCompositeID);
                                            }
                                            break;
                                        case AdobeAssetErrorFileReadFailure:
                                            if (SyncController.this.compositeForCompositeID(compositeId) != null) {
                                                SyncController.this.addCompositeToPushQueueWithRandomDelay(adobeDCXCompositeCompositeForCompositeID);
                                            }
                                            break;
                                        default:
                                            SyncController.this.addCompositeToPushQueueWithRandomDelay(adobeDCXCompositeCompositeForCompositeID);
                                            break;
                                    }
                                    return;
                                }
                                if (adobeCSDKException.getClass().equals(AdobeDCXException.class)) {
                                    switch (((AdobeDCXException) adobeCSDKException).getErrorCode()) {
                                        case AdobeDCXErrorCompositeAlreadyExists:
                                            SyncController.this.logMessage("Sync: Error related to already existing Composite, merge conflicts");
                                            SyncController.this.compositesToOverwrite.add(str);
                                            SyncController.this.addCompositeBackToPushQueue(adobeDCXCompositeCompositeForCompositeID, false);
                                            break;
                                        case AdobeDCXErrorUnknownComposite:
                                        case AdobeDCXErrorDeletedComposite:
                                            try {
                                                SyncController.this.logMessage("Sync: Error related to unknown/deleted Composite, we will create a copy and push it to server");
                                                if (SyncController.this.createDuplicateForConflictingComposite(adobeDCXCompositeCompositeForCompositeID) == null) {
                                                    SyncController.this.logMessage("Sync: Error in creating copy, sending it back to push queue to try again");
                                                    SyncController.this.addCompositeBackToPushQueue(adobeDCXCompositeCompositeForCompositeID, true);
                                                } else {
                                                    adobeDCXCompositeCompositeForCompositeID.removeLocalStorage();
                                                    adobeDCXCompositeCompositeForCompositeID.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete);
                                                }
                                            } catch (AdobeDCXException e6) {
                                                SyncController.this.logMessage("Sync: Error in removing composite from local storage " + e6.getStackTrace());
                                                return;
                                            }
                                            break;
                                        case AdobeDCXErrorCompositeHrefUnassigned:
                                            try {
                                                SyncController.this.logMessage("Sync: HREF error, rewriting HREF and adding it to PUSH queue");
                                                adobeDCXCompositeCompositeForCompositeID.resetBinding();
                                                adobeDCXCompositeCompositeForCompositeID.setHref(new URI("assets" + File.separator + SyncController.this.getSyncGroupName() + File.separator + adobeDCXCompositeCompositeForCompositeID.getCompositeId()));
                                            } catch (AdobeDCXException e7) {
                                                SyncController.this.logMessage("Error in setting href: " + e7.getStackTrace());
                                                return;
                                            } catch (Exception e8) {
                                                e8.printStackTrace();
                                                return;
                                            }
                                            break;
                                        default:
                                            SyncController.this.addCompositeToPushQueueWithRandomDelay(adobeDCXCompositeCompositeForCompositeID);
                                            break;
                                    }
                                    return;
                                }
                                if (adobeCSDKException.getClass().equals(AdobeNetworkException.class)) {
                                    SyncController.this.logMessage("Sync: Network Error!!!");
                                    AdobeNetworkException adobeNetworkException = (AdobeNetworkException) adobeCSDKException;
                                    if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorServiceDisconnected) {
                                        SyncController.this.mStorageSession.getService().reconnect();
                                    }
                                    if (adobeNetworkException.getErrorCode() != AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline && adobeNetworkException.getErrorCode() != AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled && adobeNetworkException.getErrorCode() != AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNetworkFailure) {
                                        SyncController.this.addCompositeToPushQueueWithRandomDelay(adobeDCXCompositeCompositeForCompositeID);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            SyncController.this.logMessage("Sync: Composite is being edited we will wait for it to complete");
                        }
                    }
                }, null);
                if (adobeNetworkHttpTaskHandlePushComposite != null) {
                    beginPush(str, adobeNetworkHttpTaskHandlePushComposite);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getProjectIdFromPath(String str) {
        int iLastIndexOf;
        if (str == null || (iLastIndexOf = str.lastIndexOf(File.separator)) == -1) {
            return null;
        }
        return str.substring(iLastIndexOf + 1);
    }

    @SuppressLint({"DefaultLocale"})
    private String createProjectId() {
        return Long.toHexString(((System.currentTimeMillis() + INT64_MAX) + 1) ^ (-1)) + "-" + UUID.randomUUID().toString().toUpperCase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeDCXComposite createDuplicateForConflictingComposite(AdobeDCXComposite adobeDCXComposite) throws Throwable {
        AdobeDCXComposite adobeDCXCompositeLoadComposite;
        String strCreateProjectId = createProjectId();
        String str = this.mRootDirectory + File.separator + strCreateProjectId;
        try {
            FileUtils.copyDirectory(new File(this.mCompositeIdMap.get(adobeDCXComposite.getCompositeId())), new File(str));
            try {
                adobeDCXCompositeLoadComposite = loadComposite(strCreateProjectId, str, null);
                try {
                    adobeDCXCompositeLoadComposite.getCurrent().setValue(formattedStringFromDirectoryName(strCreateProjectId), DCXProjectKeys.kDCXKey_Project_createdDate);
                    adobeDCXCompositeLoadComposite.resetIdentity();
                    try {
                        adobeDCXComposite.setHref(new URI("assets" + File.separator + getSyncGroupName() + File.separator + strCreateProjectId));
                        adobeDCXComposite.setCompositeId(strCreateProjectId);
                    } catch (URISyntaxException e2) {
                        logMessage("Error while adding href to composite");
                    }
                    this.mCompositeIdMap.put(adobeDCXCompositeLoadComposite.getCompositeId(), str);
                    try {
                        adobeDCXCompositeLoadComposite.commitChanges();
                        return adobeDCXCompositeLoadComposite;
                    } catch (AdobeDCXException e3) {
                        logMessage("Error in commiting changes in newly created composite.");
                        return adobeDCXCompositeLoadComposite;
                    }
                } catch (AdobeDCXException e4) {
                    logMessage("Error in opening the newly created composite");
                    return adobeDCXCompositeLoadComposite;
                }
            } catch (AdobeDCXException e5) {
                adobeDCXCompositeLoadComposite = null;
            }
        } catch (IOException e6) {
            logMessage("Error while copying the composite to new project directory" + e6.getStackTrace());
            return null;
        }
    }

    private String formattedStringFromDirectoryName(String str) {
        String[] strArrSplit = str.split("-");
        if (strArrSplit.length > 0) {
            str = strArrSplit[0];
        }
        long j = ((Long.parseLong(str, 16) ^ (-1)) - INT64_MAX) - 1;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(Long.valueOf(j));
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerRequestsAcceptOfCompositeWithID(AdobeDCXController adobeDCXController, String str) {
        logMessage("Sync: AcceptOfComposite " + str);
        final AdobeDCXComposite adobeDCXCompositeCompositeForCompositeID = compositeForCompositeID(str);
        if (adobeDCXCompositeCompositeForCompositeID != null && adobeDCXCompositeCompositeForCompositeID.getCompositeId() != null && adobeDCXCompositeCompositeForCompositeID != null && adobeDCXCompositeCompositeForCompositeID.getCompositeId() != null) {
            String str2 = this.mCompositeIdMap.get(adobeDCXCompositeCompositeForCompositeID.getCompositeId());
            this.mSyncDelegate.projectsUpdated();
            String projectIdFromPath = getProjectIdFromPath(str2);
            logMessage(projectIdFromPath);
            if (str2 != null) {
                if (this.mSyncDelegate.currentOpenProjectPath().equals(projectIdFromPath)) {
                    logMessage("Sync: Composite is being edited we will await for it to complete.");
                    return;
                }
                if (adobeDCXCompositeCompositeForCompositeID.getPushed() == null) {
                    stopPush(str, null);
                    this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                adobeDCXCompositeCompositeForCompositeID.acceptPush();
                            } catch (AdobeDCXException e2) {
                                SyncController.this.logMessage("Error in accepting push: " + e2.getStackTrace());
                            }
                            if (adobeDCXCompositeCompositeForCompositeID.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified) || adobeDCXCompositeCompositeForCompositeID.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete)) {
                                SyncController.this.addCompositeToPushQueueWithRandomDelay(adobeDCXCompositeCompositeForCompositeID);
                            }
                        }
                    });
                    return;
                }
                if (this.mCompositesToBeDeleted.contains(str)) {
                    logMessage("Sync: Project has been in delete list checking for state: " + adobeDCXCompositeCompositeForCompositeID.getPushed().getCompositeState());
                    if (adobeDCXCompositeCompositeForCompositeID.getPushed().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
                        logMessage("Sync: Pushed branch has been successfull. Lets update local and Re queue it for deletion.");
                        stopPush(str, null);
                        this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.4
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    adobeDCXCompositeCompositeForCompositeID.acceptPush();
                                    adobeDCXCompositeCompositeForCompositeID.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete);
                                    try {
                                        adobeDCXCompositeCompositeForCompositeID.commitChanges();
                                    } catch (AdobeDCXException e2) {
                                        SyncController.this.logMessage("Sync: Error in committing changes to current: " + e2.getStackTrace());
                                    }
                                } catch (AdobeDCXException e3) {
                                    SyncController.this.logMessage("Sync: Error in accepting pushed branch: " + e3.getStackTrace());
                                }
                            }
                        });
                        return;
                    } else {
                        if (adobeDCXCompositeCompositeForCompositeID.getPushed().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete)) {
                            try {
                                adobeDCXCompositeCompositeForCompositeID.removeLocalStorage();
                                adobeDCXCompositeCompositeForCompositeID.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete);
                                logMessage("Sync: Project deleted from Local");
                                this.mCompositeIdMap.remove(adobeDCXCompositeCompositeForCompositeID.getCompositeId());
                                this.mCompositesToBeDeleted.remove(adobeDCXCompositeCompositeForCompositeID.getCompositeId());
                                stopPush(str, null);
                                return;
                            } catch (AdobeDCXException e2) {
                                logMessage("Sync: Error While deleting project which is marked for deletion from local" + e2.getStackTrace());
                                return;
                            }
                        }
                        return;
                    }
                }
                logMessage("Sync: Success in pushing the project to server");
                this.mSyncDelegate.collectCloudSyncWithAction("ccSyncActionType:push", adobeDCXCompositeCompositeForCompositeID.getCompositeId());
                stopPush(str, null);
                acceptPushedBranchIfPresent(str);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerRequestsResolveOfCompositeWithID(AdobeDCXController adobeDCXController, final String str) throws Throwable {
        final AdobeDCXComposite adobeDCXCompositeCompositeForCompositeID = compositeForCompositeID(str);
        if (adobeDCXCompositeCompositeForCompositeID == null || adobeDCXCompositeCompositeForCompositeID.getCompositeId() == null) {
            logMessage("controllerRequestsResolveOfCompositeWithID : Composite not found ");
            return;
        }
        logMessage("Sync: ResolveOfComposite - " + str);
        final String str2 = this.mCompositeIdMap.get(str);
        this.mSyncDelegate.projectsUpdated();
        this.mSyncDelegate.collectCloudSyncWithAction("ccSyncActionType:pull", str);
        if (adobeDCXCompositeCompositeForCompositeID.getPulled() == null) {
            if (adobeDCXCompositeCompositeForCompositeID.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete) || adobeDCXCompositeCompositeForCompositeID.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                addCompositeToPushQueueWithRandomDelay(adobeDCXCompositeCompositeForCompositeID, false);
            }
            this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        adobeDCXCompositeCompositeForCompositeID.resolvePullWithBranch(null);
                    } catch (AdobeDCXException e2) {
                        SyncController.this.logMessage("Error in resolving null branch " + e2.toString());
                        e2.printStackTrace();
                    }
                    SyncController.this.stopPull(str, null);
                }
            });
            return;
        }
        if (adobeDCXCompositeCompositeForCompositeID.getCurrent() != null && !str2.contains(PULLED_DIRECTORY_PREFIX)) {
            if (!this.mSyncDelegate.currentOpenProjectPath().equals(str2)) {
                if (adobeDCXCompositeCompositeForCompositeID.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
                    this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.6
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (adobeDCXCompositeCompositeForCompositeID.resolvePullWithBranch(adobeDCXCompositeCompositeForCompositeID.getPulled().getMutableCopy())) {
                                    SyncController.this.mSyncDelegate.refreshProjectWithId(str2, DCXRefreshMode.DCX_PULL_RESOLVED);
                                    SyncController.this.mSyncDelegate.projectsUpdated();
                                    SyncController.this.stopPull(str, null);
                                } else {
                                    SyncController.this.logMessage("Sync: Pull succeeded but accept failed - Composite = " + str);
                                    try {
                                        adobeDCXCompositeCompositeForCompositeID.discardPulledBranch();
                                    } catch (AdobeDCXException e2) {
                                        SyncController.this.logMessage("Sync: some problem in discarding pulled branch : Error - " + e2.getMessage());
                                    }
                                }
                            } catch (AdobeDCXException e3) {
                                SyncController.this.logMessage("Sync: some problem in accepting pulled branch : Error - " + e3.getStackTrace());
                            }
                        }
                    });
                    return;
                }
                if (adobeDCXCompositeCompositeForCompositeID.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                    logMessage("Sync: changes in current branch, resolve conflict");
                    this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.7
                        @Override // java.lang.Runnable
                        public void run() {
                            SyncController.this.mSyncDelegate.resolveConflict(adobeDCXCompositeCompositeForCompositeID);
                            SyncController.this.mSyncDelegate.refreshProjectWithId(str2, DCXRefreshMode.DCX_PULL_RESOLVED);
                            SyncController.this.mSyncDelegate.projectsUpdated();
                            SyncController.this.stopPull(str, null);
                        }
                    });
                    return;
                } else if (adobeDCXCompositeCompositeForCompositeID.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete)) {
                    this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.8
                        @Override // java.lang.Runnable
                        public void run() {
                            boolean zResolvePullWithBranch = false;
                            try {
                                zResolvePullWithBranch = adobeDCXCompositeCompositeForCompositeID.resolvePullWithBranch(adobeDCXCompositeCompositeForCompositeID.getPulled().getMutableCopy());
                            } catch (AdobeDCXException e2) {
                                SyncController.this.logMessage("Sync: Pull succeeded but accept failed - Composite = " + str);
                            }
                            if (zResolvePullWithBranch) {
                                SyncController.this.mCompositesToBeDeleted.remove(str);
                                SyncController.this.mSyncDelegate.refreshProjectWithId(str2, DCXRefreshMode.DCX_PULL_RESOLVED);
                                SyncController.this.mSyncDelegate.projectsUpdated();
                                SyncController.this.stopPull(str, null);
                                return;
                            }
                            SyncController.this.logMessage("Sync: Pull succeeded but accept failed - Composite =" + adobeDCXCompositeCompositeForCompositeID.getCompositeId());
                            try {
                                adobeDCXCompositeCompositeForCompositeID.discardPulledBranch();
                            } catch (AdobeDCXException e3) {
                                SyncController.this.logMessage("Sync: some problem in discarding pulled branch : Error - %@" + e3.getStackTrace());
                            }
                        }
                    });
                    return;
                } else {
                    if (adobeDCXCompositeCompositeForCompositeID.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete)) {
                        stopPull(str, null);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        String path = adobeDCXCompositeCompositeForCompositeID.getPath();
        try {
            adobeDCXCompositeCompositeForCompositeID.removeUnusedLocalFiles();
            if (adobeDCXCompositeCompositeForCompositeID.resolvePullWithBranch(adobeDCXCompositeCompositeForCompositeID.getPulled().getMutableCopy())) {
                String str3 = this.mRootDirectory + File.separator + str;
                try {
                    FileUtils.copyDirectory(new File(path), new File(str3));
                    this.mCompositeIdMap.put(adobeDCXCompositeCompositeForCompositeID.getCompositeId(), str3);
                    this.mSyncDelegate.refreshProjectWithId(str3, DCXRefreshMode.DCX_PULL_RESOLVED);
                    this.mSyncDelegate.projectsUpdated();
                    stopPull(str, null);
                    return;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    logMessage("Sync: Some problem in moving the composite to root from temp. Pull discarded. Composite - " + adobeDCXCompositeCompositeForCompositeID.getCompositeId() + IOUtils.LINE_SEPARATOR_UNIX + e2.getStackTrace());
                    try {
                        adobeDCXCompositeCompositeForCompositeID.removeLocalStorage();
                    } catch (AdobeDCXException e3) {
                        logMessage("Sync: Exception in removeLocalStorage: " + e3.getStackTrace());
                    }
                    this.mCompositeIdMap.remove(adobeDCXCompositeCompositeForCompositeID.getCompositeId());
                    return;
                }
            }
            logMessage("Sync: Pull succeeded but accept failed - Composite = " + adobeDCXCompositeCompositeForCompositeID.getCompositeId());
            try {
                adobeDCXCompositeCompositeForCompositeID.removeLocalStorage();
            } catch (AdobeDCXException e4) {
                logMessage("Sync: Exception in removeLocalStorage: " + e4.getStackTrace());
            }
            this.mCompositeIdMap.remove(adobeDCXCompositeCompositeForCompositeID.getCompositeId());
        } catch (AdobeDCXException e5) {
            logMessage("Sync: some problem in accepting pulled branch: Error - %@" + e5.getStackTrace());
        }
    }

    private void removeServerHrefsForComposite(AdobeDCXComposite adobeDCXComposite) {
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (current != null) {
            Iterator<AdobeDCXComponent> it = current.getAllComponents().iterator();
            while (it.hasNext()) {
                try {
                    this.componentManagerHelper.deleteComponentWaiting(it.next().getComponentId());
                } catch (DBException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void deleteDocumentAtPath(String str) {
        logMessage("Sync: Deleted Document at path started");
        if (str == null) {
            logMessage("Sync: Attempting to delete project with path = null");
            return;
        }
        try {
            AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(str), str, null);
            if (adobeDCXCompositeLoadComposite != null) {
                if (!this.mDCXSyncController.isSyncPausedForComposite(adobeDCXCompositeLoadComposite)) {
                    this.mDCXSyncController.pauseSyncForComposite(adobeDCXCompositeLoadComposite);
                }
                if (adobeDCXCompositeLoadComposite.getPushed() != null) {
                    adobeDCXCompositeLoadComposite.discardPushedBranch();
                }
                removeServerHrefsForComposite(adobeDCXCompositeLoadComposite);
                List<AdobeDCXComponent> allComponents = adobeDCXCompositeLoadComposite.getCurrent().getAllComponents();
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<AdobeDCXComponent> it = allComponents.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getComponentId());
                }
                if (arrayList.size() != 0) {
                    adobeDCXCompositeLoadComposite.removeLocalFilesForComponentsWithIDs(arrayList, null);
                }
                this.mCompositeIdMap.put(adobeDCXCompositeLoadComposite.getCompositeId(), str);
                adobeDCXCompositeLoadComposite.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete);
                adobeDCXCompositeLoadComposite.commitChanges();
                if (this.mDCXSyncController.isSyncPausedForComposite(adobeDCXCompositeLoadComposite)) {
                    this.mDCXSyncController.resumeSyncForComposite(adobeDCXCompositeLoadComposite);
                }
                logMessage("Sync: Moved deleted project to local path and added to push queue");
                this.mCompositesToBeDeleted.add(adobeDCXCompositeLoadComposite.getCompositeId());
            }
        } catch (AdobeDCXException e2) {
            logMessage("Sync: deleteDocumentAtPath failed.");
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerRequestsDeleteOfCompositeWithID(final AdobeDCXController adobeDCXController, final String str) {
        String str2 = this.mCompositeIdMap.get(str);
        if (str2 != null && str2.length() > 0) {
            logMessage("Sync: Delete started for composite: " + str);
            String strCurrentOpenProjectPath = this.mSyncDelegate.currentOpenProjectPath();
            String projectIdFromPath = getProjectIdFromPath(str2);
            this.mSyncDelegate.collectCloudSyncWithAction("ccSyncActionType:delete", str);
            if (strCurrentOpenProjectPath.equals(projectIdFromPath)) {
                logMessage("Sync: Delete snoozed as the project is being edited");
                new Handler().postDelayed(new Runnable() { // from class: com.adobe.sync.SyncController.9
                    @Override // java.lang.Runnable
                    public void run() {
                        SyncController.this.controllerRequestsDeleteOfCompositeWithID(adobeDCXController, str);
                    }
                }, 10000L);
                return;
            }
            AdobeDCXComposite adobeDCXCompositeCompositeForCompositeID = compositeForCompositeID(str);
            if (adobeDCXCompositeCompositeForCompositeID == null || adobeDCXCompositeCompositeForCompositeID.getCompositeId() == null) {
                logMessage("Sync: Delete stopped as project does not exists");
                return;
            }
            AdobeDCXCompositeMutableBranch current = adobeDCXCompositeCompositeForCompositeID.getCurrent();
            if (current != null) {
                if (current.getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                    logMessage("Sync: Delete local copy is modified making a copy with only UUID changed");
                    this.mCompositeIdMap.remove(str);
                    try {
                        adobeDCXCompositeCompositeForCompositeID.resetIdentity();
                        this.mCompositeIdMap.put(adobeDCXCompositeCompositeForCompositeID.getCompositeId(), str2);
                        try {
                            adobeDCXCompositeCompositeForCompositeID.setHref(new URI("assets" + File.separator + getSyncGroupName() + File.separator + adobeDCXCompositeCompositeForCompositeID.getCompositeId()));
                        } catch (URISyntaxException e2) {
                            logMessage("Error while adding href to composite");
                        }
                        adobeDCXCompositeCompositeForCompositeID.commitChanges();
                        logMessage("Sync: Delete added copied composition to push queue with id:" + adobeDCXCompositeCompositeForCompositeID.getCompositeId());
                        this.mSyncDelegate.refreshProjectWithId(str2, DCXRefreshMode.DCX_COMPOSITE_DELETED);
                        this.mSyncDelegate.projectsUpdated();
                        return;
                    } catch (Exception e3) {
                        logMessage("Sync: Delete commit failed for id:" + adobeDCXCompositeCompositeForCompositeID.getCompositeId());
                        return;
                    }
                }
                logMessage("Sync: Delete: Removing the composite and updating gallery");
                this.mCompositeIdMap.remove(str);
                try {
                    removeServerHrefsForComposite(adobeDCXCompositeCompositeForCompositeID);
                    adobeDCXCompositeCompositeForCompositeID.removeLocalStorage();
                    this.mSyncDelegate.projectsUpdated();
                    this.mSyncDelegate.removeProjectFromList(str2);
                } catch (AdobeDCXException e4) {
                    logMessage("Sync: Delete Error Deleting Project Folder");
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public long controllerRequestsBytesConsumedByCompositeWithID(AdobeDCXController adobeDCXController, String str) {
        logMessage("Sync: controllerRequestsBytesConsumedByCompositeWithID ");
        AdobeDCXComposite adobeDCXCompositeCompositeForCompositeID = compositeForCompositeID(str);
        if (adobeDCXCompositeCompositeForCompositeID == null || adobeDCXController == null) {
            return 0L;
        }
        return adobeDCXCompositeCompositeForCompositeID.getLocalStorageBytesConsumed();
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerRequestsClientHandleError(AdobeDCXController adobeDCXController, AdobeCSDKException adobeCSDKException, String str, AdobeDCXSyncPhase adobeDCXSyncPhase, boolean z) {
        logMessage("Sync: controllerRequestsClientHandleError ");
        boolean z2 = false;
        if (z) {
            if (!this.pausedComposites.contains(str)) {
                this.pausedComposites.add(str);
            }
            if (adobeDCXSyncPhase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePush) {
                stopPush(str, adobeCSDKException);
                z2 = true;
            } else if (adobeDCXSyncPhase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePull) {
                stopPull(str, adobeCSDKException);
            }
        }
        try {
            AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(str, null, null);
            if (z2 && adobeCSDKException != null) {
                this.mDCXSyncController.pauseSyncForComposite(adobeDCXCompositeLoadComposite);
                JSONObject largeComponentsComposites = this.componentManager.getLargeComponentsComposites(str);
                Iterator<String> itKeys = largeComponentsComposites.keys();
                DirectS3HttpTaskHandle largeComponentsCompositesRequest = this.componentManager.getLargeComponentsCompositesRequest(str);
                if (itKeys.hasNext()) {
                    beginPush(str, largeComponentsCompositesRequest);
                }
                while (itKeys.hasNext()) {
                    JSONObject jSONObject = largeComponentsComposites.getJSONObject(itKeys.next());
                    Log.d("S3Transfer", "got large component json " + jSONObject.toString());
                    String string = jSONObject.getString("componentId");
                    String string2 = jSONObject.getString("assetPath");
                    String string3 = jSONObject.getString("requestId");
                    if (jSONObject.getString("state").equals(ComponentManager.STATE_WAITING)) {
                        AdobeDCXComponent componentWithId = adobeDCXCompositeLoadComposite.getCurrent().getComponentWithId(string);
                        jSONObject.put("state", ComponentManager.STATE_UPLOADING);
                        handleBigAsset(componentWithId, adobeDCXCompositeLoadComposite, string2, jSONObject, adobeDCXController, string3, largeComponentsCompositesRequest);
                    }
                }
            }
        } catch (Exception e2) {
            stopPush(str, null);
            e2.printStackTrace();
        }
    }

    private void handleBigAsset(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, JSONObject jSONObject, AdobeDCXController adobeDCXController, String str2, DirectS3HttpTaskHandle directS3HttpTaskHandle) {
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = adobeDCXComposite.getCurrent().findParentOfComponent(adobeDCXComponent);
        String componentId = adobeDCXComponent.getComponentId();
        String compositeId = adobeDCXComposite.getCompositeId();
        String name = adobeDCXComponent.getName();
        String type = adobeDCXComponent.getType();
        String strOptString = jSONObject.optString("UCID");
        String str3 = componentId + "." + ComponentUtils.getExtensionFromFilePath(str);
        if (adobeDCXComposite.getCurrent().getComponentWithId(componentId) != null) {
            S3TransferManager.getInstance().transferBigAsset(str, str2, compositeId, str2, componentId, new AnonymousClass10(compositeId, componentId, adobeDCXComposite, adobeDCXComponent, name, type, str3, adobeDCXManifestNodeFindParentOfComponent, strOptString, adobeDCXController, jSONObject, directS3HttpTaskHandle));
        }
    }

    /* JADX INFO: renamed from: com.adobe.sync.SyncController$10, reason: invalid class name */
    class AnonymousClass10 implements S3TransferManager.S3TransferListener {
        final /* synthetic */ AdobeDCXComponent val$component;
        final /* synthetic */ String val$componentId;
        final /* synthetic */ AdobeDCXComposite val$composite;
        final /* synthetic */ String val$compositeId;
        final /* synthetic */ AdobeDCXController val$controller;
        final /* synthetic */ String val$dcxPath;
        final /* synthetic */ AdobeDCXManifestNode val$mediaRefNode;
        final /* synthetic */ String val$name;
        final /* synthetic */ JSONObject val$properties;
        final /* synthetic */ DirectS3HttpTaskHandle val$request;
        final /* synthetic */ String val$type;
        final /* synthetic */ String val$ucid;

        AnonymousClass10(String str, String str2, AdobeDCXComposite adobeDCXComposite, AdobeDCXComponent adobeDCXComponent, String str3, String str4, String str5, AdobeDCXManifestNode adobeDCXManifestNode, String str6, AdobeDCXController adobeDCXController, JSONObject jSONObject, DirectS3HttpTaskHandle directS3HttpTaskHandle) {
            this.val$compositeId = str;
            this.val$componentId = str2;
            this.val$composite = adobeDCXComposite;
            this.val$component = adobeDCXComponent;
            this.val$name = str3;
            this.val$type = str4;
            this.val$dcxPath = str5;
            this.val$mediaRefNode = adobeDCXManifestNode;
            this.val$ucid = str6;
            this.val$controller = adobeDCXController;
            this.val$properties = jSONObject;
            this.val$request = directS3HttpTaskHandle;
        }

        @Override // com.adobe.sync.s3utils.S3TransferManager.S3TransferListener
        public void onCompletion() {
            if (SyncController.this.componentManager.getLargeComponentsComposites().has(this.val$compositeId)) {
                SyncController.this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            String str = "/temp/" + AnonymousClass10.this.val$componentId;
                            AnonymousClass10.this.val$composite.getCurrent().removeComponent(AnonymousClass10.this.val$component);
                            AnonymousClass10.this.val$composite.getCurrent().addComponent(AnonymousClass10.this.val$name, AnonymousClass10.this.val$componentId, AnonymousClass10.this.val$type, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, AnonymousClass10.this.val$dcxPath, AnonymousClass10.this.val$mediaRefNode, AnonymousClass10.this.val$ucid, str);
                            AnonymousClass10.this.val$composite.commitChanges();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                });
            }
            if (SyncController.this.componentManager.removeLargeComponentComposites(this.val$compositeId, this.val$componentId) == 0) {
                SyncController.this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.10.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SyncController.this.stopPush(AnonymousClass10.this.val$compositeId, null);
                        new Thread(new Runnable() { // from class: com.adobe.sync.SyncController.10.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass10.this.val$controller.resumeSyncForComposite(AnonymousClass10.this.val$composite);
                            }
                        }).start();
                    }
                });
            }
        }

        @Override // com.adobe.sync.s3utils.S3TransferManager.S3TransferListener
        public void onError() {
            try {
                this.val$properties.put("state", ComponentManager.STATE_WAITING);
                SyncController.this.uiHandler.postDelayed(new Runnable() { // from class: com.adobe.sync.SyncController.10.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (SyncController.this.componentManager.removeLargeComponentComposites(AnonymousClass10.this.val$compositeId, AnonymousClass10.this.val$componentId) == 0) {
                            SyncController.this.stopPush(AnonymousClass10.this.val$compositeId, null);
                            new Thread(new Runnable() { // from class: com.adobe.sync.SyncController.10.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass10.this.val$controller.resumeSyncForComposite(AnonymousClass10.this.val$composite);
                                }
                            }).start();
                        }
                    }
                }, 5000L);
            } catch (Exception e2) {
                e2.printStackTrace();
                Log.d("S3Transfer", "error writing waiting state after s3 upload failure for " + this.val$componentId);
            }
        }

        @Override // com.adobe.sync.s3utils.S3TransferManager.S3TransferListener
        public void onProgress(int i) {
            this.val$request.setCompletedUnitCount(this.val$request.getCompletedUnitCount() + ((long) i));
        }

        @Override // com.adobe.sync.s3utils.S3TransferManager.S3TransferListener
        public void onCancel() {
            SyncController.this.componentManager.removeAllLargeComponentComposites();
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerHasPausedSyncForAllCompositesDueToError(AdobeDCXController adobeDCXController, AdobeCSDKException adobeCSDKException) {
        logMessage("Sync: controllerHasPausedSyncForAllCompositesDueToError ");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerHasStartedSync(AdobeDCXController adobeDCXController) {
        logMessage("Sync: controllerHasStartedSync ");
        this.mSyncDelegate.syncHasStarted();
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerHasFinishedSync(AdobeDCXController adobeDCXController) {
        logMessage("Sync: controllerHasFinishedSync ");
        this.mSyncDelegate.syncHasFinished();
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerHasUpdatedLocalStorageBytesConsumed(AdobeDCXController adobeDCXController, long j) {
        logMessage("Sync: controllerHasUpdatedLocalStorageBytesConsumed ");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public boolean controllerWillTrackLocalComposite(AdobeDCXController adobeDCXController, AdobeDCXComposite adobeDCXComposite) {
        return this.mSyncDelegate.trackComposite(adobeDCXComposite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addCompositeToPushQueueWithRandomDelay(AdobeDCXComposite adobeDCXComposite) {
        addCompositeToPushQueueWithRandomDelay(adobeDCXComposite, true);
    }

    private void addCompositeToPushQueueWithRandomDelay(final AdobeDCXComposite adobeDCXComposite, boolean z) {
        if (this.componentManager.getLargeComponentsComposites().has(adobeDCXComposite.getCompositeId())) {
            Log.d("S3Transfer", "already uploading " + adobeDCXComposite.getCompositeId() + ", not pushing it to queue");
            return;
        }
        Log.d("S3Transfer", "pushing to queue " + adobeDCXComposite.getCompositeId());
        if (!z || CompositeRetrySyncManager.getInstance().canRetryCompositeSync(adobeDCXComposite.getCompositeId())) {
            long jIntValue = (long) (fixedDelay.intValue() + (this.mRandom.nextFloat() * maxRandomDelay.intValue()));
            if (this.uiHandler.postDelayed(new Runnable() { // from class: com.adobe.sync.SyncController.11
                @Override // java.lang.Runnable
                public void run() {
                    SyncController.this.mDCXSyncController.resumeSyncForComposite(adobeDCXComposite);
                    try {
                        adobeDCXComposite.commitChanges();
                    } catch (AdobeDCXException e2) {
                        SyncController.this.logMessage("Error in committing changes: " + e2.getStackTrace());
                    }
                }
            }, 1000 * jIntValue)) {
                logMessage("Sync: AddCompositePushQueueWithDelay " + jIntValue + " secs");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addCompositeBackToPushQueue(final AdobeDCXComposite adobeDCXComposite, boolean z) {
        if (CompositeRetrySyncManager.getInstance().canRetryCompositeSync(adobeDCXComposite.getCompositeId())) {
            try {
                adobeDCXComposite.discardPushedBranch();
            } catch (AdobeDCXException e2) {
                logMessage("Error in discarding pushed branch");
            }
            if (!z) {
                this.mDCXSyncController.resumeSyncForComposite(adobeDCXComposite);
                this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.12
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            adobeDCXComposite.commitChanges();
                        } catch (AdobeDCXException e3) {
                            SyncController.this.logMessage("Error in committing changes " + e3.getStackTrace());
                        }
                    }
                });
            } else {
                addCompositeToPushQueueWithRandomDelay(adobeDCXComposite);
            }
        }
    }

    public void acceptPulledBranchIfPresent(String str) {
        String str2 = this.mCompositeIdMap.get(str);
        try {
            AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(str, str2, null);
            if (adobeDCXCompositeLoadComposite == null || adobeDCXCompositeLoadComposite.getCompositeId() == null) {
                return;
            }
            if (adobeDCXCompositeLoadComposite.getPulled() != null) {
                try {
                    if (adobeDCXCompositeLoadComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
                        if (!adobeDCXCompositeLoadComposite.resolvePullWithBranch(adobeDCXCompositeLoadComposite.getPulled().getMutableCopy())) {
                            logMessage("Sync: Pull succeeded but accept failed - Composite" + adobeDCXCompositeLoadComposite.getCompositeId());
                            adobeDCXCompositeLoadComposite.discardPulledBranch();
                        }
                        this.mSyncDelegate.refreshProjectWithId(str2, DCXRefreshMode.DCX_PULL_RESOLVED);
                        this.mSyncDelegate.projectsUpdated();
                        return;
                    }
                    if (adobeDCXCompositeLoadComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                        logMessage("Sync: Pull detected changes in current branch, resolve conflict");
                        this.mSyncDelegate.resolveConflict(adobeDCXCompositeLoadComposite);
                        this.mSyncDelegate.refreshProjectWithId(str2, DCXRefreshMode.DCX_PULL_RESOLVED);
                        this.mSyncDelegate.projectsUpdated();
                    }
                } catch (AdobeDCXException e2) {
                    logMessage("Sync: Pull succeeded but accept failed - Composite" + adobeDCXCompositeLoadComposite.getCompositeId());
                }
            }
        } catch (AdobeDCXException e3) {
            logMessage("Sync: Error in reading composite from path." + e3.getStackTrace());
        }
    }

    public void acceptPushedBranchIfPresent(String str) {
        final String str2 = this.mCompositeIdMap.get(str);
        try {
            final AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(str, str2, null);
            if (adobeDCXCompositeLoadComposite == null || adobeDCXCompositeLoadComposite.getCompositeId() == null) {
                return;
            }
            if (adobeDCXCompositeLoadComposite.getPushed() != null) {
                this.uiHandler.post(new Runnable() { // from class: com.adobe.sync.SyncController.13
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            adobeDCXCompositeLoadComposite.acceptPush();
                        } catch (AdobeDCXException e2) {
                            SyncController.this.logMessage("Sync: Error in accepting pushed branch.");
                        }
                        SyncController.this.mSyncDelegate.refreshProjectWithId(str2, DCXRefreshMode.DCX_PUSH_ACCEPTED);
                        SyncController.this.mSyncDelegate.projectsUpdated();
                    }
                });
            }
        } catch (AdobeDCXException e2) {
            logMessage("Sync: Error in creating composite from path." + e2.getStackTrace());
        }
    }

    public AdobeDCXComposite compositeForCompositePath(String str) {
        return compositeForCompositePathWithSyncController(str, true);
    }

    public AdobeDCXComposite compositeForCompositeID(String str) {
        return compositeForCompositePath(this.mCompositeIdMap.get(str));
    }

    public AdobeDCXComposite compositeForCompositePathWithSyncController(String str, Boolean bool) {
        if (str != null) {
            try {
                AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(str), str, null);
                if (adobeDCXCompositeLoadComposite == null) {
                    adobeDCXCompositeLoadComposite = AdobeDCXComposite.createCompositeFromPath(str, storageScheme, this.mDCXSyncController);
                }
                if (bool.booleanValue()) {
                    adobeDCXCompositeLoadComposite.setController(this.mDCXSyncController);
                }
                if (adobeDCXCompositeLoadComposite.getHref() == null) {
                    try {
                        adobeDCXCompositeLoadComposite.setHref(new URI("assets" + File.separator + getSyncGroupName() + File.separator + adobeDCXCompositeLoadComposite.getCompositeId()));
                        return adobeDCXCompositeLoadComposite;
                    } catch (URISyntaxException e2) {
                        logMessage("Error in setting href: " + e2.getStackTrace());
                        return adobeDCXCompositeLoadComposite;
                    }
                }
                return adobeDCXCompositeLoadComposite;
            } catch (AdobeDCXException e3) {
                logMessage("Sync: compositeForCompositePathWithSyncController failed." + e3.getStackTrace());
            }
        }
        return null;
    }

    String getProjectPath(String str) {
        if (this.mRootDirectory == null || this.mRootDirectory.length() == 0) {
            return null;
        }
        return this.mRootDirectory + File.separator + str;
    }

    public void pushDocumentForSync(String str) {
        try {
            String projectPath = getProjectPath(str);
            AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(str, projectPath, null);
            if (adobeDCXCompositeLoadComposite != null && adobeDCXCompositeLoadComposite.getCompositeId() != null && !adobeDCXCompositeLoadComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified) && this.mSyncDelegate.trackComposite(adobeDCXCompositeLoadComposite)) {
                this.mCompositeIdMap.put(adobeDCXCompositeLoadComposite.getCompositeId(), projectPath);
                adobeDCXCompositeLoadComposite.commitChanges();
            }
        } catch (AdobeDCXException e2) {
            logMessage("Sync: pushDocumentForSync failed." + e2.getStackTrace());
        }
    }

    public void lockCompositeForProject(String str) {
        try {
            AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(str), str, null);
            if (adobeDCXCompositeLoadComposite != null && adobeDCXCompositeLoadComposite.getCompositeId() != null) {
                this.mDCXSyncController.pauseSyncForComposite(adobeDCXCompositeLoadComposite);
            }
        } catch (AdobeDCXException e2) {
            logMessage("Sync: lockCompositeForProject failed." + e2.getStackTrace());
        }
    }

    public void unlockCompositeForProject(String str) {
        try {
            AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(str, getProjectPath(str), null);
            if (adobeDCXCompositeLoadComposite != null && adobeDCXCompositeLoadComposite.getCompositeId() != null) {
                this.mDCXSyncController.resumeSyncForComposite(adobeDCXCompositeLoadComposite);
            }
        } catch (AdobeDCXException e2) {
            logMessage("Sync: unlockCompositeForProject failed." + e2.getStackTrace());
        }
    }

    public void forceSync() {
        CompositeRetrySyncManager.getInstance().resetRetryCountAllCompositesSync();
        this.mDCXSyncController.forceServerPoll();
    }

    @SuppressLint({"DefaultLocale"})
    private String directoryNameFromTimeString(String str) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return Long.toHexString(((simpleDateFormat.parse(str).getTime() + INT64_MAX) + 1) ^ (-1)) + "-" + UUID.randomUUID().toString().toUpperCase();
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerHasEnabledSync(AdobeDCXController adobeDCXController, AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
        logMessage("Sync Enabled");
        for (String str : this.pausedComposites) {
            try {
                String str2 = this.mCompositeIdMap.get(str);
                AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(str, str2, null);
                AdobeDCXComposite adobeDCXCompositeLoadComposite2 = (adobeDCXCompositeLoadComposite == null || adobeDCXCompositeLoadComposite.getCompositeId() == null) ? loadComposite(str, str2, "assets" + File.separator + getSyncGroupName() + File.separator + str) : adobeDCXCompositeLoadComposite;
                if (adobeDCXCompositeLoadComposite2 != null) {
                    adobeDCXController.resumeSyncForComposite(adobeDCXCompositeLoadComposite2);
                }
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
            }
        }
        this.pausedComposites.clear();
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate
    public void controllerHasDisabledSync(AdobeDCXController adobeDCXController, AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
        logMessage("Sync Disabled");
    }

    public AdobeDCXComposite loadComposite(String str, String str2, String str3) throws AdobeDCXException {
        return CompositeLoader.getInstance().loadComposite(str, str2, str3);
    }

    protected String getFileNameFromPath(String str) {
        return new File(str).getName();
    }

    public HashMap<String, AdobeNetworkHttpTaskHandle> getCompositePushes() {
        HashMap<String, AdobeNetworkHttpTaskHandle> map = new HashMap<>();
        for (Map.Entry<String, AdobeNetworkHttpTaskHandle> entry : this.pushRequests.entrySet()) {
            if (requestIsValid(entry.getValue())) {
                map.put(entry.getKey(), entry.getValue());
            } else {
                this.pushRequests.remove(entry.getKey());
            }
        }
        return map;
    }

    public HashMap<String, AdobeNetworkHttpTaskHandle> getCompositePulls() {
        HashMap<String, AdobeNetworkHttpTaskHandle> map = new HashMap<>();
        for (Map.Entry<String, AdobeNetworkHttpTaskHandle> entry : this.pullRequests.entrySet()) {
            if (requestIsValid(entry.getValue())) {
                map.put(entry.getKey(), entry.getValue());
            } else {
                this.pullRequests.remove(entry.getKey());
            }
        }
        return map;
    }

    private boolean isCompositeSyncing(AdobeDCXComposite adobeDCXComposite) {
        return adobeDCXComposite != null && getCompositePulls().containsKey(adobeDCXComposite.getCompositeId());
    }

    public boolean pushesOrPullsExist() {
        return getCompositePulls().size() > 0 || getCompositePushes().size() > 0;
    }

    public boolean pushesOrPullsContainsCompositeId(String str) {
        return getCompositePulls().containsKey(str) || getCompositePushes().containsKey(str);
    }

    private boolean requestIsValid(AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        if (adobeNetworkHttpTaskHandle == null) {
            return false;
        }
        boolean zHasFinished = adobeNetworkHttpTaskHandle.hasFinished();
        boolean zIsCancelled = adobeNetworkHttpTaskHandle.isCancelled();
        if (zHasFinished || zIsCancelled) {
            return false;
        }
        return true;
    }

    private void beginPush(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        this.pushRequests.put(str, adobeNetworkHttpTaskHandle);
        this.mSyncDelegate.pushStarted(str, adobeNetworkHttpTaskHandle);
    }

    private void beginPull(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        this.pullRequests.put(str, adobeNetworkHttpTaskHandle);
        this.mSyncDelegate.pullStarted(str, adobeNetworkHttpTaskHandle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopPush(String str, AdobeCSDKException adobeCSDKException) {
        this.pushRequests.remove(str);
        this.mSyncDelegate.pushStopped(str, adobeCSDKException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopPull(String str, AdobeCSDKException adobeCSDKException) {
        this.pullRequests.remove(str);
        this.mSyncDelegate.pullStopped(str, adobeCSDKException);
    }

    public String getUnmanagedDataPathForAssetUrl(String str, String str2) {
        return this.componentManager.getUnmanagedDataPathForAssetUrl(str, str2);
    }

    public String getUCIDForAssetUrl(String str, String str2) {
        return this.componentManager.getUCIDForAssetUrl(str, str2);
    }
}
