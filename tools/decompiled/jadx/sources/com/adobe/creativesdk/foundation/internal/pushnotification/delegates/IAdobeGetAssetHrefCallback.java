package com.adobe.creativesdk.foundation.internal.pushnotification.delegates;

import com.adobe.creativesdk.foundation.network.AdobeNetworkException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeGetAssetHrefCallback {
    void onError(AdobeNetworkException adobeNetworkException);

    void onSuccess(String str);
}
