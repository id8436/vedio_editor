package com.adobe.creativesdk.foundation.adobeinternal.auth;

import com.adobe.creativesdk.foundation.auth.AdobeAuthException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeSocialProviderCallback {
    void onFailure(AdobeAuthException adobeAuthException);

    void onSuccess(boolean z);
}
