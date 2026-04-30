package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetData;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePhotoUploader implements Uploader<AdobePhotoCollection> {
    AdobePhotoAsset photoAsset = null;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.Uploader
    public void startUpload(AdobeUploadAssetData adobeUploadAssetData, AdobePhotoCollection adobePhotoCollection, IAdobeGenericRequestCallback iAdobeGenericRequestCallback) {
        this.photoAsset = AdobePhotoAsset.create(adobeUploadAssetData.title, adobePhotoCollection, new File(adobeUploadAssetData._localAssetURL.getPath()).toURI(), "image/jpeg", (IAdobeGenericRequestCallback<AdobePhotoAsset, AdobeCSDKException>) iAdobeGenericRequestCallback);
        if (this.photoAsset == null) {
            iAdobeGenericRequestCallback.onError(null);
        } else {
            adobeUploadAssetData.setStatus(AdobeUploadAssetData.UploadStatus.Started);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.Uploader
    public void cancelUpload() {
        if (this.photoAsset != null) {
            this.photoAsset.cancelUploadRequest();
        }
    }
}
