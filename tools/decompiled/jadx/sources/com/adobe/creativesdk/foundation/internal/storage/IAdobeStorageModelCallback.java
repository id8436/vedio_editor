package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.storage.AdobeAssetException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeStorageModelCallback {
    void onCompletion(Number number, Number number2, Number number3);

    void onError(AdobeAssetException adobeAssetException);
}
