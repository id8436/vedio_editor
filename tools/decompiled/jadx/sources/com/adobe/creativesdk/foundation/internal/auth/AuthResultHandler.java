package com.adobe.creativesdk.foundation.internal.auth;

import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;

/* JADX INFO: compiled from: AdobeAuthSignInActivity.java */
/* JADX INFO: loaded from: classes.dex */
abstract class AuthResultHandler {
    private boolean _hasQueuedResult;
    private Object _queuedResultData;
    protected AdobeAuthSignInActivity mAuthActivity;

    public abstract void handleAuthCodeReceived(String str);

    public abstract void handleDeviceTokenReceived(String str);

    protected abstract void performProcessQueuedResult(Object obj);

    public AuthResultHandler() {
        this._hasQueuedResult = false;
        this._hasQueuedResult = false;
    }

    public void setAuthSingInActivity(AdobeAuthSignInActivity adobeAuthSignInActivity) {
        this.mAuthActivity = adobeAuthSignInActivity;
    }

    protected void resetQueuedData() {
        this._hasQueuedResult = false;
        this._queuedResultData = null;
    }

    protected void setQueuedResultData(Object obj) {
        this._hasQueuedResult = true;
        this._queuedResultData = obj;
    }

    public boolean hasAnyQueuedResult() {
        return this._hasQueuedResult;
    }

    public void processQueuedResult() {
        if (this.mAuthActivity != null) {
            performProcessQueuedResult(this._queuedResultData);
            resetQueuedData();
        }
    }

    protected void sentResultViaActivity(AdobeAuthException adobeAuthException) {
        if (this.mAuthActivity == null) {
            AdobeAuthSignInActivity.sendResultBack(adobeAuthException);
        } else {
            this.mAuthActivity.handleResult(adobeAuthException);
        }
    }

    protected void handleResultFromIMS(AdobeAuthException adobeAuthException) {
        sentResultViaActivity(adobeAuthException);
    }

    protected IAdobeAuthIMSSignInClient createImsClientCommon() {
        return new IAdobeAuthIMSSignInClient() { // from class: com.adobe.creativesdk.foundation.internal.auth.AuthResultHandler.1
            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
            public void onSuccess(String str, String str2) {
                AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
                if (sharedInstance.getSocialProviderToken() != null) {
                    String socialProvider = sharedInstance.getSocialProvider();
                    sharedInstance.setSocialProviderToken(null);
                    sharedInstance.setIDPFlow(AuthResultHandler.this.getSocialIngestIDPKey(socialProvider));
                } else {
                    sharedInstance.setIDPFlow(AdobeAuthIdentityManagementService.IMS_KEY_INGEST_IDP_IMS);
                }
                AuthResultHandler.this.handleImsAccountResult(str, str2);
                AuthResultHandler.this.handleResultFromIMS(null);
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
            public void onError(AdobeAuthException adobeAuthException) {
                AuthResultHandler.this.handleResultFromIMS(adobeAuthException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
            public void onInfoNeeded(AdobeAuthIMSInfoNeeded adobeAuthIMSInfoNeeded) {
                AuthResultHandler.this.handleResultFromIMS(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED));
            }
        };
    }

    protected void handleImsAccountResult(String str, String str2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSocialIngestIDPKey(String str) {
        switch (str) {
            case "facebook":
                return "facebook";
            case "google":
                return "google";
            default:
                return "";
        }
    }
}
