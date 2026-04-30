package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;

/* JADX INFO: loaded from: classes2.dex */
public interface Uploader<EndPointType extends UploadDestination<EndPointType>> {
    void cancelUpload();

    void startUpload(AdobeUploadAssetData adobeUploadAssetData, EndPointType endpointtype, IAdobeGenericRequestCallback<?, Throwable> iAdobeGenericRequestCallback);
}
