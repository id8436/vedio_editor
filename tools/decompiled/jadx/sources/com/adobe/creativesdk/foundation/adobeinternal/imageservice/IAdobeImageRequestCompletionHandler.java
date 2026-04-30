package com.adobe.creativesdk.foundation.adobeinternal.imageservice;

import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeImageRequestCompletionHandler extends IAdobeProgressCallback {
    void onComplete(AdobeImageOperation adobeImageOperation);

    void onError(AdobeNetworkException adobeNetworkException);
}
