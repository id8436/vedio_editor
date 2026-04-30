package com.behance.sdk.asynctask.params;

import com.behance.sdk.exception.BehanceSDKUserNotAuthenticatedException;
import com.behance.sdk.managers.BehanceSDKUserManager;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAbstractTaskParams {
    private String clientID;
    private boolean userVerified = true;

    public void setClientId(String str) {
        this.clientID = str;
    }

    public String getClientId() {
        return this.clientID;
    }

    public String getUserAccessToken() throws BehanceSDKUserNotAuthenticatedException {
        BehanceSDKUserManager behanceSDKUserManager = BehanceSDKUserManager.getInstance();
        if (behanceSDKUserManager.isUserLoggedIn()) {
            return behanceSDKUserManager.checkExpiryAndGetAccessToken();
        }
        return null;
    }

    public boolean isUserVerified() {
        return this.userVerified;
    }

    public void setUserVerified(boolean z) {
        this.userVerified = z;
    }
}
