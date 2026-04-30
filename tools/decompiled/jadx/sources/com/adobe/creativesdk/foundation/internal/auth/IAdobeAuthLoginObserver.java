package com.adobe.creativesdk.foundation.internal.auth;

import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAuthLoginObserver {
    void onError(AdobeAuthException adobeAuthException);

    void onSuccess(AdobeAuthUserProfile adobeAuthUserProfile);
}
