package com.adobe.creativesdk.foundation.adobeinternal.auth;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAuthManagerCallback<TS, TE> {
    void onError(TE te);

    void onSuccess(TS ts);
}
