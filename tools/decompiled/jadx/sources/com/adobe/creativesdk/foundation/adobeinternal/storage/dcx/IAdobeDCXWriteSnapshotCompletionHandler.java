package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXWriteSnapshotCompletionHandler {
    void onFailure(AdobeCSDKException adobeCSDKException);

    void onSuccess();
}
