package com.adobe.creativesdk.foundation.internal.net;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeNetworkHttpServiceDelegate {
    boolean HTTPServiceAuthenticationDidFail(AdobeNetworkHttpService adobeNetworkHttpService);

    void HTTPServiceDidDisconnect(AdobeNetworkHttpService adobeNetworkHttpService);

    void HTTPServiceIsActive(AdobeNetworkHttpService adobeNetworkHttpService);
}
