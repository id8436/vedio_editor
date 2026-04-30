package com.adobe.creativesdk.foundation.internal.auth;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: compiled from: AdobeAuthSignInActivity.java */
/* JADX INFO: loaded from: classes.dex */
class AuthResultHandlerForSingleClient extends AuthResultHandler {
    private static final String T = AuthResultHandlerForSingleClient.class.getSimpleName();

    AuthResultHandlerForSingleClient() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.auth.AuthResultHandler
    protected void performProcessQueuedResult(Object obj) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.auth.AuthResultHandler
    public void handleAuthCodeReceived(String str) {
        AdobeLogger.log(Level.DEBUG, T, "received Auth Code check");
        AdobeAuthIdentityManagementService.getSharedInstance().signInWithAuthCode(str, createImsClientCommon());
    }

    @Override // com.adobe.creativesdk.foundation.internal.auth.AuthResultHandler
    public void handleDeviceTokenReceived(String str) {
        AdobeLogger.log(Level.DEBUG, T, "received Device Token check");
        AdobeAuthIdentityManagementService.getSharedInstance().signInWithDeviceToken(str, createImsClientCommon());
    }
}
