package com.adobe.premiereclip.downloadmanager;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.adobe.creativesdk.foundation.storage.AdobeSelection;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionAsset;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionPhotoAsset;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.sync.ComponentManagerHelper;
import com.adobe.sync.DBException;
import com.adobe.sync.database.ComponentInfoModel;
import com.adobe.sync.database.ComponentWaitingModel;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class CCDownloadManager {
    private static final long MAX_FILE_SIZE = 1073741824;
    private static final int initial_cores = 3;
    private static final long keep_alive_time = 1;
    private static final int max_cores = 3;
    private static CCDownloadManager instance = new CCDownloadManager();
    private static final TimeUnit keep_alive_time_unit = TimeUnit.SECONDS;
    private HashMap<String, HashMap<String, AssetDownloadEntity>> mDownloadMap = new HashMap<>();
    private HashMap<String, ArrayList<AdobeSelection>> mDuplicateAssetMap = new HashMap<>();
    private CCDownloadCallback mCCDownloadCallback = null;
    private ProjectSyncUpdateCallback mProjectSyncUpdateCallback = null;
    private final BlockingQueue<Runnable> mDownloadQueue = new LinkedBlockingDeque();
    private ThreadPoolExecutor mDownloadExecutor = new ThreadPoolExecutor(3, 3, 1, TimeUnit.SECONDS, this.mDownloadQueue);
    private Handler mUIHandler = new Handler();
    private ComponentManagerHelper mComponentManagerHelper = ComponentManagerHelper.getInstance();

    /* JADX INFO: loaded from: classes.dex */
    public interface CCDownloadCallback {
        void didFinishDownloadAsset(String str, String str2, String str3, AdobeCSDKException adobeCSDKException);

        void didRejectAssetDownload();

        void didStartDownloadAsset();

        void didUpdateProgressOfAssetDownload(double d2, String str);
    }

    public interface ProjectSyncUpdateCallback {
        void ccAssetDownloadStarted(String str);

        void ccAssetDownloadStopped(String str);

        void updateSyncStatus(Set<String> set);
    }

    public static CCDownloadManager getInstance() {
        if (instance == null) {
            instance = new CCDownloadManager();
        }
        return instance;
    }

    private CCDownloadManager() {
        this.mComponentManagerHelper.initialize();
    }

    private synchronized boolean isDownloaded(String str, String str2) {
        boolean z = false;
        synchronized (this) {
            try {
                if (this.mComponentManagerHelper.getComponentInfoModel(str, str2) != null) {
                    z = true;
                }
            } catch (DBException e2) {
                e2.printStackTrace();
            }
        }
        return z;
    }

    public boolean areAllAssetsLargerThanMaxFileSize(ArrayList<? extends AdobeSelection> arrayList, Context context) {
        AssetDetails assetDetailsFromAdobeSelectionPhotoAsset;
        for (AdobeSelection adobeSelection : arrayList) {
            getDownloadPath(adobeSelection, context).getPath();
            if (adobeSelection instanceof AdobeSelectionAssetFile) {
                assetDetailsFromAdobeSelectionPhotoAsset = AssetDetails.getAssetDetailsFromAdobeSelectionAssetFile((AdobeSelectionAssetFile) adobeSelection);
            } else if (!(adobeSelection instanceof AdobeSelectionPhotoAsset)) {
                assetDetailsFromAdobeSelectionPhotoAsset = null;
            } else {
                assetDetailsFromAdobeSelectionPhotoAsset = AssetDetails.getAssetDetailsFromAdobeSelectionPhotoAsset((AdobeSelectionPhotoAsset) adobeSelection);
            }
            if (assetDetailsFromAdobeSelectionPhotoAsset != null && assetDetailsFromAdobeSelectionPhotoAsset.getFileSize() < 1073741824) {
                return false;
            }
        }
        return true;
    }

    public long getTotalDownloadSize(ArrayList<? extends AdobeSelection> arrayList, Context context) {
        AssetDetails assetDetailsFromAdobeSelectionPhotoAsset;
        long j = 0;
        for (AdobeSelection adobeSelection : arrayList) {
            String path = getDownloadPath(adobeSelection, context).getPath();
            if (adobeSelection instanceof AdobeSelectionAssetFile) {
                assetDetailsFromAdobeSelectionPhotoAsset = AssetDetails.getAssetDetailsFromAdobeSelectionAssetFile((AdobeSelectionAssetFile) adobeSelection);
            } else if (!(adobeSelection instanceof AdobeSelectionPhotoAsset)) {
                assetDetailsFromAdobeSelectionPhotoAsset = null;
            } else {
                assetDetailsFromAdobeSelectionPhotoAsset = AssetDetails.getAssetDetailsFromAdobeSelectionPhotoAsset((AdobeSelectionPhotoAsset) adobeSelection);
            }
            if (assetDetailsFromAdobeSelectionPhotoAsset != null && !isAssetDownloadOngoing(path) && !isDownloaded(assetDetailsFromAdobeSelectionPhotoAsset.getAssetUrl(), assetDetailsFromAdobeSelectionPhotoAsset.getLastModifiedDate())) {
                j += 0;
            }
            j = j;
        }
        return j;
    }

    public void setProjectSyncUpdateListener(ProjectSyncUpdateCallback projectSyncUpdateCallback) {
        this.mProjectSyncUpdateCallback = projectSyncUpdateCallback;
    }

    public boolean isDownloadPending(String str) {
        return this.mDownloadMap.containsKey(str);
    }

    public void cancelOngoingDownloads(String str) {
        if (this.mDownloadMap.containsKey(str)) {
            Iterator<Map.Entry<String, AssetDownloadEntity>> it = this.mDownloadMap.get(str).entrySet().iterator();
            while (it.hasNext()) {
                cancelCCDownload(it.next().getValue().asset);
            }
            this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CCDownloadManager.this.mCCDownloadCallback != null) {
                        CCDownloadManager.this.mCCDownloadCallback = null;
                    }
                }
            });
        }
    }

    public String getProjectDownloadProgress(String str) {
        if (this.mDownloadMap.containsKey(str)) {
            double d2 = 0.0d;
            int i = 0;
            Iterator<Map.Entry<String, AssetDownloadEntity>> it = this.mDownloadMap.get(str).entrySet().iterator();
            while (it.hasNext()) {
                d2 += it.next().getValue().progress;
                i++;
            }
            if (i == 0) {
                return "0%";
            }
            return String.valueOf((int) (d2 / ((double) i))) + "%";
        }
        return "0%";
    }

    private synchronized boolean sendAssetToProjectIfDownloaded(String str, String str2) {
        boolean z = false;
        synchronized (this) {
            try {
                final ComponentInfoModel componentInfoModel = this.mComponentManagerHelper.getComponentInfoModel(str, str2);
                if (componentInfoModel != null) {
                    this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (CCDownloadManager.this.mCCDownloadCallback != null) {
                                CCDownloadManager.this.mCCDownloadCallback.didFinishDownloadAsset(componentInfoModel.getLocalPath(), componentInfoModel.getAssetURL(), componentInfoModel.getCreatedDate(), null);
                            }
                        }
                    });
                    z = true;
                }
            } catch (DBException e2) {
                e2.printStackTrace();
            }
        }
        return z;
    }

    private synchronized void addDownloadEntryToComponentDB(AdobeSelection adobeSelection, String str, Context context) {
        AdobePhotoAsset selectedItem;
        String formattedDate;
        String path;
        ComponentWaitingModel componentWaitingModel = null;
        synchronized (this) {
            String path2 = getDownloadPath(adobeSelection, context).getPath();
            if (adobeSelection instanceof AdobeSelectionAssetFile) {
                AdobeAssetFile selectedItem2 = ((AdobeSelectionAssetFile) adobeSelection).getSelectedItem();
                path = selectedItem2.getHref().getPath();
                formattedDate = DCXUtils.getFormattedDate(selectedItem2.getModificationDate());
                selectedItem = null;
            } else if (adobeSelection instanceof AdobeSelectionPhotoAsset) {
                selectedItem = ((AdobeSelectionPhotoAsset) adobeSelection).getSelectedItem();
                path = selectedItem.getHref() + URIUtil.SLASH + selectedItem.getName();
                formattedDate = DCXUtils.getFormattedDate(selectedItem.getModificationDate());
            } else {
                selectedItem = null;
                formattedDate = null;
                path = null;
            }
            ComponentInfoModel componentInfoModel = new ComponentInfoModel();
            String string = UUID.randomUUID().toString();
            componentInfoModel.setUCID(string);
            componentInfoModel.setAssetURL(path);
            componentInfoModel.setCreatedDate(formattedDate);
            Log.d("CCDownloadManager", "Sync: sending local path as " + path2);
            Log.d("ComponentManager", "Sync: for db entry originalPath " + path + " date " + formattedDate);
            componentInfoModel.setLocalPath(path2);
            componentInfoModel.setAssetSyncStatus(ComponentInfoModel.ASSET_SYNC_STATUS.DONE.name());
            if (selectedItem == null) {
                componentWaitingModel = new ComponentWaitingModel();
                componentWaitingModel.setUCID(string);
                componentWaitingModel.setCompositeId(str);
                componentWaitingModel.setComponentId(UUID.randomUUID().toString());
                componentWaitingModel.setAssetSyncStatus(ComponentWaitingModel.SYNC_STATUS.DONE.name());
                componentWaitingModel.setServerHref(path);
                componentWaitingModel.setAdobeId(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
                componentWaitingModel.setCloudId(AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID());
            }
            try {
                this.mComponentManagerHelper.initComponentDownloadFinish(componentInfoModel, componentWaitingModel, null);
            } catch (DBException e2) {
                e2.printStackTrace();
            }
        }
    }

    private synchronized boolean isAssetDownloadOngoing(String str) {
        boolean z;
        if (this.mDownloadMap.size() > 0) {
            Iterator<Map.Entry<String, HashMap<String, AssetDownloadEntity>>> it = this.mDownloadMap.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().containsKey(str)) {
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        return z;
    }

    public synchronized long getTotalDownloadSizeOfOngoingDownloads() {
        long fileSize;
        AssetDetails assetDetailsFromAdobeSelectionPhotoAsset;
        fileSize = 0;
        Iterator<Map.Entry<String, HashMap<String, AssetDownloadEntity>>> it = this.mDownloadMap.entrySet().iterator();
        while (it.hasNext()) {
            Iterator<AssetDownloadEntity> it2 = it.next().getValue().values().iterator();
            while (it2.hasNext()) {
                AdobeSelection adobeSelection = it2.next().asset;
                if (adobeSelection instanceof AdobeSelectionAssetFile) {
                    assetDetailsFromAdobeSelectionPhotoAsset = AssetDetails.getAssetDetailsFromAdobeSelectionAssetFile((AdobeSelectionAssetFile) adobeSelection);
                } else if (!(adobeSelection instanceof AdobeSelectionPhotoAsset)) {
                    assetDetailsFromAdobeSelectionPhotoAsset = null;
                } else {
                    assetDetailsFromAdobeSelectionPhotoAsset = AssetDetails.getAssetDetailsFromAdobeSelectionPhotoAsset((AdobeSelectionPhotoAsset) adobeSelection);
                }
                fileSize = assetDetailsFromAdobeSelectionPhotoAsset != null ? assetDetailsFromAdobeSelectionPhotoAsset.getFileSize() + fileSize : fileSize;
            }
        }
        return fileSize;
    }

    public Set<String> getDownloadProjectKeys() {
        return this.mDownloadMap.keySet();
    }

    private synchronized void addDuplicateAsset(AdobeSelection adobeSelection, Context context) {
        String path = getDownloadPath(adobeSelection, context).getPath();
        if (this.mDuplicateAssetMap.containsKey(path)) {
            this.mDuplicateAssetMap.get(path).add(adobeSelection);
        } else {
            Log.d("CCDownloadManager", "duplicate asset added");
            ArrayList<AdobeSelection> arrayList = new ArrayList<>();
            arrayList.add(adobeSelection);
            this.mDuplicateAssetMap.put(path, arrayList);
        }
    }

    private synchronized void updateAfterDownloadSuccess(AdobeSelection adobeSelection, Context context) {
        final String path = getDownloadPath(adobeSelection, context).getPath();
        final String originalAssetPath = getOriginalAssetPath(adobeSelection);
        final String lastModifiedDateOfAsset = getLastModifiedDateOfAsset(adobeSelection);
        if (this.mDuplicateAssetMap.containsKey(path)) {
            for (AdobeSelection adobeSelection2 : this.mDuplicateAssetMap.get(path)) {
                Log.d("CCDownloadManager", "got duplicate!");
                this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CCDownloadManager.this.mCCDownloadCallback != null) {
                            CCDownloadManager.this.mCCDownloadCallback.didFinishDownloadAsset(path, originalAssetPath, lastModifiedDateOfAsset, null);
                        }
                    }
                });
            }
            this.mDuplicateAssetMap.remove(path);
        }
        Log.d("CCDownloadManager", "duplicate not found!");
    }

    private synchronized void updateAfterDownloadError(AdobeSelection adobeSelection, String str, Context context) {
        String path = getDownloadPath(adobeSelection, context).getPath();
        if (this.mDuplicateAssetMap.containsKey(path)) {
            ArrayList<AdobeSelection> arrayList = this.mDuplicateAssetMap.get(path);
            arrayList.remove(0);
            if (arrayList.size() == 0) {
                this.mDuplicateAssetMap.remove(path);
            }
            downloadCCAssetInternal(str, context, adobeSelection, this.mCCDownloadCallback, false);
        }
    }

    private synchronized void updateAfterDownloadCancel(AdobeSelection adobeSelection, Context context) {
        String path = getDownloadPath(adobeSelection, context).getPath();
        if (this.mDuplicateAssetMap.containsKey(path)) {
            this.mDuplicateAssetMap.remove(path);
        }
    }

    private synchronized void addAssetDownload(String str, String str2, AdobeSelection adobeSelection) {
        AssetDownloadEntity assetDownloadEntity = new AssetDownloadEntity(adobeSelection, 0.0d);
        if (this.mDownloadMap.containsKey(str)) {
            this.mDownloadMap.get(str).put(str2, assetDownloadEntity);
        } else {
            HashMap<String, AssetDownloadEntity> map = new HashMap<>();
            map.put(str2, assetDownloadEntity);
            this.mDownloadMap.put(str, map);
        }
    }

    private synchronized void removeAssetDownload(String str, String str2) {
        if (this.mDownloadMap.containsKey(str)) {
            HashMap<String, AssetDownloadEntity> map = this.mDownloadMap.get(str);
            if (map.containsKey(str2)) {
                map.remove(str2);
            }
            if (map.isEmpty()) {
                this.mDownloadMap.remove(str);
            }
        }
    }

    private synchronized void updateProgress(String str, String str2, double d2) {
        if (this.mDownloadMap.containsKey(str)) {
            HashMap<String, AssetDownloadEntity> map = this.mDownloadMap.get(str);
            if (map.containsKey(str2)) {
                AssetDownloadEntity assetDownloadEntity = map.get(str2);
                assetDownloadEntity.progress = d2;
                map.put(str2, assetDownloadEntity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void assetDownloadCancel(AdobeSelection adobeSelection, String str, String str2, Context context) {
        updateAfterDownloadCancel(adobeSelection, context);
        removeAssetDownload(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void assetDownloadProgress(String str, final String str2, final double d2) {
        this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.4
            @Override // java.lang.Runnable
            public void run() {
                if (CCDownloadManager.this.mCCDownloadCallback != null) {
                    CCDownloadManager.this.mCCDownloadCallback.didUpdateProgressOfAssetDownload(d2, str2);
                }
            }
        });
        updateProgress(str, str2, d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void assetDownloadError(Context context, String str, AdobeSelection adobeSelection, final AdobeCSDKException adobeCSDKException) {
        removeAssetDownload(str, getDownloadPath(adobeSelection, context).getPath());
        updateAfterDownloadError(adobeSelection, str, context);
        this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.5
            @Override // java.lang.Runnable
            public void run() {
                if (CCDownloadManager.this.mCCDownloadCallback != null) {
                    CCDownloadManager.this.mCCDownloadCallback.didFinishDownloadAsset(null, null, null, adobeCSDKException);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void photoDownloadSuccess(Context context, String str, AdobeSelection adobeSelection, byte[] bArr) {
        String path = getDownloadPath(adobeSelection, context).getPath();
        updateProgress(str, path, 100.0d);
        final File file = new File(path);
        final String originalAssetPath = getOriginalAssetPath(adobeSelection);
        final String lastModifiedDateOfAsset = getLastModifiedDateOfAsset(adobeSelection);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
                fileOutputStream.close();
                Log.d("CCDownloadManager", "download done!!!!!");
                addDownloadEntryToComponentDB(adobeSelection, str, context);
                removeAssetDownload(str, path);
                this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CCDownloadManager.this.mCCDownloadCallback != null) {
                            Log.d("ComponentManager", "Sync: for assetref originalPath " + originalAssetPath + " date " + lastModifiedDateOfAsset);
                            CCDownloadManager.this.mCCDownloadCallback.didFinishDownloadAsset(file.getAbsolutePath(), originalAssetPath, lastModifiedDateOfAsset, null);
                        }
                    }
                });
                updateAfterDownloadSuccess(adobeSelection, context);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void assetDownloadSuccess(Context context, String str, AdobeSelection adobeSelection) {
        final String path = getDownloadPath(adobeSelection, context).getPath();
        final String originalAssetPath = getOriginalAssetPath(adobeSelection);
        final String lastModifiedDateOfAsset = getLastModifiedDateOfAsset(adobeSelection);
        updateProgress(str, path, 100.0d);
        addDownloadEntryToComponentDB(adobeSelection, str, context);
        removeAssetDownload(str, path);
        this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.7
            @Override // java.lang.Runnable
            public void run() {
                if (CCDownloadManager.this.mCCDownloadCallback != null) {
                    CCDownloadManager.this.mCCDownloadCallback.didFinishDownloadAsset(path, originalAssetPath, lastModifiedDateOfAsset, null);
                }
            }
        });
        updateAfterDownloadSuccess(adobeSelection, context);
    }

    private String getOriginalAssetPath(AdobeSelection adobeSelection) {
        if (adobeSelection instanceof AdobeSelectionAssetFile) {
            return ((AdobeSelectionAssetFile) adobeSelection).getSelectedItem().getHref().getPath();
        }
        if (!(adobeSelection instanceof AdobeSelectionPhotoAsset)) {
            return null;
        }
        AdobePhotoAsset selectedItem = ((AdobeSelectionPhotoAsset) adobeSelection).getSelectedItem();
        return selectedItem.getHref() + URIUtil.SLASH + selectedItem.getName();
    }

    private synchronized String getLastModifiedDateOfAsset(AdobeSelection adobeSelection) {
        String formattedDate;
        formattedDate = null;
        if (adobeSelection instanceof AdobeSelectionAssetFile) {
            formattedDate = DCXUtils.getFormattedDate(((AdobeSelectionAssetFile) adobeSelection).getSelectedItem().getModificationDate());
        } else if (adobeSelection instanceof AdobeSelectionPhotoAsset) {
            formattedDate = DCXUtils.getFormattedDate(((AdobeSelectionPhotoAsset) adobeSelection).getSelectedItem().getModificationDate());
        }
        return formattedDate;
    }

    private URI getDownloadPath(AdobeSelection adobeSelection, Context context) {
        String str = null;
        if (adobeSelection instanceof AdobeSelectionAssetFile) {
            AdobeAssetFile selectedItem = ((AdobeSelectionAssetFile) adobeSelection).getSelectedItem();
            str = String.valueOf(selectedItem.getCurrentVersion()) + selectedItem.getName();
        } else if (adobeSelection instanceof AdobeSelectionPhotoAsset) {
            str = ((AdobeSelectionPhotoAsset) adobeSelection).getSelectedItem().getGUID() + ".jpeg";
        }
        return new File(context.getFilesDir(), str).toURI();
    }

    public void downloadCCAsset(String str, Context context, AdobeSelection adobeSelection, CCDownloadCallback cCDownloadCallback) {
        downloadCCAssetInternal(str, context, adobeSelection, cCDownloadCallback, true);
    }

    private void cancelCCDownload(AdobeSelection adobeSelection) {
        if (adobeSelection instanceof AdobeSelectionAssetFile) {
            ((AdobeSelectionAssetFile) adobeSelection).getSelectedItem().cancelDataRequest();
        } else if (adobeSelection instanceof AdobeSelectionPhotoAsset) {
            ((AdobeSelectionPhotoAsset) adobeSelection).getSelectedItem().cancelDownloadRequest();
        }
    }

    private boolean rejectIfFileSizeExceedsLimit(long j) {
        if (j < 1073741824) {
            return false;
        }
        this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.8
            @Override // java.lang.Runnable
            public void run() {
                if (CCDownloadManager.this.mCCDownloadCallback != null) {
                    CCDownloadManager.this.mCCDownloadCallback.didRejectAssetDownload();
                }
            }
        });
        return true;
    }

    private void downloadCCAssetInternal(final String str, final Context context, final AdobeSelection adobeSelection, CCDownloadCallback cCDownloadCallback, boolean z) {
        String path;
        AdobePhotoAsset selectedItem;
        final AdobeAssetFile adobeAssetFile;
        String str2 = null;
        this.mCCDownloadCallback = cCDownloadCallback;
        final URI downloadPath = getDownloadPath(adobeSelection, context);
        final String path2 = downloadPath.getPath();
        long size = 0;
        if (adobeSelection instanceof AdobeSelectionAssetFile) {
            Metrics.sharedInstance().didAttemptImportOfCreativeCloudFileAssetInMediaPicker();
            AdobeAssetFile selectedItem2 = ((AdobeSelectionAssetFile) adobeSelection).getSelectedItem();
            path = selectedItem2.getHref().getPath();
            String formattedDate = DCXUtils.getFormattedDate(selectedItem2.getModificationDate());
            size = selectedItem2.getFileSize();
            adobeAssetFile = selectedItem2;
            selectedItem = null;
            str2 = formattedDate;
        } else if (adobeSelection instanceof AdobeSelectionPhotoAsset) {
            Metrics.sharedInstance().didAttemptImportOfCreativeCloudPhotoAssetInMediaPicker();
            selectedItem = ((AdobeSelectionPhotoAsset) adobeSelection).getSelectedItem();
            path = selectedItem.getHref() + URIUtil.SLASH + selectedItem.getName();
            String formattedDate2 = DCXUtils.getFormattedDate(selectedItem.getModificationDate());
            size = selectedItem.getSize();
            adobeAssetFile = null;
            str2 = formattedDate2;
        } else {
            path = null;
            selectedItem = null;
            adobeAssetFile = null;
        }
        if (!rejectIfFileSizeExceedsLimit(size)) {
            if (this.mCCDownloadCallback != null) {
                this.mCCDownloadCallback.didStartDownloadAsset();
            }
            if (z) {
                if (!sendAssetToProjectIfDownloaded(path, str2)) {
                    if (isAssetDownloadOngoing(path2)) {
                        addDuplicateAsset(adobeSelection, context);
                        return;
                    }
                } else {
                    return;
                }
            }
            addAssetDownload(str, path2, adobeSelection);
            if (adobeAssetFile != null) {
                if (adobeSelection instanceof AdobeSelectionAsset) {
                    this.mDownloadExecutor.execute(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.9
                        @Override // java.lang.Runnable
                        public void run() {
                            adobeAssetFile.downloadAssetFile(downloadPath, new IAdobeGenericRequestCallback<Boolean, AdobeAssetException>() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.9.1
                                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                                public void onCancellation() {
                                    Metrics.sharedInstance().didCancelDownloadOfCreativeCloudFileAssetInMediaPicker();
                                    CCDownloadManager.this.assetDownloadCancel(adobeSelection, str, path2, context);
                                    Log.d("CCDownloadManager", "cancelled download!");
                                }

                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                public void onCompletion(Boolean bool) {
                                    if (bool == null || !bool.booleanValue()) {
                                        CCDownloadManager.this.assetDownloadCancel(adobeSelection, str, path2, context);
                                        Log.e("CCDownloadManager", "CC download cancel...");
                                    } else {
                                        Metrics.sharedInstance().didDownloadCreativeCloudFileAssetInMediaPicker();
                                        Log.d("CCDownloadManager", "CC image downloaded...");
                                        CCDownloadManager.this.assetDownloadSuccess(context, str, adobeSelection);
                                    }
                                }

                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                public void onError(AdobeAssetException adobeAssetException) {
                                    Metrics.sharedInstance().didFailDownloadOfCreativeCloudFileAssetInMediaPicker();
                                    CCDownloadManager.this.assetDownloadError(context, str, adobeSelection, adobeAssetException);
                                    Log.e("CCDownloadManager", "CC image download error...", adobeAssetException);
                                }

                                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                                public void onProgress(double d2) {
                                    CCDownloadManager.this.assetDownloadProgress(str, path2, d2);
                                }
                            });
                        }
                    });
                }
            } else if (selectedItem != null) {
                final AdobePhotoAsset adobePhotoAsset = selectedItem;
                this.mDownloadExecutor.execute(new Runnable() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.10
                    @Override // java.lang.Runnable
                    public void run() {
                        adobePhotoAsset.downloadRendition(adobePhotoAsset.getRenditions().get(AdobePhotoAsset.AdobePhotoAssetRenditionImage2048), new IAdobeGenericRequestCallback<byte[], AdobePhotoException>() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadManager.10.1
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(byte[] bArr) {
                                if (bArr == null) {
                                    CCDownloadManager.this.assetDownloadCancel(adobeSelection, str, path2, context);
                                    Log.e("CCDownloadManager", "LR photo download cancel...");
                                } else {
                                    Metrics.sharedInstance().didDownloadCreativeCloudPhotoAssetInMediaPicker();
                                    Log.d("CCDownloadManager", "LR photo downloaded...");
                                    CCDownloadManager.this.photoDownloadSuccess(context, str, adobeSelection, bArr);
                                }
                            }

                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobePhotoException adobePhotoException) {
                                CCDownloadManager.this.assetDownloadError(context, str, adobeSelection, adobePhotoException);
                                Metrics.sharedInstance().didFailDownloadOfCreativeCloudPhotoAssetInMediaPicker();
                                Log.e("CCDownloadManager", "LR photo download error...", adobePhotoException);
                            }

                            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                            public void onProgress(double d2) {
                                CCDownloadManager.this.assetDownloadProgress(str, path2, d2);
                                Log.d("CCDownloadManager", "LR photo download ongoing: " + d2);
                            }

                            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                            public void onCancellation() {
                                CCDownloadManager.this.assetDownloadCancel(adobeSelection, str, path2, context);
                                Metrics.sharedInstance().didCancelDownloadOfCreativeCloudPhotoAssetInMediaPicker();
                                Log.d("CCDownloadManager", "LR photo download cancelled!");
                            }
                        });
                    }
                });
            }
        }
    }

    public boolean assetsDownloadingForProjectKey(String str) {
        return getDownloadProjectKeys().contains(str);
    }

    public boolean assetsDownloading() {
        return getDownloadProjectKeys().size() > 0;
    }

    class AssetDownloadEntity {
        public AdobeSelection asset;
        public double progress;

        public AssetDownloadEntity(AdobeSelection adobeSelection, double d2) {
            this.asset = adobeSelection;
            this.progress = d2;
        }
    }
}
