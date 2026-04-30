package com.adobe.creativesdk.foundation.internal.storage.model.services;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeStorageDataRequestCompletionHandler extends IAdobeGenericErrorCallback<AdobeAssetException>, IAdobeProgressCallback {
    void onComplete(byte[] bArr);
}
