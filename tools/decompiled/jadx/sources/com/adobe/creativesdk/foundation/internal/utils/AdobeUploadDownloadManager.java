package com.adobe.creativesdk.foundation.internal.utils;

import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadDownloadManager {
    private static AdobeUploadDownloadManager _downloadManager;
    private HashMap<Integer, AdobeAssetFile> assetCancellationMap = new HashMap<>();
    private HashMap<Integer, AdobePhotoAsset> photoAssetCancellationMap = new HashMap<>();

    private AdobeUploadDownloadManager() {
    }

    public static AdobeUploadDownloadManager getSharedInstance() {
        if (_downloadManager == null) {
            _downloadManager = new AdobeUploadDownloadManager();
        }
        return _downloadManager;
    }

    public void addDownloadRequest(int i, AdobeAssetFile adobeAssetFile) {
        this.assetCancellationMap.put(Integer.valueOf(i), adobeAssetFile);
    }

    public void addDownloadRequest(int i, AdobePhotoAsset adobePhotoAsset) {
        this.photoAssetCancellationMap.put(Integer.valueOf(i), adobePhotoAsset);
    }

    public void removeDownloadRequest(int i) {
        this.assetCancellationMap.remove(Integer.valueOf(i));
        this.photoAssetCancellationMap.remove(Integer.valueOf(i));
    }

    public void cancelDownloadRequest(int i) {
        AdobeAssetFile adobeAssetFile = this.assetCancellationMap.get(Integer.valueOf(i));
        if (adobeAssetFile != null) {
            adobeAssetFile.cancelDataRequest();
        } else {
            AdobePhotoAsset adobePhotoAsset = this.photoAssetCancellationMap.get(Integer.valueOf(i));
            if (adobePhotoAsset != null) {
                adobePhotoAsset.cancelDownloadRequest();
            }
        }
        removeDownloadRequest(i);
    }

    public void addUploadRequest(int i, AdobeAssetFile adobeAssetFile) {
        this.assetCancellationMap.put(Integer.valueOf(i), adobeAssetFile);
    }

    public void cancelUploadRequest(int i) {
        AdobeAssetFile adobeAssetFile = this.assetCancellationMap.get(Integer.valueOf(i));
        if (adobeAssetFile != null) {
            adobeAssetFile.cancelUpdateRequest();
        }
    }
}
