package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXResourceRequestCompletionHandler {
    void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem, AdobeCSDKException adobeCSDKException);
}
