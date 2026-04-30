package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXPSDResourceRequestCompletionHandler {
    void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem);

    void onError(AdobeAssetException adobeAssetException);
}
