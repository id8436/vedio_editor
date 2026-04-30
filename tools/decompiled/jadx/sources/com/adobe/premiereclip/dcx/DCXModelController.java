package com.adobe.premiereclip.dcx;

import android.content.Context;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.sync.ComponentManagerHelper;
import com.adobe.sync.ComponentUtils;
import com.adobe.sync.DBException;
import com.adobe.sync.SyncController;
import com.adobe.sync.SyncController.IDCXModelInterface;
import com.adobe.sync.database.ComponentWaitingModel;
import com.adobe.sync.database.CompositeLoader;
import com.adobe.sync.database.PreferenceCompositeLoader;
import com.adobe.utility.AndroidMiscUtils;
import java.io.File;
import java.io.IOException;
import java.lang.Comparable;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class DCXModelController<T extends SyncController.IDCXModelInterface & Comparable<T>> implements SyncController.ISyncControllerInterface {
    private static final String AdobeCacheDigestKey = "AdobeCacheDigestKey";
    private static final String AdobeImageResultCompositeImageURLKey = "compositeImageURL";
    private static final String DELETED_DIRECTORY_PREFIX = "_deleted";
    private static final String PULLED_DIRECTORY_PREFIX = "_pulled";
    private static final String SETTINGS_SYNC_ENABLED_ON_WIFI = "PSMIXSettingsSyncEnabledOnWifi";
    private static SimpleDateFormat formatter = null;
    private static SimpleDateFormat formatter2 = null;
    private static DCXModelController instance = null;
    private static final String projectPathPrefix = "Projects/v01";
    private SyncController mSyncController;
    private PreferenceSyncController preferenceSyncController;
    private Class<T> typeArgumentClass;
    private ISyncControllerEventReceiver projectsUpdateListiner = null;
    private ISyncControllerSyncStatusReceiver projectsSyncStatusListener = null;
    private ISyncControllerSyncStatusReceiver projectsSyncStatusListenerForSyncIcon = null;
    private IDCXProjectManagerListener dcxProjectManagetListener = null;
    private boolean isProjectSyncing = false;
    private boolean isSyncEnabled = true;
    private String mCurrentOpenProjectPath = "";
    private HashMap<String, String> projectPathIdMap = new HashMap<>();
    private boolean mLowDiskSpaceSyncStop = false;
    private Context currentContext = null;
    private String currentUserId = null;
    private volatile boolean refreshCloud = true;
    private boolean mInitalized = false;
    private boolean mSyncInitialize = false;
    private String mPathToCompositionDirectory = null;
    private String mPathToUserCompositionDirectory = null;
    private String mPathToUserPulledDirectory = null;
    private String mPathToUserDeletedDirectory = null;
    private String mTemporaryDirectory = null;
    private List mBasicDCXModelList = Collections.synchronizedList(new ArrayList());
    private Map<String, Map<String, String>> mProjectHashPathMap = null;
    private ISyncStatusChangeListener syncStatusChangeListener = null;

    public interface IDCXProjectManagerListener {
        void updatePosterForProject(String str, String str2, String str3);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface ISyncControllerEventReceiver {
        void projectsUpdated();

        void showLowDiskSpaceAlert();
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface ISyncControllerSyncStatusReceiver {
        void compositeRefreshed(String str);

        void pullStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle);

        void pullStopped(String str, AdobeCSDKException adobeCSDKException);

        void pushStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle);

        void pushStopped(String str, AdobeCSDKException adobeCSDKException);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface ISyncStatusChangeListener {
        void syncStatusUpdated();
    }

    static {
        formatter = null;
        formatter2 = null;
        formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        formatter.setTimeZone(TimeZone.getTimeZone("UTC"));
        formatter2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        formatter2.setTimeZone(TimeZone.getTimeZone("UTC"));
        instance = new DCXModelController(BasicDCXModel.class);
    }

    public String getCachedImagePath(String str, String str2) {
        if (this.mProjectHashPathMap.containsKey(str)) {
            Map<String, String> map = this.mProjectHashPathMap.get(str);
            String str3 = map.get(AdobeCacheDigestKey);
            if (str3 == null || !str3.equals(str2)) {
                String str4 = map.get(AdobeImageResultCompositeImageURLKey);
                if (str4 != null) {
                    new File(str4).delete();
                    map.remove(AdobeImageResultCompositeImageURLKey);
                }
                map.put(AdobeCacheDigestKey, str2);
                this.mProjectHashPathMap.put(str, map);
                return "";
            }
            return map.get(AdobeImageResultCompositeImageURLKey);
        }
        HashMap map2 = new HashMap();
        map2.put(AdobeCacheDigestKey, str2);
        this.mProjectHashPathMap.put(str, map2);
        return "";
    }

    public void addCacheImagePath(String str, String str2) {
        Map<String, String> map = this.mProjectHashPathMap.get(str);
        map.put(AdobeImageResultCompositeImageURLKey, str2);
        this.mProjectHashPathMap.put(str, map);
    }

    public static DCXModelController getInstance() {
        if (instance == null) {
            instance = new DCXModelController(BasicDCXModel.class);
        }
        return instance;
    }

    private DCXModelController(Class<T> cls) {
        this.typeArgumentClass = cls;
    }

    public void initalize(Context context, String str) {
        if (this.refreshCloud) {
            this.refreshCloud = false;
            AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        this.mTemporaryDirectory = Utilities.getDiskCacheDir(context).getPath();
        String str2 = context.getApplicationInfo().dataDir;
        if (this.mPathToCompositionDirectory == null || this.mPathToCompositionDirectory.trim().isEmpty()) {
            this.mPathToCompositionDirectory = str2 + File.separator + projectPathPrefix;
        }
        createPathToUserDirectories(str);
        this.mProjectHashPathMap = new HashMap();
        this.projectsUpdateListiner = null;
        this.projectsSyncStatusListener = null;
        this.projectsSyncStatusListenerForSyncIcon = null;
        this.projectPathIdMap = new HashMap<>();
        this.mBasicDCXModelList = Collections.synchronizedList(new ArrayList());
        this.currentContext = context;
        this.currentUserId = str;
        this.mInitalized = true;
        Log.d("DCXModelController", "DCXModelController initialized");
    }

    public void setRefreshCloud(boolean z) {
        this.refreshCloud = z;
    }

    public boolean isInitialized() {
        return this.mInitalized;
    }

    public boolean isSyncInitialized() {
        return this.mSyncInitialize;
    }

    public void initializeSync() {
        if (this.mSyncController == null && AdobeCloudManager.getSharedCloudManager().getDefaultCloud() != null) {
            initializeSyncEnabledFromPreferences();
            Handler handler = new Handler(PremiereClipApplication.getContext().getMainLooper());
            this.mSyncController = new SyncController("adobe-premiereclip", this, getPathToUserCompositionDirectory(), getPathToUserPulledDirectory(), getPathToUserDeletedDirectory(), isSyncEnabled(), handler);
            this.preferenceSyncController = new PreferenceSyncController("adobe-premiereclip-preferences", this, getPathToUserCompositionDirectory(), getPathToUserPulledDirectory(), getPathToUserDeletedDirectory(), isSyncEnabled(), handler);
            this.mSyncController.startMonitor();
            this.preferenceSyncController.startMonitor();
            this.mSyncInitialize = true;
        }
    }

    private SyncController getSyncController(String str) {
        return str.equals("preferences") ? this.preferenceSyncController : this.mSyncController;
    }

    public void uninitializeSync() {
        if (this.mSyncController != null) {
            this.mSyncController.stopMonitor();
            this.preferenceSyncController.stopMonitor();
            this.mSyncController = null;
            this.preferenceSyncController = null;
            this.mSyncInitialize = false;
        }
    }

    public void resetControllerOnLogin() {
        uninitalize();
        uninitializeSync();
    }

    public void uninitalize() {
        this.mInitalized = false;
        resetPathToUserDirectories();
    }

    public String getPathToUserCompositionDirectory() {
        return this.mPathToUserCompositionDirectory;
    }

    public String getPathToUserPulledDirectory() {
        return this.mPathToUserPulledDirectory;
    }

    public String getPathToUserDeletedDirectory() {
        return this.mPathToUserDeletedDirectory;
    }

    public String getPathToCompositionDirectory() {
        return this.mPathToCompositionDirectory;
    }

    public void initializeModelFromDisk() {
        if (this.mInitalized) {
            File file = new File(getPathToUserCompositionDirectory());
            file.mkdirs();
            this.mBasicDCXModelList = Collections.synchronizedList(new ArrayList());
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(file2.getAbsolutePath()), file2.getAbsolutePath(), null);
                    if (adobeDCXCompositeLoadComposite != null) {
                        adobeDCXCompositeLoadComposite.setAutoRemoveUnusedLocalFiles(false);
                        if (adobeDCXCompositeLoadComposite.getCurrent() != null) {
                            try {
                                T tNewInstance = this.typeArgumentClass.newInstance();
                                tNewInstance.setDocumentPath(file2.getAbsolutePath());
                                try {
                                    reloadModelFromDisk(tNewInstance, tNewInstance.getDocumentPath());
                                } catch (DCXModelException e2) {
                                    Log.e("PRClipModel", "New Document path is null.empty while reading the project", e2);
                                }
                                addNewProject(tNewInstance, null);
                            } catch (Exception e3) {
                                Log.e("PRClipModel", "BasicDCXModel creation failure.", e3);
                            }
                        }
                    }
                }
            }
        }
    }

    public T getModelAtPath(String str) {
        T tNewInstance;
        if (!this.mInitalized) {
            return null;
        }
        try {
            tNewInstance = this.typeArgumentClass.newInstance();
            tNewInstance.setDocumentPath(this.mPathToUserCompositionDirectory + File.separator + str);
            try {
                reloadModelFromDisk(tNewInstance, tNewInstance.getDocumentPath());
            } catch (DCXModelException e2) {
                Log.e("PRClipModel", "Document path is null.empty while reading the project", e2);
            }
        } catch (Exception e3) {
            Log.e("PRClipModel", "BasicDCXModel creation failure.", e3);
            tNewInstance = null;
        }
        return tNewInstance;
    }

    public int addNewProject(T t, String str) {
        int i;
        int i2 = -1;
        if (this.mInitalized) {
            if (this.mBasicDCXModelList.indexOf(t) == -1) {
                this.mBasicDCXModelList.add(t);
            }
            Comparable comparable = (Comparable) t;
            int size = this.mBasicDCXModelList.size() - 1;
            if (this.mBasicDCXModelList.size() > 1) {
                synchronized (this.mBasicDCXModelList) {
                    ListIterator listIterator = this.mBasicDCXModelList.listIterator(this.mBasicDCXModelList.size());
                    listIterator.previous();
                    i = size;
                    while (listIterator.hasPrevious() && comparable.compareTo((SyncController.IDCXModelInterface) listIterator.previous()) < 0) {
                        Collections.swap(this.mBasicDCXModelList, i, i - 1);
                        i--;
                    }
                }
                i2 = i;
            } else {
                i2 = size;
            }
            if (str != null) {
                pushProjectToServer(str);
            }
            if (str == null) {
                str = t.getDocumentID();
            }
            addProjectPathToProjectId(str, t.getDocumentPath());
        }
        return i2;
    }

    public void pushProjectForPositionToServer(int i) {
        SyncController.IDCXModelInterface iDCXModelInterface = (SyncController.IDCXModelInterface) this.mBasicDCXModelList.get(i);
        if (iDCXModelInterface != null) {
            try {
                reloadModelFromDisk(iDCXModelInterface, iDCXModelInterface.getDocumentPath());
            } catch (DCXModelException e2) {
                Log.e("PRClipModel", "Document path is null.empty while reading the project", e2);
            }
            pushProjectToServer(getFileNameFromPath(iDCXModelInterface.getDocumentPath()));
        }
    }

    public void pushProjectToServer(String str) {
        SyncController syncController = getSyncController(str);
        if (syncController != null && str != null) {
            syncController.unlockCompositeForProject(str);
            syncController.acceptPulledBranchIfPresent(str);
            syncController.acceptPushedBranchIfPresent(str);
            syncController.pushDocumentForSync(str);
        }
    }

    public void pushProjectToServer(AdobeDCXComposite adobeDCXComposite) {
        if (adobeDCXComposite != null) {
            pushProjectToServerWithoutUnlocking(getFileNameFromPath(adobeDCXComposite.getPath()));
        }
    }

    private void pushProjectToServerWithoutUnlocking(String str) {
        SyncController syncController = getSyncController(str);
        if (syncController != null && str != null) {
            syncController.pushDocumentForSync(str);
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void collectCloudSyncWithAction(String str, String str2) {
    }

    private T getModelInModelListFromPath(String str) {
        T t;
        if (this.mBasicDCXModelList == null) {
            return null;
        }
        synchronized (this.mBasicDCXModelList) {
            Iterator it = this.mBasicDCXModelList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    t = null;
                    break;
                }
                t = (T) ((SyncController.IDCXModelInterface) it.next());
                if (t.getDocumentPath().equals(str)) {
                    break;
                }
            }
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void deleteProjectWithKey(String str) {
        SyncController.IDCXModelInterface modelInModelListFromPath = getModelInModelListFromPath(this.mPathToUserCompositionDirectory + File.separator + str);
        if (modelInModelListFromPath != null) {
            getInstance().deleteProject(modelInModelListFromPath);
        }
    }

    public void deleteProject(T t) throws Throwable {
        if (this.mInitalized) {
            this.mBasicDCXModelList.remove(t);
            String documentPath = t.getDocumentPath();
            AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(t.getDocumentPath()), documentPath, null);
            String compositeId = adobeDCXCompositeLoadComposite.getCompositeId();
            if (this.mProjectHashPathMap.containsKey(compositeId)) {
                String str = this.mProjectHashPathMap.get(compositeId).get(compositeId);
                if (str != null) {
                    new File(str).delete();
                }
                this.mProjectHashPathMap.remove(compositeId);
            }
            if (adobeDCXCompositeLoadComposite != null && compositeId == null) {
                try {
                    String str2 = this.mTemporaryDirectory + File.separator + UUID.randomUUID();
                    File file = new File(documentPath);
                    File file2 = new File(str2);
                    FileUtils.moveDirectory(file, file2);
                    FileUtils.deleteDirectory(file2);
                } catch (IOException e2) {
                    Log.e("PRClipModel", "Delete: Composite not found. Failed to move files to temporary directory", e2);
                }
            } else {
                File file3 = new File(getPathToUserDeletedDirectory());
                file3.mkdirs();
                try {
                    String str3 = file3.getPath() + File.separator + UUID.randomUUID();
                    FileUtils.moveDirectory(new File(documentPath), new File(str3));
                    if ("preferences".equals(compositeId)) {
                        PreferenceCompositeLoader.getInstance().removeFromCompositeCache(compositeId);
                    } else {
                        CompositeLoader.getInstance().removeFromCompositeCache(compositeId);
                    }
                    getSyncController(compositeId).deleteDocumentAtPath(str3);
                    reloadCollectionViewAfterDelete(true);
                } catch (IOException e3) {
                    Log.e("PRClipModel", "Delete: Composite found. Failed to move composite to temporary directory", e3);
                }
            }
            removeFromProjectPathIdMap(t.getDocumentID());
        }
    }

    public void reloadCollectionViewAfterDelete(boolean z) {
    }

    public List<T> getDataset() {
        return this.mBasicDCXModelList;
    }

    private String getFileNameFromPath(String str) {
        return new File(str).getName();
    }

    public void updateModelTitle(T t, String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite;
        if (this.mInitalized && (adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(t.getDocumentPath()), t.getDocumentPath(), null)) != null) {
            adobeDCXCompositeLoadComposite.setAutoRemoveUnusedLocalFiles(false);
            AdobeDCXCompositeMutableBranch current = adobeDCXCompositeLoadComposite.getCurrent();
            if (current != null) {
                current.setValue(str, "name");
                current.setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateModified);
                t.setDocumentTitle(str);
                pushProjectToServerWithoutUnlocking(getFileNameFromPath(t.getDocumentPath()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateProjectTitleWithKey(String str, String str2) {
        SyncController.IDCXModelInterface modelInModelListFromPath = getModelInModelListFromPath(this.mPathToUserCompositionDirectory + File.separator + str);
        if (modelInModelListFromPath != null) {
            getInstance().updateModelTitle(modelInModelListFromPath, str2);
        }
    }

    public void updateProjectEditMode(String str, String str2) {
        SyncController.IDCXModelInterface modelInModelListFromPath = getModelInModelListFromPath(this.mPathToUserCompositionDirectory + File.separator + str);
        if (modelInModelListFromPath != null && this.mInitalized) {
            AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(modelInModelListFromPath.getDocumentPath()), modelInModelListFromPath.getDocumentPath(), null);
            adobeDCXCompositeLoadComposite.setAutoRemoveUnusedLocalFiles(false);
            AdobeDCXCompositeMutableBranch current = adobeDCXCompositeLoadComposite.getCurrent();
            if (current != null) {
                JSONObject jSONObject = (JSONObject) current.get(DCXProjectKeys.kDCX_AppProperties);
                try {
                    jSONObject.putOpt(DCXProjectKeys.kDCXKey_Project_projectMode, str2);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                current.setValue(jSONObject, DCXProjectKeys.kDCX_AppProperties);
                modelInModelListFromPath.setProjectMode(str2);
            }
            pushProjectToServer(adobeDCXCompositeLoadComposite);
        }
    }

    public void updateModelTitleWithoutPushToServer(AdobeDCXComposite adobeDCXComposite, T t, String str) {
        adobeDCXComposite.setAutoRemoveUnusedLocalFiles(false);
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (current != null) {
            current.setValue(str, "name");
            t.setDocumentTitle(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int duplicateProjectWithKey(String str) {
        SyncController.IDCXModelInterface modelInModelListFromPath = getModelInModelListFromPath(this.mPathToUserCompositionDirectory + File.separator + str);
        if (modelInModelListFromPath == null) {
            return -1;
        }
        return getInstance().duplicateModel(modelInModelListFromPath);
    }

    private void updateComponentsInDuplicatedProject(AdobeDCXComposite adobeDCXComposite) throws DBException {
        String ucid;
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        ArrayList<AdobeDCXComponent> arrayList = (ArrayList) ((ArrayList) current.getAllComponents()).clone();
        ComponentManagerHelper componentManagerHelper = ComponentManagerHelper.getInstance();
        componentManagerHelper.initialize();
        for (AdobeDCXComponent adobeDCXComponent : arrayList) {
            AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = current.findParentOfComponent(adobeDCXComponent);
            ComponentUtils.ComponentKeys componentKeys = ComponentUtils.getComponentKeys(adobeDCXComponent, current);
            if (componentKeys != null) {
                String string = UUID.randomUUID().toString();
                String name = adobeDCXComponent.getName();
                String type = adobeDCXComponent.getType();
                String relationship = adobeDCXComponent.getRelationship();
                String path = adobeDCXComponent.getPath();
                String serverHref = null;
                ComponentWaitingModel componentWaitingModel = null;
                try {
                    componentWaitingModel = componentManagerHelper.getComponentWaitingModel(adobeDCXComponent.getComponentId());
                } catch (DBException e2) {
                    e2.printStackTrace();
                }
                if (componentWaitingModel == null) {
                    ucid = getUCIDForAssetUrl(componentKeys.assetUrl, componentKeys.createdDate);
                } else {
                    ucid = componentWaitingModel.getUCID();
                    if (componentWaitingModel.getAssetSyncStatus().equals(ComponentWaitingModel.SYNC_STATUS.DONE.name())) {
                        serverHref = componentWaitingModel.getServerHref();
                    }
                }
                current.removeComponent(adobeDCXComponent);
                try {
                    current.addComponent(name, string, type, relationship, path, adobeDCXManifestNodeFindParentOfComponent, ucid, serverHref);
                } catch (AdobeCSDKException e3) {
                    e3.printStackTrace();
                }
            }
        }
    }

    public int duplicateModel(T t) throws Throwable {
        if (!this.mInitalized) {
            return -1;
        }
        if (AndroidMiscUtils.getFreeDiskspace() < 52428800) {
            showLowDiskSpaceAlert();
            return -1;
        }
        String strGenerateProjectId = generateProjectId();
        File file = new File(t.getDocumentPath());
        File file2 = new File(getPathToUserCompositionDirectory() + File.separator + strGenerateProjectId);
        try {
            FileUtils.copyDirectory(file, file2);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        try {
            T tNewInstance = this.typeArgumentClass.newInstance();
            tNewInstance.setDocumentPath(file2.getAbsolutePath());
            AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(tNewInstance.getDocumentPath()), tNewInstance.getDocumentPath(), null);
            updateComponentsInDuplicatedProject(adobeDCXCompositeLoadComposite);
            String strGenerateDuplicateModelTitle = generateDuplicateModelTitle(t.getDocumentTitle());
            updateCreationDateInModel(adobeDCXCompositeLoadComposite, tNewInstance, new Date());
            updateModelTitleWithoutPushToServer(adobeDCXCompositeLoadComposite, tNewInstance, strGenerateDuplicateModelTitle);
            adobeDCXCompositeLoadComposite.resetIdentity();
            adobeDCXCompositeLoadComposite.setHref(new URI("assets" + File.separator + this.mSyncController.getSyncGroupName() + File.separator + strGenerateProjectId));
            adobeDCXCompositeLoadComposite.setCompositeId(strGenerateProjectId);
            try {
                reloadModelFromDisk(tNewInstance, tNewInstance.getDocumentPath());
            } catch (DCXModelException e3) {
                Log.e("PRClipModel", "New Document path is null/empty while duplicating", e3);
            }
            return addNewProject(tNewInstance, getFileNameFromPath(tNewInstance.getDocumentPath()));
        } catch (Exception e4) {
            Log.e("PRClipModel", "BasicDCXModel creation failure.", e4);
            return addNewProject(null, "");
        }
    }

    public String getProjectPathFromProjectId(String str) {
        if (this.projectPathIdMap.containsKey(str)) {
            return this.projectPathIdMap.get(str);
        }
        return null;
    }

    private void addProjectPathToProjectId(String str, String str2) {
        if (!this.projectPathIdMap.containsKey(str)) {
            this.projectPathIdMap.put(str, str2);
        }
    }

    private void removeFromProjectPathIdMap(String str) {
        if (this.projectPathIdMap.containsKey(str)) {
            this.projectPathIdMap.remove(str);
        }
    }

    private void removeModelWIPId(AdobeDCXComposite adobeDCXComposite) {
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (current != null) {
            current.remove("psmix#behance_wip_id");
            try {
                adobeDCXComposite.commitChanges();
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
            }
        }
    }

    private String generateDuplicateModelTitle(String str) {
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        String[] strArrSplit = strTrim.split(" ");
        Integer numValueOf = 1;
        if (strArrSplit.length > 1 && Utilities.isInteger(strArrSplit[strArrSplit.length - 1])) {
            try {
                numValueOf = Integer.valueOf(Integer.parseInt(strArrSplit[strArrSplit.length - 1]));
                strTrim = "";
                int i = 0;
                while (i < strArrSplit.length - 1) {
                    String str2 = strTrim + " " + strArrSplit[i];
                    i++;
                    strTrim = str2;
                }
            } catch (NumberFormatException e2) {
                numValueOf = 1;
            }
        }
        return strTrim.trim() + " " + (numValueOf.intValue() + 1);
    }

    private Date parseDate(String str) throws ParseException {
        try {
            return formatter.parse(str);
        } catch (ParseException e2) {
            return formatter2.parse(str);
        }
    }

    public String getBrandingProjectId() {
        String documentID;
        if (this.mBasicDCXModelList == null) {
            return null;
        }
        synchronized (this.mBasicDCXModelList) {
            Iterator it = this.mBasicDCXModelList.iterator();
            int i = 0;
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    documentID = null;
                    break;
                }
                SyncController.IDCXModelInterface iDCXModelInterface = (SyncController.IDCXModelInterface) it.next();
                if (iDCXModelInterface.getProjectType().equals("Branding")) {
                    documentID = iDCXModelInterface.getDocumentID();
                    break;
                }
                i = i2 + 1;
            }
        }
        return documentID;
    }

    public void reloadModelFromDisk(T t, String str) throws DCXModelException {
        if (str == null || str.trim().isEmpty()) {
            throw new DCXModelException("Document Path cannot be null/empty");
        }
        AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(t.getDocumentPath()), str, null);
        if (adobeDCXCompositeLoadComposite != null) {
            adobeDCXCompositeLoadComposite.setAutoRemoveUnusedLocalFiles(false);
            AdobeDCXCompositeMutableBranch current = adobeDCXCompositeLoadComposite.getCurrent();
            if (current != null) {
                t.setDocumentID((String) current.get("id"));
                t.setDocumentTitle((String) current.get("name"));
                if (current.get(DCXProjectKeys.kDCX_AppProperties) != null) {
                    JSONObject jSONObject = (JSONObject) current.get(DCXProjectKeys.kDCX_AppProperties);
                    String str2 = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_Project_createdDate);
                    String str3 = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_Project_lastModifiedDate);
                    String str4 = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_Project_projectMode);
                    if (str2 != null) {
                        try {
                            t.setCreationTS(parseDate(str2));
                        } catch (ParseException e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (str3 != null) {
                        try {
                            t.setLastModifiedTS(parseDate(str3));
                        } catch (ParseException e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (str4 != null) {
                        t.setProjectMode(str4);
                    }
                }
                for (AdobeDCXComponent adobeDCXComponent : current.getComponentsOf(null)) {
                    String relationship = adobeDCXComponent.getRelationship();
                    String name = adobeDCXComponent.getName();
                    if (relationship != null && name != null && relationship.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition) && name.equals("Poster")) {
                        try {
                            t.setRenditionPath(adobeDCXCompositeLoadComposite.getCurrent().getPathForComponent(adobeDCXComponent));
                            return;
                        } catch (AdobeDCXException e4) {
                            e4.printStackTrace();
                            return;
                        }
                    }
                }
            }
        }
    }

    private String getPosterComponentHashValue(String str) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(getFileNameFromPath(str), str, null);
        if (adobeDCXCompositeLoadComposite != null) {
            for (AdobeDCXComponent adobeDCXComponent : adobeDCXCompositeLoadComposite.getCurrent().getComponentsOf(null)) {
                String relationship = adobeDCXComponent.getRelationship();
                String name = adobeDCXComponent.getName();
                if (relationship != null && name != null && relationship.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition) && name.equals("Poster")) {
                    return adobeDCXComponent.getMd5();
                }
            }
        }
        return null;
    }

    private void updateCreationDateInModel(AdobeDCXComposite adobeDCXComposite, T t, Date date) {
        adobeDCXComposite.setAutoRemoveUnusedLocalFiles(false);
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (current != null) {
            JSONObject jSONObject = (JSONObject) current.get(DCXProjectKeys.kDCX_AppProperties);
            String str = formatter.format(date);
            try {
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_Project_createdDate, str);
                jSONObject.putOpt(DCXProjectKeys.kDCXKey_Project_lastModifiedDate, str);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            current.setValue(jSONObject, DCXProjectKeys.kDCX_AppProperties);
            t.setCreationTS(date);
        }
    }

    private void resetIdentity(AdobeDCXComposite adobeDCXComposite) {
        adobeDCXComposite.resetIdentity();
        try {
            adobeDCXComposite.setHref(new URI("assets" + File.separator + this.mSyncController.getSyncGroupName() + File.separator + adobeDCXComposite.getCompositeId()));
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
        }
    }

    private String generateProjectId() {
        return String.format("%016x", Long.valueOf((((System.currentTimeMillis() / 1000) + Long.MAX_VALUE) + 1) ^ (-1))).toUpperCase(Locale.getDefault()) + "-" + UUID.randomUUID();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.BufferedReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getNumberOfLayers(java.lang.String r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.dcx.DCXModelController.getNumberOfLayers(java.lang.String):int");
    }

    public String getProjectTitle(String str) {
        Object obj;
        AdobeDCXCompositeMutableBranch current = loadComposite(str, getPathToUserCompositionDirectory() + File.separator + str, null).getCurrent();
        if (current == null || (obj = current.get("name")) == null || !(obj instanceof String)) {
            return null;
        }
        return (String) obj;
    }

    public long getLocalBytesConsumed(String str) {
        return loadComposite(str, getPathToUserCompositionDirectory() + File.separator + str, null).getLocalStorageBytesConsumed();
    }

    public int getBehanceWIPId(String str) {
        Object obj;
        AdobeDCXCompositeMutableBranch current = loadComposite(str, getPathToUserCompositionDirectory() + File.separator + str, null).getCurrent();
        if (current == null || (obj = current.get("psmix#behance_wip_id")) == null || !(obj instanceof Integer)) {
            return -1;
        }
        return ((Integer) obj).intValue();
    }

    public void setBehanceWIPId(String str, int i) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = loadComposite(str, getPathToUserCompositionDirectory() + File.separator + str, null);
        adobeDCXCompositeLoadComposite.getCurrent().setValue(Integer.valueOf(i), "psmix#behance_wip_id");
        try {
            adobeDCXCompositeLoadComposite.commitChanges();
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
        }
    }

    private void resetPathToUserDirectories() {
        resetPathToUserCompositionDirectory();
        resetPathToPulledDirectory();
        resetPathToDeletedDirectory();
    }

    private void resetPathToUserCompositionDirectory() {
        this.mPathToUserCompositionDirectory = null;
    }

    private void resetPathToPulledDirectory() {
        this.mPathToUserPulledDirectory = null;
    }

    private void resetPathToDeletedDirectory() {
        this.mPathToUserDeletedDirectory = null;
    }

    private void createPathToUserDirectories(String str) {
        createPathToUserCompositionDirectory(str);
        createPathToUserPulledDirectory(str);
        createPathToUserDeletedDirectory(str);
    }

    private void createPathToUserCompositionDirectory(String str) {
        if (AdobeCloudManager.getSharedCloudManager().getDefaultCloud() != null) {
            this.mPathToUserCompositionDirectory = this.mPathToCompositionDirectory + File.separator + str + File.separator + AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID();
        } else {
            this.mPathToUserCompositionDirectory = this.mPathToCompositionDirectory + File.separator + str;
        }
    }

    private void createPathToUserPulledDirectory(String str) {
        if (AdobeCloudManager.getSharedCloudManager().getDefaultCloud() != null) {
            this.mPathToUserPulledDirectory = this.mPathToCompositionDirectory + File.separator + str + PULLED_DIRECTORY_PREFIX + File.separator + AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID();
        } else {
            this.mPathToUserPulledDirectory = getPathToUserCompositionDirectory() + PULLED_DIRECTORY_PREFIX;
        }
    }

    private void createPathToUserDeletedDirectory(String str) {
        if (AdobeCloudManager.getSharedCloudManager().getDefaultCloud() != null) {
            this.mPathToUserDeletedDirectory = this.mPathToCompositionDirectory + File.separator + str + DELETED_DIRECTORY_PREFIX + File.separator + AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID();
        } else {
            this.mPathToUserDeletedDirectory = getPathToUserCompositionDirectory() + DELETED_DIRECTORY_PREFIX;
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public boolean trackComposite(AdobeDCXComposite adobeDCXComposite) {
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        return current == null || current.get("psmix#sample_composition") == null || current.get("psmix#sample_composition") == Boolean.FALSE;
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void syncHasStarted() {
        setProjectSyncing(true);
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void syncHasFinished() {
        setProjectSyncing(false);
    }

    public void setCurrentOpenProjectPath(String str) {
        if (str == null) {
            this.mCurrentOpenProjectPath = "";
            return;
        }
        int iLastIndexOf = str.lastIndexOf(File.separator);
        if (iLastIndexOf != -1 && this.mSyncController != null) {
            this.mCurrentOpenProjectPath = str.substring(iLastIndexOf + 1);
            this.mSyncController.lockCompositeForProject(str);
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public String currentOpenProjectPath() {
        return this.mCurrentOpenProjectPath;
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void projectsUpdated() {
        if (this.projectsUpdateListiner != null) {
            this.projectsUpdateListiner.projectsUpdated();
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void showLowDiskSpaceAlert() {
        if (this.projectsUpdateListiner != null) {
            this.projectsUpdateListiner.showLowDiskSpaceAlert();
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void pushStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        if (this.projectsSyncStatusListener != null) {
            this.projectsSyncStatusListener.pushStarted(str, adobeNetworkHttpTaskHandle);
        }
        if (this.projectsSyncStatusListenerForSyncIcon != null) {
            this.projectsSyncStatusListenerForSyncIcon.pushStarted(str, adobeNetworkHttpTaskHandle);
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void pullStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        if (this.projectsSyncStatusListener != null) {
            this.projectsSyncStatusListener.pullStarted(str, adobeNetworkHttpTaskHandle);
        }
        if (this.projectsSyncStatusListenerForSyncIcon != null) {
            this.projectsSyncStatusListenerForSyncIcon.pullStarted(str, adobeNetworkHttpTaskHandle);
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void pushStopped(String str, AdobeCSDKException adobeCSDKException) {
        if (this.projectsSyncStatusListener != null) {
            this.projectsSyncStatusListener.pushStopped(str, adobeCSDKException);
        }
        if (this.projectsSyncStatusListenerForSyncIcon != null) {
            this.projectsSyncStatusListenerForSyncIcon.pushStopped(str, adobeCSDKException);
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void pullStopped(String str, AdobeCSDKException adobeCSDKException) {
        if (this.projectsSyncStatusListener != null) {
            this.projectsSyncStatusListener.pullStopped(str, adobeCSDKException);
        }
        if (this.projectsSyncStatusListenerForSyncIcon != null) {
            this.projectsSyncStatusListenerForSyncIcon.pullStopped(str, adobeCSDKException);
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void removeProjectFromList(String str) {
        SyncController.IDCXModelInterface modelInModelListFromPath;
        if (this.mBasicDCXModelList != null && (modelInModelListFromPath = getModelInModelListFromPath(str)) != null) {
            this.mBasicDCXModelList.remove(modelInModelListFromPath);
            removeFromProjectPathIdMap(modelInModelListFromPath.getDocumentID());
        }
    }

    private int getProjectPositionInList(String str) {
        if (this.mBasicDCXModelList == null) {
            return -1;
        }
        synchronized (this.mBasicDCXModelList) {
            Iterator it = this.mBasicDCXModelList.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (((SyncController.IDCXModelInterface) it.next()).getDocumentPath().equals(str)) {
                    return i;
                }
                i++;
            }
            return -1;
        }
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void refreshProjectWithId(String str, SyncController.DCXRefreshMode dCXRefreshMode) {
        try {
            T tNewInstance = this.typeArgumentClass.newInstance();
            tNewInstance.setDocumentPath(str);
            try {
                reloadModelFromDisk(tNewInstance, tNewInstance.getDocumentPath());
            } catch (DCXModelException e2) {
                Log.e("PRClipModel", "Document path is null.empty while reading the project", e2);
            }
            int projectPositionInList = getProjectPositionInList(str);
            if (projectPositionInList == -1) {
                addNewProject(tNewInstance, null);
            } else {
                this.mBasicDCXModelList.set(projectPositionInList, tNewInstance);
            }
            if (dCXRefreshMode == SyncController.DCXRefreshMode.DCX_PULL_RESOLVED && projectPositionInList != -1 && this.dcxProjectManagetListener != null) {
                this.dcxProjectManagetListener.updatePosterForProject(tNewInstance.getDocumentID(), tNewInstance.getRenditionPath(), getPosterComponentHashValue(tNewInstance.getDocumentPath()));
            }
            if (this.projectsSyncStatusListenerForSyncIcon != null) {
                this.projectsSyncStatusListenerForSyncIcon.compositeRefreshed(tNewInstance.getDocumentID());
            }
        } catch (Exception e3) {
            Log.e("PRClipModel", "BasicDCXModel creation failure.", e3);
        }
    }

    public void setProjectsUpdateListiner(ISyncControllerEventReceiver iSyncControllerEventReceiver) {
        this.projectsUpdateListiner = iSyncControllerEventReceiver;
    }

    public void setProjectsSyncStatusListener(ISyncControllerSyncStatusReceiver iSyncControllerSyncStatusReceiver) {
        this.projectsSyncStatusListener = iSyncControllerSyncStatusReceiver;
    }

    public void setProjectsSyncStatusListenerForSyncIcon(ISyncControllerSyncStatusReceiver iSyncControllerSyncStatusReceiver) {
        this.projectsSyncStatusListenerForSyncIcon = iSyncControllerSyncStatusReceiver;
    }

    public void setDCXProjectManagerListener(IDCXProjectManagerListener iDCXProjectManagerListener) {
        this.dcxProjectManagetListener = iDCXProjectManagerListener;
    }

    public void setSyncStatusCangeListener(ISyncStatusChangeListener iSyncStatusChangeListener) {
        this.syncStatusChangeListener = iSyncStatusChangeListener;
    }

    public boolean isProjectSyncing() {
        return this.isProjectSyncing;
    }

    public void setProjectSyncing(boolean z) {
        this.isProjectSyncing = z;
        if (this.syncStatusChangeListener != null) {
            this.syncStatusChangeListener.syncStatusUpdated();
        }
    }

    public void initializeSyncEnabledFromPreferences() {
        this.isSyncEnabled = PreferenceManager.getDefaultSharedPreferences(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext()).getBoolean(SETTINGS_SYNC_ENABLED_ON_WIFI, true);
    }

    public boolean isSyncEnabled() {
        return this.isSyncEnabled;
    }

    public void setSyncEnabled(boolean z) {
        PreferenceManager.getDefaultSharedPreferences(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext()).edit().putBoolean(SETTINGS_SYNC_ENABLED_ON_WIFI, z).apply();
        this.isSyncEnabled = z;
        this.mSyncController.setNetworkPreference(z);
        this.preferenceSyncController.setNetworkPreference(z);
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void setLowDiskSpaceSyncStop(boolean z) {
        this.mLowDiskSpaceSyncStop = z;
    }

    public boolean getLowDiskSpaceSyncStop() {
        return this.mLowDiskSpaceSyncStop;
    }

    @Override // com.adobe.sync.SyncController.ISyncControllerInterface
    public void resolveConflict(AdobeDCXComposite adobeDCXComposite) {
        DCXMergeHandler dCXMergeHandler = new DCXMergeHandler(adobeDCXComposite);
        if ("preferences".equals(adobeDCXComposite.getCompositeId())) {
            dCXMergeHandler.mergePreferences();
        } else {
            dCXMergeHandler.doMerge();
        }
    }

    public AdobeDCXComposite loadComposite(String str, String str2, String str3) {
        try {
            return getSyncController(str).loadComposite(str, str2, str3);
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void updatePosterInModel(AdobeDCXComposite adobeDCXComposite, String str) {
        SyncController.IDCXModelInterface modelInModelListFromPath;
        AdobeDCXCompositeMutableBranch current;
        String path = adobeDCXComposite.getPath();
        adobeDCXComposite.setAutoRemoveUnusedLocalFiles(false);
        if (this.mBasicDCXModelList != null && (modelInModelListFromPath = getModelInModelListFromPath(path)) != null && (current = adobeDCXComposite.getCurrent()) != null) {
            try {
                AdobeDCXComponent componentWithAbsolutePath = current.getComponentWithAbsolutePath("/poster");
                if (componentWithAbsolutePath != null) {
                    current.updateComponent(componentWithAbsolutePath, str, true);
                } else {
                    current.addComponent("Poster", (String) null, "image/jpeg", AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition, DCXProjectKeys.kDCXKey_PathComponent_poster, (AdobeDCXManifestNode) null, str, true);
                }
                modelInModelListFromPath.setRenditionPath(str);
                pushProjectToServer(adobeDCXComposite);
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void removePosterInModel(AdobeDCXComposite adobeDCXComposite) {
        SyncController.IDCXModelInterface modelInModelListFromPath;
        AdobeDCXCompositeMutableBranch current;
        AdobeDCXComponent componentWithAbsolutePath;
        String path = adobeDCXComposite.getPath();
        if (this.mBasicDCXModelList != null && (modelInModelListFromPath = getModelInModelListFromPath(path)) != null && (current = adobeDCXComposite.getCurrent()) != null && (componentWithAbsolutePath = current.getComponentWithAbsolutePath("/poster")) != null) {
            current.removeComponent(componentWithAbsolutePath);
            modelInModelListFromPath.setRenditionPath(null);
            pushProjectToServer(adobeDCXComposite);
        }
    }

    public HashMap<String, AdobeNetworkHttpTaskHandle> getCompositePulls() {
        HashMap<String, AdobeNetworkHttpTaskHandle> map = new HashMap<>();
        map.putAll(this.mSyncController.getCompositePulls());
        map.putAll(this.preferenceSyncController.getCompositePulls());
        return map;
    }

    public HashMap<String, AdobeNetworkHttpTaskHandle> getCompositePushes() {
        HashMap<String, AdobeNetworkHttpTaskHandle> map = new HashMap<>();
        map.putAll(this.mSyncController.getCompositePushes());
        map.putAll(this.preferenceSyncController.getCompositePushes());
        return map;
    }

    public boolean pushesOrPullsContainsCompositeId(String str) {
        return this.mSyncController.pushesOrPullsContainsCompositeId(str) || this.preferenceSyncController.pushesOrPullsContainsCompositeId(str);
    }

    public boolean pushesOrPullsExist() {
        return this.mSyncController.pushesOrPullsExist() || this.preferenceSyncController.pushesOrPullsExist();
    }

    public boolean pushesOrPullsExist(boolean z) {
        return z ? this.mSyncController.pushesOrPullsExist() : pushesOrPullsExist();
    }

    public String getUnmanagedDataPathForAssetUrl(String str, String str2) {
        return this.mSyncController.getUnmanagedDataPathForAssetUrl(str, str2);
    }

    public String getUCIDForAssetUrl(String str, String str2) {
        return this.mSyncController.getUCIDForAssetUrl(str, str2);
    }

    public void changeCloud() {
        this.mSyncController.stopMonitor();
        this.preferenceSyncController.stopMonitor();
        ComponentManagerHelper componentManagerHelper = ComponentManagerHelper.getInstance();
        componentManagerHelper.initialize();
        componentManagerHelper.resetSyncOnChangeCloud();
        initalize(this.currentContext, this.currentUserId);
        this.mSyncController = null;
        this.preferenceSyncController = null;
    }

    public void forceSync() {
        if (this.mSyncController != null) {
            this.mSyncController.forceSync();
        }
        if (this.preferenceSyncController != null) {
            this.preferenceSyncController.forceSync();
        }
    }
}
