package com.adobe.creativesdk.foundation.internal.auth;

import com.adobe.creativesdk.foundation.auth.AdobeAuthException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAuthIMSSignInClient {
    void onError(AdobeAuthException adobeAuthException);

    void onInfoNeeded(AdobeAuthIMSInfoNeeded adobeAuthIMSInfoNeeded);

    void onSuccess(String str, String str2);
}
