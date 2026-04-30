package com.adobe.creativesdk.foundation.internal.storage.model.services;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeStorageAsyncResponseHandlerCallback {
    void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse);

    void onError(AdobeNetworkHttpResponse adobeNetworkHttpResponse);

    void onError(AdobeNetworkException adobeNetworkException);
}
