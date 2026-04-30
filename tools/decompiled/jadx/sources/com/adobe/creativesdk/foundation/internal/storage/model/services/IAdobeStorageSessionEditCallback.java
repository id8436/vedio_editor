package com.adobe.creativesdk.foundation.internal.storage.model.services;

import com.adobe.creativesdk.foundation.storage.AdobeAssetException;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeStorageSessionEditCallback {
    void onComplete();

    void onError(AdobeAssetException adobeAssetException);
}
