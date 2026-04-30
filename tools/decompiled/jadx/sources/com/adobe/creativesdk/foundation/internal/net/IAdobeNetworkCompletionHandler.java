package com.adobe.creativesdk.foundation.internal.net;

import com.adobe.creativesdk.foundation.network.AdobeNetworkException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeNetworkCompletionHandler {
    void onError(AdobeNetworkException adobeNetworkException);

    void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse);
}
