package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobePSDCompositeBranch;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobePSDPullCompletionHandler {
    void onCompletion(AdobePSDCompositeBranch adobePSDCompositeBranch);

    void onError(AdobeCSDKException adobeCSDKException);
}
