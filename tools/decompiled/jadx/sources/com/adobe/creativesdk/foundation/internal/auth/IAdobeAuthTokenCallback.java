package com.adobe.creativesdk.foundation.internal.auth;

import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAuthTokenCallback extends IAdobeNetworkCompletionHandler {
    void onInvalidClientId();

    void onInvalidClientSecret();

    void onInvalidDeviceId();
}
