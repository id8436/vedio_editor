package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobePSDPushCompletionHandler {
    void onCompletion(boolean z);

    void onError(AdobeCSDKException adobeCSDKException);
}
