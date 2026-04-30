package com.adobe.creativesdk.foundation.adobeinternal.auth.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLoginObserver;
import com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthService extends Service {
    private AdobeAuthManager authManager;
    private LoginClient loginClient;
    private LogoutClient logoutClient;
    private final IAdobeAuthService.Stub mBinder = new IAdobeAuthService.Stub() { // from class: com.adobe.creativesdk.foundation.adobeinternal.auth.service.AdobeAuthService.1
        @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
        public boolean isUserAuthenticated() {
            return AdobeAuthService.this.authManager.isAuthenticated();
        }

        @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
        public AdobeAuthServiceUserProfile getUserProfile() {
            return new AdobeAuthServiceUserProfile(AdobeAuthService.this.authManager.getUserProfile());
        }

        @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
        public void signUp(AdobeAuthLoginParams adobeAuthLoginParams, IAdobeAuthLoginCallback iAdobeAuthLoginCallback) {
            AdobeAuthSessionLauncher adobeAuthSessionLauncherBuild = new AdobeAuthSessionLauncher.Builder().withContext(AdobeAuthService.this.getBaseContext()).withRequestCode(adobeAuthLoginParams.requestCode).build();
            if (AdobeAuthService.this.loginClient != null) {
                try {
                    AdobeAuthService.this.authManager.unregisterLoginClient(AdobeAuthService.this.loginClient);
                } catch (NullPointerException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            }
            AdobeAuthService.this.loginClient = AdobeAuthService.this.new LoginClient(iAdobeAuthLoginCallback);
            AdobeAuthService.this.authManager.registerLoginClient(AdobeAuthService.this.loginClient);
            AdobeAuthService.this.authManager.promptForSignUp(adobeAuthSessionLauncherBuild);
        }

        @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
        public void login(AdobeAuthLoginParams adobeAuthLoginParams, IAdobeAuthLoginCallback iAdobeAuthLoginCallback) {
            AdobeAuthSessionLauncher adobeAuthSessionLauncherBuild = new AdobeAuthSessionLauncher.Builder().withContext(AdobeAuthService.this.getBaseContext()).withRequestCode(adobeAuthLoginParams.requestCode).build();
            if (AdobeAuthService.this.loginClient != null) {
                try {
                    AdobeAuthService.this.authManager.unregisterLoginClient(AdobeAuthService.this.loginClient);
                } catch (NullPointerException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            }
            AdobeAuthService.this.loginClient = AdobeAuthService.this.new LoginClient(iAdobeAuthLoginCallback);
            AdobeAuthService.this.authManager.registerLoginClient(AdobeAuthService.this.loginClient);
            AdobeAuthService.this.authManager.login(adobeAuthSessionLauncherBuild);
        }

        @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
        public void logout(IAdobeAuthLogoutCallback iAdobeAuthLogoutCallback) {
            if (AdobeAuthService.this.logoutClient != null && AdobeAuthService.this.authManager != null) {
                try {
                    AdobeAuthService.this.authManager.unregisterLogoutClient(AdobeAuthService.this.logoutClient);
                } catch (NullPointerException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            }
            AdobeAuthService.this.logoutClient = AdobeAuthService.this.new LogoutClient(iAdobeAuthLogoutCallback);
            AdobeAuthService.this.authManager.registerLogoutClient(AdobeAuthService.this.logoutClient);
            AdobeAuthService.this.authManager.logout();
        }

        @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
        public void openContinuationAuthEvent(AdobeAuthErrorCode adobeAuthErrorCode, AdobeAuthLoginParams adobeAuthLoginParams, IAdobeAuthLoginCallback iAdobeAuthLoginCallback) {
            AdobeAuthSessionLauncher adobeAuthSessionLauncherBuild = new AdobeAuthSessionLauncher.Builder().withContext(AdobeAuthService.this.getBaseContext()).withRequestCode(adobeAuthLoginParams.requestCode).withContinuableErrorCode(adobeAuthErrorCode).build();
            if (AdobeAuthService.this.loginClient != null) {
                try {
                    AdobeAuthService.this.authManager.unregisterLoginClient(AdobeAuthService.this.loginClient);
                } catch (NullPointerException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            }
            AdobeAuthService.this.loginClient = AdobeAuthService.this.new LoginClient(iAdobeAuthLoginCallback);
            AdobeAuthService.this.authManager.registerLoginClient(AdobeAuthService.this.loginClient);
            AdobeAuthService.this.authManager.openContinuableAuthenticationEvent(adobeAuthSessionLauncherBuild);
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.authManager = AdobeAuthManager.sharedAuthManager();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    class LoginClient implements IAdobeAuthLoginObserver {
        private final IAdobeAuthLoginCallback callback;

        LoginClient(IAdobeAuthLoginCallback iAdobeAuthLoginCallback) {
            this.callback = iAdobeAuthLoginCallback;
        }

        @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLoginObserver
        public void onSuccess(AdobeAuthUserProfile adobeAuthUserProfile) {
            if (AdobeAuthService.this.getBaseContext() != null) {
                try {
                    AdobeAuthService.this.authManager.unregisterLoginClient(this);
                } catch (NullPointerException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
                try {
                    if (this.callback.asBinder().isBinderAlive()) {
                        this.callback.onSuccess(new AdobeAuthServiceUserProfile(adobeAuthUserProfile));
                    }
                } catch (RemoteException e3) {
                    AdobeLogger.log(Level.ERROR, "", "", e3);
                }
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLoginObserver
        public void onError(AdobeAuthException adobeAuthException) {
            if (AdobeAuthService.this.getBaseContext() != null) {
                try {
                    AdobeAuthService.this.authManager.unregisterLoginClient(this);
                } catch (NullPointerException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
                try {
                    if (this.callback.asBinder().isBinderAlive()) {
                        this.callback.onError(adobeAuthException.getErrorCode().ordinal());
                    }
                } catch (RemoteException e3) {
                    AdobeLogger.log(Level.ERROR, "", "", e3);
                }
            }
        }
    }

    class LogoutClient implements IAdobeAuthLogoutObserver {
        private final IAdobeAuthLogoutCallback callback;

        LogoutClient(IAdobeAuthLogoutCallback iAdobeAuthLogoutCallback) {
            this.callback = iAdobeAuthLogoutCallback;
        }

        @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver
        public void onSuccess() {
            if (AdobeAuthService.this.getBaseContext() != null) {
                try {
                    AdobeAuthService.this.authManager.unregisterLogoutClient(this);
                } catch (NullPointerException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
                try {
                    if (this.callback.asBinder().isBinderAlive()) {
                        this.callback.onSuccess();
                    }
                } catch (RemoteException e3) {
                    AdobeLogger.log(Level.ERROR, "", "", e3);
                }
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver
        public void onError(AdobeAuthException adobeAuthException) {
            if (AdobeAuthService.this.getBaseContext() != null) {
                try {
                    AdobeAuthService.this.authManager.unregisterLogoutClient(this);
                } catch (NullPointerException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
                try {
                    if (this.callback.asBinder().isBinderAlive()) {
                        this.callback.onError(adobeAuthException.getErrorCode().ordinal());
                    }
                } catch (RemoteException e3) {
                    AdobeLogger.log(Level.ERROR, "", "", e3);
                }
            }
        }
    }
}
