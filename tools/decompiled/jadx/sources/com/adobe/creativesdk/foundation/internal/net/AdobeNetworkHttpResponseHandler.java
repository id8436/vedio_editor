package com.adobe.creativesdk.foundation.internal.net;

/* JADX INFO: loaded from: classes.dex */
abstract class AdobeNetworkHttpResponseHandler {
    Runnable _requestRunner = null;

    abstract void handleResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse);

    AdobeNetworkHttpResponseHandler() {
    }
}
