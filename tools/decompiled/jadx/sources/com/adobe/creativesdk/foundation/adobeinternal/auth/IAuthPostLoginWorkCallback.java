package com.adobe.creativesdk.foundation.adobeinternal.auth;

/* JADX INFO: loaded from: classes.dex */
public interface IAuthPostLoginWorkCallback {
    Boolean doPostLoginWork();

    void onError();

    void onSucess();
}
