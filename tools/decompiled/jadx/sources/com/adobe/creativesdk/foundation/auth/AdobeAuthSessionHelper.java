package com.adobe.creativesdk.foundation.auth;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthConstants;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLoginObserver;
import com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver;
import com.adobe.creativesdk.foundation.internal.auth.IAdobeUXAuthDelegate;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthSessionHelper {
    private static final String LOG_TAG = AdobeAuthSessionHelper.class.getSimpleName();
    private AdobeAuthManager _authManager;
    IAdobeUXAuthDelegate _continuableClient;
    Handler _handler;
    IAdobeAuthLoginObserver _loginClient;
    IAdobeAuthLogoutObserver _logoutClient;
    IAdobeAuthStatusCallback _statusCallback;
    private Intent _storedData;

    public enum AdobeAuthStatus {
        AdobeAuthLoggedIn,
        AdobeAuthLoginAttemptFailed,
        AdobeAuthLoggedOut,
        AdobeAuthLogoutAttemptFailed,
        AdobeAuthContinuableEvent,
        AdobeAuthSocialRecoverableSDK
    }

    public interface IAdobeAuthStatusCallback {
        void call(AdobeAuthStatus adobeAuthStatus, AdobeAuthException adobeAuthException);
    }

    public AdobeAuthSessionHelper(IAdobeAuthStatusCallback iAdobeAuthStatusCallback) {
        this._statusCallback = null;
        this._authManager = AdobeAuthManager.sharedAuthManager();
        this._storedData = null;
        this._logoutClient = null;
        this._loginClient = null;
        this._continuableClient = null;
        this._handler = null;
        this._statusCallback = iAdobeAuthStatusCallback;
        this._loginClient = new IAdobeAuthLoginObserver() { // from class: com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.1
            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLoginObserver
            public void onSuccess(AdobeAuthUserProfile adobeAuthUserProfile) {
                if (AdobeAuthSessionHelper.this._statusCallback != null) {
                    if (AdobeAuthSessionHelper.this._handler != null) {
                        AdobeAuthSessionHelper.this._handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthLoggedIn, null);
                            }
                        });
                    } else {
                        AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthLoggedIn, null);
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLoginObserver
            public void onError(final AdobeAuthException adobeAuthException) {
                if (AdobeAuthSessionHelper.this._statusCallback != null) {
                    if (AdobeAuthSessionHelper.this._handler != null) {
                        AdobeAuthSessionHelper.this._handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthLoginAttemptFailed, adobeAuthException);
                            }
                        });
                    } else {
                        AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthLoginAttemptFailed, adobeAuthException);
                    }
                }
            }
        };
        this._logoutClient = new IAdobeAuthLogoutObserver() { // from class: com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.2
            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver
            public void onSuccess() {
                if (AdobeAuthSessionHelper.this._statusCallback != null) {
                    if (AdobeAuthSessionHelper.this._handler != null) {
                        AdobeAuthSessionHelper.this._handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthLoggedOut, null);
                            }
                        });
                    } else {
                        AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthLoggedOut, null);
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver
            public void onError(final AdobeAuthException adobeAuthException) {
                if (AdobeAuthSessionHelper.this._statusCallback != null) {
                    if (AdobeAuthSessionHelper.this._handler != null) {
                        AdobeAuthSessionHelper.this._handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthLogoutAttemptFailed, adobeAuthException);
                            }
                        });
                    } else {
                        AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthLogoutAttemptFailed, adobeAuthException);
                    }
                }
            }
        };
        this._continuableClient = new IAdobeUXAuthDelegate() { // from class: com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.3
            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeUXAuthDelegate
            public void detectedContinueableAuthenticationEvent(final AdobeAuthException adobeAuthException) {
                if (AdobeAuthSessionHelper.this._handler != null) {
                    AdobeAuthSessionHelper.this._handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthContinuableEvent, adobeAuthException);
                        }
                    });
                } else {
                    AdobeAuthSessionHelper.this._statusCallback.call(AdobeAuthStatus.AdobeAuthContinuableEvent, adobeAuthException);
                }
            }
        };
    }

    public AdobeAuthSessionHelper(IAdobeAuthStatusCallback iAdobeAuthStatusCallback, Handler handler) {
        this(iAdobeAuthStatusCallback);
        this._handler = handler;
    }

    public void onCreate(Bundle bundle) {
    }

    public void onResume() {
        this._authManager.registerLoginClient(this._loginClient);
        this._authManager.registerLogoutClient(this._logoutClient);
        this._authManager.registerContinuableClient(this._continuableClient);
        if (this._authManager.hasValidAccessToken() || this._authManager.canRefreshAccessToken()) {
            if (this._authManager.hasValidAccessToken()) {
                AdobeLogger.log(Level.DEBUG, LOG_TAG, "Has got valid access token(inside AdobeAuthSessionHelper)");
            } else {
                AdobeLogger.log(Level.DEBUG, LOG_TAG, "Has refresh access token(inside AdobeAuthSessionHelper)");
            }
            this._loginClient.onSuccess(this._authManager.getUserProfile());
            return;
        }
        if (this._authManager.getContinuableJumpUrl() != null) {
            AdobeAuthException continuableError = this._authManager.getContinuableError();
            if (continuableError != null) {
                this._continuableClient.detectedContinueableAuthenticationEvent(continuableError);
                return;
            }
            return;
        }
        if (this._storedData != null) {
            int intExtra = this._storedData.getIntExtra(AdobeAuthConstants.AUTH_ERROR_CODE, -1);
            this._storedData = null;
            if (intExtra != -1) {
                this._loginClient.onError(new AdobeAuthException(AdobeAuthErrorCode.fromInt(intExtra)));
                return;
            } else {
                this._loginClient.onSuccess(this._authManager.getUserProfile());
                return;
            }
        }
        this._logoutClient.onSuccess();
    }

    public void onPause() {
        this._authManager.unregisterLoginClient(this._loginClient);
        this._authManager.unregisterLogoutClient(this._logoutClient);
        this._authManager.unregisterContinuableClient(this._continuableClient);
        this._authManager.setCurrentActivity(null);
    }

    public void onStart() {
    }

    public void onStop() {
    }

    public void onDestroy() {
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        AdobeAuthSessionLauncher currentAuthSessionLauncher = this._authManager.getCurrentAuthSessionLauncher();
        if (currentAuthSessionLauncher != null && currentAuthSessionLauncher.getRequestCode() == i) {
            this._storedData = intent;
        }
    }
}
