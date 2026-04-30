package com.adobe.creativesdk.foundation.internal.auth;

import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.auth.AdobeCSDKAdobeIdAuthenticatorHelper;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: compiled from: AdobeAuthSignInActivity.java */
/* JADX INFO: loaded from: classes.dex */
class AuthResultHandlerForTryingSSO extends AuthResultHandlerForSingleClient {
    private static final String T = AuthResultHandlerForTryingSSO.class.getSimpleName();
    private boolean _forceReInitiateSignInDueToDeviceTokenImsFailure = false;
    private boolean _gotDeviceTokenFromSharedAccount = false;
    private TrySSOQueuedData _ssoData;

    private void performCommonTokenHandling(TrySSOQueuedData trySSOQueuedData) {
        if (trySSOQueuedData.tokenDetails != null && !this._forceReInitiateSignInDueToDeviceTokenImsFailure) {
            handleDeviceTokenReceived(trySSOQueuedData.tokenDetails.deviceToken);
        } else {
            this.mAuthActivity.noSharedAccountContinueNormalSignIn();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.auth.AuthResultHandler
    protected void handleResultFromIMS(AdobeAuthException adobeAuthException) {
        boolean z = true;
        if (adobeAuthException == null || this._ssoData == null || this._ssoData.tokenDetails == null || adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_OFFLINE) {
            z = false;
        } else if (this.mAuthActivity == null) {
            if (!AdobeAuthSignInActivity.isLastActivityClosedDuetoManualClose()) {
                this._forceReInitiateSignInDueToDeviceTokenImsFailure = true;
                setQueuedResultData(this._ssoData);
                return;
            }
            z = false;
        }
        if (z) {
            this._gotDeviceTokenFromSharedAccount = false;
            this.mAuthActivity.noSharedAccountContinueNormalSignIn();
        } else {
            super.handleResultFromIMS(adobeAuthException);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.auth.AuthResultHandler
    protected void handleImsAccountResult(String str, String str2) {
        AdobeLogger.log(Level.DEBUG, T, "handle IMS result");
        if (!this._gotDeviceTokenFromSharedAccount) {
            AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
            AdobeCSDKAdobeIdAuthenticatorHelper.TokenDetails tokenDetails = new AdobeCSDKAdobeIdAuthenticatorHelper.TokenDetails();
            tokenDetails.adobeId = sharedInstance.getEmailAddress();
            tokenDetails.deviceToken = sharedInstance.getDeviceToken();
            tokenDetails.deviceExpirationTime = sharedInstance.getDeviceTokenExpirationTime();
            tokenDetails.deviceId = sharedInstance.getDeviceID();
            AdobeLogger.log(Level.DEBUG, T, "adding account explicity : id:  " + tokenDetails.adobeId);
            AdobeAuthSignInActivity.addNewAccountToAccountManager(tokenDetails);
        }
    }

    public void handleSharedTokenRequestResult(AdobeCSDKAdobeIdAuthenticatorHelper.TokenDetails tokenDetails) {
        if (tokenDetails != null && tokenDetails.deviceToken != null) {
            this._gotDeviceTokenFromSharedAccount = true;
        }
        TrySSOQueuedData trySSOQueuedData = new TrySSOQueuedData();
        trySSOQueuedData.tokenDetails = tokenDetails;
        this._ssoData = trySSOQueuedData;
        if (this.mAuthActivity == null) {
            setQueuedResultData(trySSOQueuedData);
            return;
        }
        if (trySSOQueuedData.tokenDetails != null && trySSOQueuedData.tokenDetails.deviceId != null) {
            AdobeAuthIdentityManagementService.getSharedInstance().setDeviceID(trySSOQueuedData.tokenDetails.deviceId);
        }
        performCommonTokenHandling(trySSOQueuedData);
    }

    @Override // com.adobe.creativesdk.foundation.internal.auth.AuthResultHandlerForSingleClient, com.adobe.creativesdk.foundation.internal.auth.AuthResultHandler
    protected void performProcessQueuedResult(Object obj) {
        performCommonTokenHandling((TrySSOQueuedData) obj);
    }

    public void setAccountManagerRequestCancelled() {
        TrySSOQueuedData trySSOQueuedData = new TrySSOQueuedData();
        trySSOQueuedData.isRequesUserCancelled = true;
        if (this.mAuthActivity == null) {
            setQueuedResultData(trySSOQueuedData);
        } else {
            performCommonTokenHandling(trySSOQueuedData);
        }
    }
}
