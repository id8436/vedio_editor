package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFolderInternal;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadSession<EndPointType extends UploadDestination<EndPointType>> {
    private static final String T = AdobeUploadSession.class.getSimpleName();
    private static int _sUploadAssetUniqueIdCount = 1234561;
    private ArrayList<AdobeUploadAssetData> _assetsList;
    private EndPointType _destinationFolder;
    private ArrayList<AdobeUploadFileInfo> _originalLocalAssetsList;
    private UploadSummary _uploadSummary;
    private List<Uploader<EndPointType>> _uploaders;
    private int _nextStartIndex = 0;
    private boolean _isCancelled = false;
    private Map<String, AdobeUploadSession<EndPointType>.ObservableWrapper> _allAssetsUploadObservers = new HashMap();
    private ArrayList<AdobeUploadSession<EndPointType>.LocalAssetUploadTask> _activeUploadTasks = new ArrayList<>();
    private int _totalAssetsDone = 0;

    class ObservableWrapper extends Observable {
        private ObservableWrapper() {
        }

        public void markChanged() {
            setChanged();
        }
    }

    public class UploadSummary {
        public ArrayList<AdobeUploadAssetData> _errorAssets = new ArrayList<>();
        public ArrayList<AdobeUploadAssetData> _successAssets = new ArrayList<>();
        public ArrayList<AdobeUploadAssetData> _cancelledAssets = new ArrayList<>();
        public ArrayList<AdobeUploadAssetData> _storageFullAssets = new ArrayList<>();

        public boolean hasErrors() {
            return this._errorAssets.size() > 0;
        }

        public boolean isStorageFull() {
            return this._storageFullAssets.size() > 0;
        }

        public int getErrorCount() {
            return this._errorAssets.size();
        }

        public int getSuccessCount() {
            return this._successAssets.size();
        }

        public ArrayList<AdobeUploadAssetData> getAllAssets() {
            ArrayList<AdobeUploadAssetData> arrayList = new ArrayList<>();
            arrayList.addAll(this._errorAssets);
            arrayList.addAll(this._storageFullAssets);
            arrayList.addAll(this._successAssets);
            arrayList.addAll(this._cancelledAssets);
            return arrayList;
        }
    }

    public AdobeUploadSession(EndPointType endpointtype, ArrayList<AdobeUploadFileInfo> arrayList, List<Uploader<EndPointType>> list) {
        this._originalLocalAssetsList = arrayList;
        this._destinationFolder = endpointtype;
        this._uploaders = list;
        initializeAssetsDataList();
    }

    private String getUniqueId() {
        int i = _sUploadAssetUniqueIdCount + 1;
        _sUploadAssetUniqueIdCount = i;
        return Integer.toString(i);
    }

    public UploadSummary getUploadSummary() {
        return this._uploadSummary;
    }

    private AdobeUploadAssetData getUploadAssetDataForLocalAsset(AdobeUploadFileInfo adobeUploadFileInfo) {
        AdobeUploadAssetData adobeUploadAssetData = new AdobeUploadAssetData();
        String string = adobeUploadFileInfo.getFileURL().toString();
        if (adobeUploadFileInfo.getType() == AdobeFileUploadType.ADOBE_UPLOAD_DATA_TYPE_PATH) {
            adobeUploadAssetData.title = FilenameUtils.getName(string);
        } else {
            adobeUploadAssetData.title = adobeUploadFileInfo.getSavedDataName();
        }
        adobeUploadAssetData.modificationDate = new Date(System.currentTimeMillis());
        adobeUploadAssetData.creationDate = adobeUploadAssetData.modificationDate;
        adobeUploadAssetData.guid = getUniqueId();
        adobeUploadAssetData._localAssetURL = adobeUploadFileInfo.getFileURL();
        String mimeType = adobeUploadFileInfo.getMimeType();
        if (mimeType == null || mimeType.length() == 0) {
            mimeType = AdobeStorageUtils.getMimeType(adobeUploadAssetData._localAssetURL.toString());
        }
        adobeUploadAssetData.setMimeType(mimeType);
        adobeUploadAssetData.setType(adobeUploadFileInfo.getType());
        adobeUploadAssetData.setDataStream(adobeUploadFileInfo.getDataStream());
        if (adobeUploadFileInfo.getHeight() != 0 && adobeUploadFileInfo.getWidth() != 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("width", adobeUploadFileInfo.getWidth());
                jSONObject.put("height", adobeUploadFileInfo.getHeight());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            adobeUploadAssetData.optionalMetadata = jSONObject;
        }
        if (adobeUploadFileInfo.getAssetID() != null) {
            adobeUploadAssetData.setRendition(AdobeUploadFileRenditionCacher.getItem(adobeUploadFileInfo.getAssetID()));
        }
        return adobeUploadAssetData;
    }

    private void initializeAssetsDataList() {
        this._assetsList = new ArrayList<>();
        Iterator<AdobeUploadFileInfo> it = this._originalLocalAssetsList.iterator();
        while (it.hasNext()) {
            this._assetsList.add(getUploadAssetDataForLocalAsset(it.next()));
        }
    }

    public EndPointType getDestinationFolder() {
        return this._destinationFolder;
    }

    public ArrayList<AdobeUploadAssetData> getAssetsList() {
        return this._assetsList;
    }

    private void uploadNextAsset() {
        if (this._nextStartIndex < this._assetsList.size() && this._activeUploadTasks.size() <= 0) {
            AdobeUploadSession<EndPointType>.LocalAssetUploadTask localAssetUploadTask = new LocalAssetUploadTask(this._assetsList.get(this._nextStartIndex), this._uploaders.get(this._nextStartIndex));
            this._activeUploadTasks.add(localAssetUploadTask);
            this._nextStartIndex++;
            localAssetUploadTask.startUpload();
        }
    }

    private void uploadAllAssets() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this._assetsList.size()) {
                AdobeUploadSession<EndPointType>.LocalAssetUploadTask localAssetUploadTask = new LocalAssetUploadTask(this._assetsList.get(i2), this._uploaders.get(i2));
                this._activeUploadTasks.add(localAssetUploadTask);
                localAssetUploadTask.startUpload();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void startUpload() {
        if (this._assetsList.size() != 0) {
            this._uploadSummary = new UploadSummary();
            uploadNextAsset();
        }
    }

    public void startUploadAll() {
        if (this._assetsList.size() != 0) {
            this._uploadSummary = new UploadSummary();
            uploadAllAssets();
        }
    }

    public void addObserverForAssetUpload(AdobeUploadAssetData adobeUploadAssetData, Observer observer) {
        AdobeUploadSession<EndPointType>.ObservableWrapper observableWrapper = this._allAssetsUploadObservers.get(adobeUploadAssetData.guid);
        if (observableWrapper == null) {
            observableWrapper = new ObservableWrapper();
            this._allAssetsUploadObservers.put(adobeUploadAssetData.guid, observableWrapper);
        }
        observableWrapper.addObserver(observer);
    }

    public void removeObserverForAssetUpload(AdobeUploadAssetData adobeUploadAssetData, Observer observer) {
        AdobeUploadSession<EndPointType>.ObservableWrapper observableWrapper = this._allAssetsUploadObservers.get(adobeUploadAssetData.guid);
        if (observableWrapper != null) {
            observableWrapper.deleteObserver(observer);
        }
    }

    protected void notifyObserverForStatusChange(AdobeUploadAssetData adobeUploadAssetData) {
        AdobeUploadSession<EndPointType>.ObservableWrapper observableWrapper = this._allAssetsUploadObservers.get(adobeUploadAssetData.guid);
        if (observableWrapper != null) {
            observableWrapper.markChanged();
            observableWrapper.notifyObservers(adobeUploadAssetData);
        }
    }

    public void cancelUpload() {
        cancelActiveUploadRequests();
        this._isCancelled = true;
        this._assetsList.clear();
    }

    private void cancelActiveUploadRequests() {
        Iterator<AdobeUploadSession<EndPointType>.LocalAssetUploadTask> it = this._activeUploadTasks.iterator();
        while (it.hasNext()) {
            it.next().cancelUpload();
        }
    }

    public static boolean isUploadAssetsEqual(AdobeUploadAssetData adobeUploadAssetData, AdobeUploadAssetData adobeUploadAssetData2) {
        return adobeUploadAssetData.guid.equalsIgnoreCase(adobeUploadAssetData2.guid);
    }

    private void removeUploadTaskOfAsset(AdobeUploadAssetData adobeUploadAssetData) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this._activeUploadTasks.size()) {
                if (!isUploadAssetsEqual(this._activeUploadTasks.get(i2).getAsset(), adobeUploadAssetData)) {
                    i = i2 + 1;
                } else {
                    this._activeUploadTasks.remove(i2);
                    return;
                }
            } else {
                return;
            }
        }
    }

    public void cancelIndividualUploadTaskOfAsset(AdobeUploadAssetData adobeUploadAssetData) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this._activeUploadTasks.size()) {
                if (!isUploadAssetsEqual(this._activeUploadTasks.get(i2).getAsset(), adobeUploadAssetData)) {
                    i = i2 + 1;
                } else {
                    if (this._activeUploadTasks.get(i2).getAsset().getStatus() != AdobeUploadAssetData.UploadStatus.Started) {
                        this._activeUploadTasks.get(i2).cancelUpload();
                        this._activeUploadTasks.remove(i2);
                        return;
                    }
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void addAssetToSummary(AdobeUploadAssetData adobeUploadAssetData) {
        if (adobeUploadAssetData.getStatus() == AdobeUploadAssetData.UploadStatus.Error) {
            this._uploadSummary._errorAssets.add(adobeUploadAssetData);
            return;
        }
        if (adobeUploadAssetData.getStatus() == AdobeUploadAssetData.UploadStatus.StorageFull) {
            this._uploadSummary._storageFullAssets.add(adobeUploadAssetData);
        } else if (adobeUploadAssetData.getStatus() == AdobeUploadAssetData.UploadStatus.Cancelled) {
            this._uploadSummary._cancelledAssets.add(adobeUploadAssetData);
        } else if (adobeUploadAssetData.getStatus() == AdobeUploadAssetData.UploadStatus.Completed) {
            this._uploadSummary._successAssets.add(adobeUploadAssetData);
        }
    }

    protected void uploadTask_assetUploadStatusChanged(AdobeUploadAssetData adobeUploadAssetData) {
        notifyObserverForStatusChange(adobeUploadAssetData);
        if (adobeUploadAssetData.isUploadDone()) {
            addAssetToSummary(adobeUploadAssetData);
            this._totalAssetsDone++;
            removeUploadTaskOfAsset(adobeUploadAssetData);
            removeAllObserversOfAsset(adobeUploadAssetData);
        }
        if (isComplete()) {
            if (this._destinationFolder.getClass() == AdobeAssetFolderInternal.class) {
                AdobeUploadManager.getInstance(AdobeAssetFolder.class).uploadSessionComplete(this._destinationFolder);
            } else {
                AdobeUploadManager.getInstance(this._destinationFolder.getClass()).uploadSessionComplete(this._destinationFolder);
            }
        }
    }

    private void removeAllObserversOfAsset(AdobeUploadAssetData adobeUploadAssetData) {
        AdobeUploadSession<EndPointType>.ObservableWrapper observableWrapper = this._allAssetsUploadObservers.get(adobeUploadAssetData.guid);
        if (observableWrapper != null) {
            observableWrapper.deleteObservers();
        }
    }

    class LocalAssetUploadTask {
        private final AdobeUploadAssetData _assetData;
        private final Uploader<EndPointType> _uploader;
        private boolean _isFinalNotificationDone = false;
        IAdobeGenericRequestCallback<Object, Throwable> uploadDelegate = new IAdobeGenericRequestCallback<Object, Throwable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession.LocalAssetUploadTask.1
            private double _previousProgress = 0.0d;

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
                LocalAssetUploadTask.this._assetData.setStatus(AdobeUploadAssetData.UploadStatus.Cancelled);
                LocalAssetUploadTask.this.notifyClients();
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                try {
                    this._previousProgress = d2;
                    LocalAssetUploadTask.this._assetData.setUploadProgress(d2);
                    LocalAssetUploadTask.this._assetData.setStatus(AdobeUploadAssetData.UploadStatus.InProgress);
                    LocalAssetUploadTask.this.notifyClients();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(Throwable th) {
                if (!(th instanceof AdobeAssetException) || ((AdobeAssetException) th).getErrorCode() != AdobeAssetErrorCode.AdobeAssetErrorExceededQuota) {
                    LocalAssetUploadTask.this._assetData.setStatus(AdobeUploadAssetData.UploadStatus.Error);
                } else {
                    LocalAssetUploadTask.this._assetData.setStatus(AdobeUploadAssetData.UploadStatus.StorageFull);
                }
                LocalAssetUploadTask.this.notifyClients();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Object obj) {
                LocalAssetUploadTask.this._assetData.setUploadProgress(100.0d);
                if (obj instanceof AdobeAssetFile) {
                    LocalAssetUploadTask.this._assetData._assetGUIDonSuccessFulUpload = ((AdobeAssetFile) obj).getGUID();
                } else if (obj instanceof AdobePhotoAsset) {
                    LocalAssetUploadTask.this._assetData._assetGUIDonSuccessFulUpload = ((AdobePhotoAsset) obj).getGUID();
                }
                LocalAssetUploadTask.this._assetData.setStatus(AdobeUploadAssetData.UploadStatus.Completed);
                LocalAssetUploadTask.this.notifyClients();
            }
        };

        public LocalAssetUploadTask(AdobeUploadAssetData adobeUploadAssetData, Uploader<EndPointType> uploader) {
            this._assetData = adobeUploadAssetData;
            this._uploader = uploader;
        }

        public AdobeUploadAssetData getAsset() {
            return this._assetData;
        }

        EndPointType getDestinationFolder() {
            return (EndPointType) AdobeUploadSession.this._destinationFolder;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyClients() {
            if (this._assetData.isUploadDone()) {
                if (!this._isFinalNotificationDone) {
                    this._isFinalNotificationDone = true;
                } else {
                    return;
                }
            }
            AdobeUploadSession.this.uploadTask_assetUploadStatusChanged(this._assetData);
        }

        public void startUpload() {
            this._uploader.startUpload(this._assetData, getDestinationFolder(), this.uploadDelegate);
        }

        public void cancelUpload() {
            this._uploader.cancelUpload();
        }
    }

    public boolean isCancelled() {
        return this._isCancelled;
    }

    private boolean isComplete() {
        return this._totalAssetsDone == this._originalLocalAssetsList.size();
    }
}
