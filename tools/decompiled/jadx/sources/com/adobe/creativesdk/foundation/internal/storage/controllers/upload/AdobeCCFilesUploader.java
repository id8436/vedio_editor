package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetData;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCCFilesUploader implements Uploader<AdobeAssetFolder> {
    public static String T = AdobeCCFilesUploader.class.getSimpleName();
    AdobeAssetFile assetFile;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.Uploader
    public void startUpload(AdobeUploadAssetData adobeUploadAssetData, AdobeAssetFolder adobeAssetFolder, IAdobeGenericRequestCallback iAdobeGenericRequestCallback) {
        String mimeType = adobeUploadAssetData.getMimeType();
        if (mimeType == null || mimeType.length() == 0) {
            mimeType = "image/jpeg";
        }
        if (adobeUploadAssetData.getType() == AdobeFileUploadType.ADOBE_UPLOAD_DATA_TYPE_PATH) {
            this.assetFile = AdobeAssetFileInternal.internalCreate(adobeUploadAssetData.title, adobeAssetFolder, adobeAssetFolder.getCloud(), adobeUploadAssetData._localAssetURL, mimeType, iAdobeGenericRequestCallback, AdobeUxUtilMainUIThreadHandler.getHandler());
        } else {
            this.assetFile = AdobeAssetFileInternal.internalCreateFromStream(adobeUploadAssetData.title, adobeAssetFolder, adobeAssetFolder.getCloud(), adobeUploadAssetData.getDataStream(), mimeType, iAdobeGenericRequestCallback, AdobeUxUtilMainUIThreadHandler.getHandler());
        }
        if (this.assetFile == null) {
            iAdobeGenericRequestCallback.onError(null);
        } else {
            adobeUploadAssetData.setStatus(AdobeUploadAssetData.UploadStatus.Started);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.Uploader
    public void cancelUpload() {
        if (this.assetFile != null) {
            this.assetFile.cancelCreationRequest();
        }
    }
}
