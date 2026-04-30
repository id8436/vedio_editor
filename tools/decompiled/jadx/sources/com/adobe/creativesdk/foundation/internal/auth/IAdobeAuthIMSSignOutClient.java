package com.adobe.creativesdk.foundation.internal.auth;

import com.adobe.creativesdk.foundation.auth.AdobeAuthException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAuthIMSSignOutClient {
    void onError(AdobeAuthException adobeAuthException);

    void onSuccess();
}
