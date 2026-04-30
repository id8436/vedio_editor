package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXMultiAssetCompletionHandler {
    void onCompletion(List<AdobeStorageResourceItem> list, AdobeCSDKException adobeCSDKException);
}
