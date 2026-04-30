package com.adobe.creativesdk.foundation.internal.auth;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeAuthSocialSessionLauncher;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeSocialLoginParams;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.auth.IAdobeAuthManagerCallback;
import com.adobe.creativesdk.foundation.adobeinternal.auth.IAdobeSocialProviderCallback;
import com.adobe.creativesdk.foundation.adobeinternal.auth.IAuthPostLoginWorkCallback;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAuthEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.auth.AdobeCSDKAdobeIdAuthenticatorHelper;
import com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeCSDKAdobeIDAccountType;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthManager {
    static final String AUTHTAG = "Authentication";
    public static final int DEFAULT_SIGN_IN_REQUEST_CODE = 2002;
    public static final int DEFAULT_SOCIAL_SIGN_IN_REQUEST_CODE = 2003;
    private Map<IAdobeUXAuthDelegate, ContinuableEventObserver> _continuableMap;
    private boolean _hasPrivateCloudScope;
    private Map<IAdobeAuthLoginObserver, LoginObserver> _loginMap;
    private Map<IAdobeAuthLogoutObserver, LogoutObserver> _logoutMap;
    private static AdobeAuthManager sharedManager = null;
    private static final String LOG_TAG = AdobeAuthManager.class.getSimpleName();
    private AdobeAuthOptions[] mAuthOptions = null;
    private AdobeAuthUserProfileImpl mUserProfile = null;
    private IAdobeAuthIMSSignInClient mSignInClient = null;
    private boolean emergencyLogout = false;
    private AdobeAuthSessionLauncher _sessionLauncher = null;
    private Activity _currentTopActivity = null;
    private boolean isAdobeApplication = false;
    private boolean _ignoreCceScope = false;

    public synchronized void ignoreCCeScope() {
        this._ignoreCceScope = true;
    }

    public static AdobeAuthManager sharedAuthManager() {
        if (sharedManager == null) {
            sharedManager = new AdobeAuthManager();
        }
        return sharedManager;
    }

    static boolean isInstanceCreated() {
        return sharedManager != null;
    }

    public void setCurrentActivity(Activity activity) {
        this._currentTopActivity = activity;
    }

    Activity getCurrentActivity() {
        return this._currentTopActivity;
    }

    private void setCurrentLauncherObject(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
        this._sessionLauncher = adobeAuthSessionLauncher;
    }

    private AdobeAuthManager() {
        this._loginMap = null;
        this._logoutMap = null;
        this._continuableMap = null;
        this._loginMap = new HashMap();
        this._logoutMap = new HashMap();
        this._continuableMap = new HashMap();
    }

    public String getContinuableJumpUrl() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getContiuableEventJumpURL();
    }

    public AdobeAuthException getContinuableError() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getContinuableError();
    }

    class LoginObserver implements Observer {
        IAdobeAuthLoginObserver _loginClient;

        LoginObserver(IAdobeAuthLoginObserver iAdobeAuthLoginObserver) {
            this._loginClient = null;
            this._loginClient = iAdobeAuthLoginObserver;
        }

        public void registerForLogin() {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginExternalNotification, this);
        }

        public void unregisterForLogin() {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAuthLoginExternalNotification, this);
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            if (adobeNotification.getInfo() != null && adobeNotification.getInfo().get(AdobeNotification.Error) != null) {
                this._loginClient.onError((AdobeAuthException) adobeNotification.getInfo().get(AdobeNotification.Error));
            } else {
                this._loginClient.onSuccess(AdobeAuthManager.this.getUserProfile());
            }
        }
    }

    class LogoutObserver implements Observer {
        IAdobeAuthLogoutObserver _logoutClient;

        LogoutObserver(IAdobeAuthLogoutObserver iAdobeAuthLogoutObserver) {
            this._logoutClient = null;
            this._logoutClient = iAdobeAuthLogoutObserver;
        }

        public void registerForLogout() {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, this);
        }

        public void unregisterForLogout() {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, this);
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            if (adobeNotification.getInfo() != null && adobeNotification.getInfo().get(AdobeNotification.Error) != null) {
                this._logoutClient.onError((AdobeAuthException) adobeNotification.getInfo().get(AdobeNotification.Error));
            } else {
                this._logoutClient.onSuccess();
            }
        }
    }

    class ContinuableEventObserver implements Observer {
        IAdobeUXAuthDelegate _continuableClient;

        ContinuableEventObserver(IAdobeUXAuthDelegate iAdobeUXAuthDelegate) {
            this._continuableClient = null;
            this._continuableClient = iAdobeUXAuthDelegate;
        }

        public void registerForContinuableEvent() {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthContiuableEventNotification, this);
        }

        public void unregisterForContinuableEvent() {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAuthContiuableEventNotification, this);
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            if (adobeNotification.getInfo() != null && adobeNotification.getInfo().get(AdobeNotification.Error) != null) {
                this._continuableClient.detectedContinueableAuthenticationEvent((AdobeAuthException) adobeNotification.getInfo().get(AdobeNotification.Error));
            }
        }
    }

    @Deprecated
    public void setAuthenticationParameters(String str, String str2, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (isInitialized()) {
            AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
            this.mAuthOptions = new AdobeAuthOptions[]{AdobeAuthOptions.AdobeAuthOptionsHideSignUpOnSignIn};
            sharedInstance.setCipherKey(bArr);
            sharedInstance.setAuthenticationParameters(str, str2, null, null, null);
            sharedInstance.setGrantType(AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeAuthorization);
            sharedInstance.setAdditionalClientScopes(null);
            this._hasPrivateCloudScope = false;
        }
    }

    public void setAuthenticationParameters(String str, String str2, String str3, String[] strArr, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (isInitialized()) {
            AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
            this.mAuthOptions = new AdobeAuthOptions[]{AdobeAuthOptions.AdobeAuthOptionsHideSignUpOnSignIn};
            sharedInstance.setCipherKey(bArr);
            sharedInstance.setRedirectURI(str3);
            sharedInstance.setAuthenticationParameters(str, str2, null, null, null);
            sharedInstance.setGrantType(AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeAuthorization);
            setAuthenticationParametersWithClientID(strArr);
            this._hasPrivateCloudScope = false;
        }
    }

    private void setAuthenticationParametersWithClientID(String[] strArr) {
        if (isInitialized() && strArr != null && strArr.length > 0) {
            AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                arrayList.add(str);
            }
            arrayList.add(AdobeAuthIdentityManagementService.IMS_KEY_OPENID_SCOPE);
            sharedInstance.setAdditionalClientScopes((String[]) arrayList.toArray(new String[arrayList.size()]));
        }
    }

    public void setEncryptionKey(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        AdobeAuthIdentityManagementService.getSharedInstance().setCipherKey(bArr);
    }

    public boolean isAdobeApp() {
        String packageName;
        if (!isInitialized() || (packageName = getApplicationContext().getPackageName()) == null) {
            return false;
        }
        return packageName.contains("com.adobe") || packageName.contains("com.behance") || packageName.contains("com.aviary");
    }

    public void setAsAdobeApp() {
        this.isAdobeApplication = true;
    }

    public boolean isFirstPartyApp() {
        return this.isAdobeApplication;
    }

    public void initWithApplicationContext(Context context) {
        AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(context);
    }

    public void openContinuableAuthenticationEvent(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
        setCurrentLauncherObject(adobeAuthSessionLauncher);
        Context launcherActivity = this._sessionLauncher.getLauncherActivity();
        AdobeAuthErrorCode continuableErrorCode = this._sessionLauncher.getContinuableErrorCode();
        if (continuableErrorCode != null) {
            if (continuableErrorCode == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION || continuableErrorCode == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UPDATED_TOU || continuableErrorCode == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION) {
                AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
                if (continuableErrorCode.toString().equals(sharedInstance.getContiuableEventErrorCode())) {
                    String contiuableEventJumpURL = sharedInstance.getContiuableEventJumpURL();
                    if (launcherActivity == null) {
                        launcherActivity = this._sessionLauncher.getLauncherContext();
                    }
                    Intent intent = new Intent(launcherActivity, (Class<?>) AdobeAuthContinuableEventActivity.class);
                    if (contiuableEventJumpURL != null) {
                        intent.putExtra(AdobeAuthConstants.JUMP_URL, contiuableEventJumpURL);
                    }
                    if (launcherActivity instanceof Activity) {
                        ((Activity) launcherActivity).startActivityForResult(intent, adobeAuthSessionLauncher.getRequestCode());
                    } else {
                        launcherActivity.startActivity(intent);
                    }
                    sharedInstance.clearContinuableEventInfo();
                }
            }
        }
    }

    public void login(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
        if (adobeAuthSessionLauncher != null) {
            setAuthenticationParametersWithClientID(adobeAuthSessionLauncher.getScopesList());
            if (adobeAuthSessionLauncher.getRedirectURI() != null) {
                setRedirectURI(adobeAuthSessionLauncher.getRedirectURI());
            }
        }
        setCurrentLauncherObject(adobeAuthSessionLauncher);
        AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportLoginStart, null);
        AdobeLogger.log(Level.DEBUG, AUTHTAG, "login() called");
        if (hasValidAccessToken()) {
            postLoginSuccess(true);
            return;
        }
        String adobeID = getUserProfile() != null ? getUserProfile().getAdobeID() : null;
        if (AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken() != null) {
            AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportExpiredAuthToken, adobeID);
        } else {
            AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportMissingAuthToken, null);
        }
        loginInternal(AdobeAuthInteraction.AdobeAuthInteractionInteractive, true);
    }

    public void switchAccount() {
        getIMSService().switchAccount();
    }

    public void getSocialProviders(final AdobeSocialLoginParams.SocialProvider socialProvider, final IAdobeSocialProviderCallback iAdobeSocialProviderCallback) {
        getIMSService().getListOfSocialProviders(new IAdobeGetProvidersCallback() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.1
            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeGetProvidersCallback
            public void onSuccess() {
                iAdobeSocialProviderCallback.onSuccess(AdobeAuthManager.this.isSocialLoginEnabled(socialProvider));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeGetProvidersCallback
            public void onFailure(AdobeAuthException adobeAuthException) {
                iAdobeSocialProviderCallback.onFailure(adobeAuthException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeGetProvidersCallback
            public void onInvalidClientId() {
                iAdobeSocialProviderCallback.onFailure(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeGetProvidersCallback
            public void onInvalidDeviceId() {
                iAdobeSocialProviderCallback.onFailure(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED));
            }
        });
    }

    public boolean isSocialLoginEnabled(AdobeSocialLoginParams.SocialProvider socialProvider) {
        return getIMSService().isProviderEnabled(socialProvider.name());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveAccountDetailsSSO(IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        AdobeCSDKAdobeIdAuthenticatorHelper.TokenDetails tokenDetails = new AdobeCSDKAdobeIdAuthenticatorHelper.TokenDetails();
        tokenDetails.adobeId = sharedInstance.getEmailAddress();
        tokenDetails.deviceToken = sharedInstance.getDeviceToken();
        tokenDetails.deviceExpirationTime = sharedInstance.getDeviceTokenExpirationTime();
        tokenDetails.deviceId = sharedInstance.getDeviceID();
        HashMap map = new HashMap();
        AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppLogin.getValue());
        if (tokenDetails.deviceToken != null && tokenDetails.adobeId != null) {
            AdobeCSDKAdobeIdAuthenticatorHelper.getInstance().addNewAccountDirectlyToAccountManager(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext(), tokenDetails, false, iAdobeAuthManagerCallback);
            return;
        }
        AdobeLogger.log(Level.ERROR, "SocialLogin SSO", "Add account NUll - check this");
        adobeAnalyticsETSAuthEvent.trackSSO();
        adobeAnalyticsETSAuthEvent.trackError("Add account SSO", "Either Null Device Token or Null AdobeID");
        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
        map.put("error_description", "Either Null Device Token or Null AdobeID");
        AdobeAuthException adobeAuthException = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER, map);
        if (iAdobeAuthManagerCallback != null) {
            iAdobeAuthManagerCallback.onError(adobeAuthException);
        }
    }

    public void socialLogin(final AdobeAuthSocialSessionLauncher adobeAuthSocialSessionLauncher) {
        setCurrentLauncherObject(adobeAuthSocialSessionLauncher);
        AdobeSocialLoginParams socialLoginParams = adobeAuthSocialSessionLauncher.getSocialLoginParams();
        String idp_token = socialLoginParams.getIdp_token();
        final AdobeSocialLoginParams.SocialProvider provider = socialLoginParams.getProvider();
        final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppLogin.getValue());
        IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient = new IAdobeAuthIMSSignInClient() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.2
            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
            public void onSuccess(String str, String str2) {
                Context launcherActivity = adobeAuthSocialSessionLauncher.getLauncherContext() == null ? adobeAuthSocialSessionLauncher.getLauncherActivity() : adobeAuthSocialSessionLauncher.getLauncherContext();
                AdobeAuthManager.this.getIMSService().setIDPFlow(AdobeAuthManager.this.getSocialIngestIDPKey(provider));
                if (AdobeAuthManager.this.getIMSService().getDeviceID() != null && !AdobeCSDKAdobeIdAuthenticatorHelper.isAccountManagerHasSharedAdobeIdAccount(launcherActivity)) {
                    AdobeAuthManager.this.saveAccountDetailsSSO(null);
                }
                adobeAnalyticsETSAuthEvent.trackErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                AdobeAuthManager.this.postLoginSuccess(true);
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
            public void onError(AdobeAuthException adobeAuthException) {
                if (adobeAuthException != null) {
                    if (adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_USER) {
                        AdobeAuthManager.this.launchSignInActivity(AdobeAuthConstants.AUTH_SESSION_SOCIAL_TYPE_SIGN_IN);
                        return;
                    }
                    adobeAnalyticsETSAuthEvent.trackErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    AdobeAuthManager.this.postLoginError(true, adobeAuthException);
                    return;
                }
                adobeAnalyticsETSAuthEvent.trackErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                HashMap map = new HashMap();
                map.put("error_description", "Invalid Server Response");
                AdobeAuthManager.this.postLoginError(true, new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR, map));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
            public void onInfoNeeded(AdobeAuthIMSInfoNeeded adobeAuthIMSInfoNeeded) {
            }

            public void onDismissed() {
                onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED));
            }
        };
        setSignInClient(iAdobeAuthIMSSignInClient);
        switch (provider) {
            case FACEBOOK:
                getIMSService().loginWithFacebookToken(idp_token, iAdobeAuthIMSSignInClient);
                break;
            case GOOGLE:
                getIMSService().loginWithGoogleToken(idp_token, iAdobeAuthIMSSignInClient);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSocialIngestIDPKey(AdobeSocialLoginParams.SocialProvider socialProvider) {
        switch (socialProvider) {
            case FACEBOOK:
                return "facebook";
            case GOOGLE:
                return "google";
            default:
                return "";
        }
    }

    public void logout() {
        AdobeAuthUserProfile userProfile = getUserProfile();
        final String adobeID = null;
        AdobeLogger.log(Level.DEBUG, AUTHTAG, "logout() called");
        final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppLogout.getValue());
        adobeAnalyticsETSAuthEvent.trackService(getIMSService().getImsHost(), getIMSService().getLogoutAPI(), getIMSService().getLogoutAPIVersion());
        if (this.emergencyLogout) {
            adobeAnalyticsETSAuthEvent.addEventParams(AdobeAnalyticsEventParams.Core.AdobeEventPropertySubType.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_TOKEN_DELETED);
            this.emergencyLogout = false;
        }
        if (userProfile != null) {
            AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportLogoutAttempt, userProfile.getAdobeID());
            adobeID = userProfile.getAdobeID();
        }
        if (getApplicationContext() == null) {
            HashMap map = new HashMap();
            map.put(AdobeNotification.Error, new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_AUTH_MODULE_NOT_INITIALIZED));
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeAuthLogoutNotification, map));
            return;
        }
        IAdobeAuthIMSSignOutClient iAdobeAuthIMSSignOutClient = new IAdobeAuthIMSSignOutClient() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.3
            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignOutClient
            public void onSuccess() {
                AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportLogoutSuccess, adobeID);
                adobeAnalyticsETSAuthEvent.trackErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeAuthLogoutNotification, null));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignOutClient
            public void onError(AdobeAuthException adobeAuthException) {
                AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportLogoutFailure, adobeID);
                adobeAnalyticsETSAuthEvent.trackErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                HashMap map2 = new HashMap();
                map2.put(AdobeNotification.Error, adobeAuthException);
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeAuthLogoutNotification, map2));
            }
        };
        AdobeLogger.log(Level.DEBUG, AUTHTAG, "Calling getImSService-Signout");
        getIMSService().signOut(iAdobeAuthIMSSignOutClient);
    }

    public AdobeAuthUserProfile getUserProfile() {
        if (!isInitialized() || !isAuthenticated()) {
            return null;
        }
        this.mUserProfile = new AdobeAuthUserProfileImpl();
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsETSAuthEvent.ADOBE_ETS_ENVIRONMENT_USERPROFILE);
        String adobeID = getIMSService().getAdobeID();
        if (adobeID == null) {
            adobeAnalyticsETSAuthEvent.trackError("USER PROFILE ERROR", "User ID not available");
            adobeAnalyticsETSAuthEvent.endAndTrackEvent();
            throw new RuntimeException("User profile not available. But user Authenticated");
        }
        this.mUserProfile.setAdobeID(adobeID);
        this.mUserProfile.setDisplayName(sharedInstance.getDisplayName());
        this.mUserProfile.setCountrycode(sharedInstance.getCountryCode());
        this.mUserProfile.setLicenseStatus(sharedInstance.getLicenseStatus());
        this.mUserProfile.setFirstName(sharedInstance.getFirstName());
        this.mUserProfile.setLastName(sharedInstance.getLastName());
        this.mUserProfile.setEmail(sharedInstance.getEmailAddress());
        this.mUserProfile.setEmailVerified(sharedInstance.getEmailVerified() != null && sharedInstance.getEmailVerified().equals("true"));
        this.mUserProfile.setEnterprise(sharedInstance.getIsEnterPrise() != null && sharedInstance.getIsEnterPrise().equals("true"));
        this.mUserProfile.setAccountType(sharedInstance.getAccountType());
        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
        return this.mUserProfile;
    }

    public boolean isAuthenticated() {
        if (isInitialized()) {
            return (hasValidAccessToken() || canRefreshAccessToken()) && AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID() != null;
        }
        return false;
    }

    public void registerLoginClient(IAdobeAuthLoginObserver iAdobeAuthLoginObserver) {
        this._loginMap.put(iAdobeAuthLoginObserver, new LoginObserver(iAdobeAuthLoginObserver));
        this._loginMap.get(iAdobeAuthLoginObserver).registerForLogin();
    }

    public void unregisterLoginClient(IAdobeAuthLoginObserver iAdobeAuthLoginObserver) {
        if (this._loginMap.containsKey(iAdobeAuthLoginObserver)) {
            this._loginMap.get(iAdobeAuthLoginObserver).unregisterForLogin();
            this._loginMap.remove(iAdobeAuthLoginObserver);
        }
    }

    public void registerLogoutClient(IAdobeAuthLogoutObserver iAdobeAuthLogoutObserver) {
        this._logoutMap.put(iAdobeAuthLogoutObserver, new LogoutObserver(iAdobeAuthLogoutObserver));
        this._logoutMap.get(iAdobeAuthLogoutObserver).registerForLogout();
    }

    public void unregisterLogoutClient(IAdobeAuthLogoutObserver iAdobeAuthLogoutObserver) {
        if (this._logoutMap.containsKey(iAdobeAuthLogoutObserver)) {
            this._logoutMap.get(iAdobeAuthLogoutObserver).unregisterForLogout();
            this._logoutMap.remove(iAdobeAuthLogoutObserver);
        }
    }

    public void registerContinuableClient(IAdobeUXAuthDelegate iAdobeUXAuthDelegate) {
        this._continuableMap.put(iAdobeUXAuthDelegate, new ContinuableEventObserver(iAdobeUXAuthDelegate));
        this._continuableMap.get(iAdobeUXAuthDelegate).registerForContinuableEvent();
    }

    public void unregisterContinuableClient(IAdobeUXAuthDelegate iAdobeUXAuthDelegate) {
        if (this._continuableMap.containsKey(iAdobeUXAuthDelegate)) {
            this._continuableMap.get(iAdobeUXAuthDelegate).unregisterForContinuableEvent();
            this._continuableMap.remove(iAdobeUXAuthDelegate);
        }
    }

    public void setAuthenticationEnvironment(AdobeAuthIMSEnvironment adobeAuthIMSEnvironment) {
        if (isInitialized()) {
            getIMSService().setEnvironment(adobeAuthIMSEnvironment);
        }
    }

    public void setAuthenticationParameters(String str, String str2, String str3, String str4, String str5, AdobeAuthOptions[] adobeAuthOptionsArr, String[] strArr, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (isInitialized()) {
            AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
            sharedInstance.setCipherKey(bArr);
            sharedInstance.setAuthenticationParameters(str, str2, str3, str4, str5);
            sharedInstance.setGrantType(AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeDevice);
            setAdditionalScopeList(strArr);
            this.mAuthOptions = adobeAuthOptionsArr;
        }
    }

    public void setAdditionalScopeList(String[] strArr) {
        String[] strArr2;
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        if (this._ignoreCceScope) {
            this._hasPrivateCloudScope = false;
            sharedInstance.setAdditionalClientScopes(strArr);
            return;
        }
        if (strArr != null) {
            String[] strArr3 = new String[strArr.length + 1];
            for (int i = 0; i < strArr.length; i++) {
                strArr3[i] = strArr[i];
            }
            strArr3[strArr.length] = "sao.cce_private";
            strArr2 = strArr3;
        } else {
            strArr2 = new String[]{"sao.cce_private"};
        }
        this._hasPrivateCloudScope = true;
        sharedInstance.setAdditionalClientScopes(strArr2);
    }

    public void promptForSignUp(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
        AdobeAnalyticsSDKReporter.trackRegStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsRegReportSignupStart, null);
        if (adobeAuthSessionLauncher != null) {
            setAuthenticationParametersWithClientID(adobeAuthSessionLauncher.getScopesList());
            if (adobeAuthSessionLauncher.getRedirectURI() != null) {
                setRedirectURI(adobeAuthSessionLauncher.getRedirectURI());
            }
        }
        setCurrentLauncherObject(adobeAuthSessionLauncher);
        final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppSignup.getValue());
        adobeAnalyticsETSAuthEvent.trackService(getIMSService().getImsHost(), getIMSService().getLoginAPI(), getIMSService().getLoginAPIVersion());
        if (getApplicationContext() == null) {
            AdobeAnalyticsSDKReporter.trackRegStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsRegReportSignupFailure, null);
            postLoginError(true, new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_AUTH_MODULE_NOT_INITIALIZED));
            return;
        }
        if (getIMSService().getGrantType() == AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeDevice && getIMSService().getDeviceID() == null) {
            postLoginError(true, new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED));
            return;
        }
        if (getUserProfile() != null && getUserProfile().getAdobeID() != null) {
            AdobeAnalyticsSDKReporter.trackRegStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsRegReportSignupFailure, getUserProfile().getAdobeID());
            postLoginError(true, new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR));
        } else {
            IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient = new IAdobeAuthIMSSignInClient() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.4
                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
                public void onSuccess(String str, String str2) {
                    AdobeAnalyticsSDKReporter.trackRegStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsRegReportSignupSuccess, str);
                    adobeAnalyticsETSAuthEvent.trackErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    AdobeAuthManager.this.getIMSService().setIDPFlow(AdobeAuthIdentityManagementService.IMS_KEY_INGEST_IDP_IMS);
                    AdobeAuthManager.this.postLoginSuccess(true);
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
                public void onError(AdobeAuthException adobeAuthException) {
                    if (adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED) {
                        adobeAnalyticsETSAuthEvent.trackErrorCode("cancelled");
                        AdobeAnalyticsSDKReporter.trackRegStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsRegReportSignupCancel, AdobeAuthManager.this.getIMSService().getAdobeID());
                    } else {
                        adobeAnalyticsETSAuthEvent.trackErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                        AdobeAnalyticsSDKReporter.trackRegStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsRegReportSignupFailure, AdobeAuthManager.this.getIMSService().getAdobeID());
                    }
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    AdobeAuthManager.this.postLoginError(true, adobeAuthException);
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
                public void onInfoNeeded(AdobeAuthIMSInfoNeeded adobeAuthIMSInfoNeeded) {
                    onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR));
                }
            };
            launchSignInActivity(AdobeAuthConstants.AUTH_SESSION_TYPE_SIGN_UP);
            setSignInClient(iAdobeAuthIMSSignInClient);
        }
    }

    public void refreshAccess() {
        if (isInitialized()) {
            final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_TOKEN_TYPE);
            adobeAnalyticsETSAuthEvent.trackService(getIMSService().getImsHost(), getIMSService().getLoginAPI(), getIMSService().getLoginAPIVersion());
            adobeAnalyticsETSAuthEvent.addEventParams(AdobeAnalyticsEventParams.Core.AdobeEventPropertySubType.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_ACCESS_TOKEN_REFRESHED);
            getIMSService().signIn(new IAdobeAuthIMSSignInClient() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.5
                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
                public void onSuccess(String str, String str2) {
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    AdobeAuthManager.this.postLoginSuccess(true);
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
                public void onError(AdobeAuthException adobeAuthException) {
                    adobeAnalyticsETSAuthEvent.endAndTrackEventWithErrorCode(adobeAuthException.getDescription());
                    if (adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION || adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION || adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UPDATED_TOU) {
                        AdobeAuthManager.this.postContinuableEvent(adobeAuthException);
                    } else {
                        AdobeAuthManager.this.postLoginError(true, adobeAuthException);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
                public void onInfoNeeded(AdobeAuthIMSInfoNeeded adobeAuthIMSInfoNeeded) {
                    onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR));
                }
            });
        }
    }

    public boolean reAuthenticate(IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        return reAuthenticateInternal(iAdobeAuthManagerCallback);
    }

    public boolean reAuthenticate() {
        return reAuthenticateInternal(null);
    }

    private boolean reAuthenticateInternal(final IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        if (!isInitialized()) {
            return false;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new RuntimeException("ReAuthenticate called on Main Thread!");
        }
        AdobeLogger.log(Level.DEBUG, AUTHTAG, "reAuthenticate() called");
        final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsETSAuthEvent.ADOBE_ETS_ENVIRONMENT_REAUTHENTICATE);
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C1Output c1Output = new C1Output();
        Date accessTokenExpirationTime = getIMSService().getAccessTokenExpirationTime();
        if (accessTokenExpirationTime != null && accessTokenExpirationTime.getTime() - new Date().getTime() > 0) {
            AdobeLogger.log(Level.DEBUG, AUTHTAG, "Access token required reauthentication sooner than expected.");
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginNotification, new Observer() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.1LoginObserver
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAuthLoginNotification, this);
                AdobeNotification adobeNotification = (AdobeNotification) obj;
                if (adobeNotification.getInfo() == null || adobeNotification.getInfo().get(AdobeNotification.Error) == null) {
                    c1Output._result = true;
                    AdobeLogger.log(Level.DEBUG, AdobeAuthManager.AUTHTAG, "reAuthenticate() successful");
                    if (iAdobeAuthManagerCallback != null) {
                        iAdobeAuthManagerCallback.onSuccess(AdobeAuthManager.this.getAccessToken());
                    }
                } else {
                    AdobeAuthException adobeAuthException = (AdobeAuthException) adobeNotification.getInfo().get(AdobeNotification.Error);
                    if (adobeAuthException != null && adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED) {
                        AdobeLogger.log(Level.DEBUG, AdobeAuthManager.AUTHTAG, "emergency logout()");
                        adobeAnalyticsETSAuthEvent.trackError(adobeAuthException.getErrorCode(), adobeAuthException.getDescription());
                        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                        AdobeAuthManager.this.handleEmergencyLogOut();
                    }
                    if (iAdobeAuthManagerCallback != null) {
                        iAdobeAuthManagerCallback.onError(adobeAuthException);
                    }
                }
                reentrantLock.lock();
                c1Output.finished = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        });
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthContiuableEventNotification, new Observer() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.1ContinuableObserver
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAuthLoginNotification, this);
                AdobeNotification adobeNotification = (AdobeNotification) obj;
                if (adobeNotification.getInfo() == null || adobeNotification.getInfo().get(AdobeNotification.Error) == null) {
                    c1Output._result = true;
                    AdobeLogger.log(Level.DEBUG, AdobeAuthManager.AUTHTAG, "reAuthenticate() successful");
                    if (iAdobeAuthManagerCallback != null) {
                        iAdobeAuthManagerCallback.onSuccess("reAuthenticate() successful");
                    }
                } else {
                    AdobeAuthException adobeAuthException = (AdobeAuthException) adobeNotification.getInfo().get(AdobeNotification.Error);
                    AdobeLogger.log(Level.DEBUG, AdobeAuthManager.AUTHTAG, "reAuthenticate() failed");
                    if (iAdobeAuthManagerCallback != null) {
                        iAdobeAuthManagerCallback.onError(adobeAuthException);
                    }
                }
                reentrantLock.lock();
                c1Output.finished = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        });
        loginInternal(AdobeAuthInteraction.AdobeAuthInteractionHeadless, false);
        reentrantLock.lock();
        while (!c1Output.finished) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.WARN, AUTHTAG, "Reauthenticate: Can not acquire permit.", e2);
                adobeAnalyticsETSAuthEvent.trackError(AUTHTAG, "Reauthenticate: Can not acquire permit" + e2.getMessage());
            }
        }
        reentrantLock.unlock();
        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
        return c1Output._result;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager$1Output, reason: invalid class name */
    class C1Output {
        boolean finished = false;
        boolean _result = false;

        C1Output() {
        }
    }

    public String getClientID() {
        return getIMSService().getClientID();
    }

    public String getClientSecret() {
        return getIMSService().getClientSecret();
    }

    public Set<String> getEntitlements() {
        return getIMSService().getEntitlements();
    }

    public String getAdobeID() {
        if (getIMSService().getAdobeID() == null) {
            throw new RuntimeException("User information not available. Check if user is Authenticated");
        }
        return getIMSService().getAdobeID();
    }

    public String getAccessToken() {
        if (!hasValidAccessToken()) {
            return null;
        }
        return getIMSService().getAccessToken();
    }

    public void getDeviceTokenFromAccountManger(IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        AdobeCSDKAdobeIdAuthenticatorHelper.getInstance().getSharedAdobeIdTokenFromAccountManager(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext(), (Bundle) null, iAdobeAuthManagerCallback);
    }

    public Account getAccountFromAccountManager() {
        Account[] storedAccounts = AdobeCSDKAdobeIdAuthenticatorHelper.getInstance().getStoredAccounts(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext());
        if (storedAccounts == null || storedAccounts.length <= 0) {
            return null;
        }
        return storedAccounts[0];
    }

    void setSignInClient(IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient) {
        this.mSignInClient = iAdobeAuthIMSSignInClient;
    }

    public IAdobeAuthIMSSignInClient getCurrentSignInClient() {
        return this.mSignInClient;
    }

    public AdobeAuthSessionLauncher getCurrentAuthSessionLauncher() {
        return this._sessionLauncher;
    }

    public void saveAuthInfo(String str, String str2, String str3, Date date, IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        saveAuthInfo(str, str2, str3, date);
        HashMap map = new HashMap();
        AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsETSAuthEvent.ADOBE_ETS_ENVIRONMENT_SAVE_EXISTING_ACCOUNT);
        adobeAnalyticsETSAuthEvent.trackSSO();
        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
        if (AdobeCSDKAdobeIDAccountType.getAccountType() != null) {
            Account[] storedAccounts = AdobeCSDKAdobeIdAuthenticatorHelper.getInstance().getStoredAccounts(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext());
            if (storedAccounts == null) {
                map.put("error_description", "NO ACCOUNTS FOUND");
                AdobeAuthException adobeAuthException = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER, map);
                if (iAdobeAuthManagerCallback != null) {
                    iAdobeAuthManagerCallback.onError(adobeAuthException);
                    return;
                }
                return;
            }
            if (storedAccounts.length > 0) {
                if (iAdobeAuthManagerCallback != null) {
                    iAdobeAuthManagerCallback.onSuccess(storedAccounts[0].name);
                    return;
                }
                return;
            }
            saveAccountDetailsSSO(iAdobeAuthManagerCallback);
        }
    }

    public void resetRefreshToken() {
        getIMSService().resetRefreshToken();
    }

    public void initiateSSO(final IAuthSSOInitCallback iAuthSSOInitCallback) {
        final Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        AdobeCSDKAdobeIdAuthenticatorHelper.getInstance().getSharedAdobeIdTokenFromAccountManager(applicationContext, (Bundle) null, new AdobeCSDKAdobeIdAuthenticatorHelper.ICSDKAdobeIdAuthTokenResultHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.6
            @Override // com.adobe.creativesdk.foundation.internal.auth.AdobeCSDKAdobeIdAuthenticatorHelper.ICSDKAdobeIdAuthTokenResultHandler
            public void handleAuthenticatorTokenResult(AdobeCSDKAdobeIdAuthenticatorHelper.SharedAccountRequestResultData sharedAccountRequestResultData) {
                if (sharedAccountRequestResultData == null || sharedAccountRequestResultData.tokenDetails == null) {
                    iAuthSSOInitCallback.complete();
                    return;
                }
                if (AdobeCSDKAdobeIdAuthenticatorHelper.isSharedDeviceTokenExpired(sharedAccountRequestResultData.tokenDetails)) {
                    AdobeCSDKAdobeIdAuthenticatorHelper.removeCurrentSharedAdobeIDFromAccountManager(applicationContext);
                    iAuthSSOInitCallback.complete();
                    return;
                }
                AdobeAuthManager.this.saveAuthInfo(sharedAccountRequestResultData.tokenDetails.deviceToken, sharedAccountRequestResultData.tokenDetails.adobeId, null, sharedAccountRequestResultData.tokenDetails.deviceExpirationTime);
                iAuthSSOInitCallback.complete();
            }
        });
    }

    private void loginInternal(final AdobeAuthInteraction adobeAuthInteraction, final boolean z) {
        String adobeID = null;
        if (getUserProfile() != null) {
            adobeID = getUserProfile().getAdobeID();
        }
        AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportLoginAttempt, adobeID);
        final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppLogin.getValue());
        adobeAnalyticsETSAuthEvent.trackService(getIMSService().getImsHost(), getIMSService().getLoginAPI(), getIMSService().getLoginAPIVersion());
        IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient = new IAdobeAuthIMSSignInClient() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.7
            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
            public void onSuccess(String str, String str2) {
                AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportValidAuthToken, str);
                adobeAnalyticsETSAuthEvent.trackErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                if (z) {
                    AdobeAuthManager.this.getIMSService().setIDPFlow(AdobeAuthIdentityManagementService.IMS_KEY_INGEST_IDP_IMS);
                }
                AdobeAuthManager.this.postLoginSuccess(z);
                AdobeLogger.log(Level.DEBUG, AdobeAuthManager.AUTHTAG, "Successfully logged in");
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
            public void onError(AdobeAuthException adobeAuthException) {
                if (adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION || adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION || adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UPDATED_TOU) {
                    AdobeAuthManager.this.postContinuableEvent(adobeAuthException);
                    return;
                }
                if (adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED) {
                    adobeAnalyticsETSAuthEvent.trackErrorCode("cancelled");
                } else {
                    adobeAnalyticsETSAuthEvent.trackErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    AdobeLogger.log(Level.DEBUG, AdobeAuthManager.AUTHTAG, "Login Error");
                }
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                AdobeAuthManager.this.postLoginError(z, adobeAuthException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthIMSSignInClient
            public void onInfoNeeded(AdobeAuthIMSInfoNeeded adobeAuthIMSInfoNeeded) {
                if (adobeAuthInteraction == AdobeAuthInteraction.AdobeAuthInteractionInteractive) {
                    if (adobeAuthIMSInfoNeeded == AdobeAuthIMSInfoNeeded.AdobeAuthIMSInfoNeededUsernameAndPassword) {
                        if (AdobeAuthManager.this.getIMSService().getGrantType() != AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeDevice || AdobeAuthManager.this.getIMSService().getDeviceID() != null) {
                            AdobeAuthManager.this.launchSignInActivity(AdobeAuthConstants.AUTH_SESSION_TYPE_SIGN_IN);
                            return;
                        } else {
                            onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED));
                            return;
                        }
                    }
                    onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED));
                    return;
                }
                onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED));
            }

            public void onDismissed() {
                onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED));
            }
        };
        setSignInClient(iAdobeAuthIMSSignInClient);
        getIMSService().signIn(iAdobeAuthIMSSignInClient);
    }

    public boolean hasValidAccessToken() {
        Date accessTokenExpirationTime;
        String accessToken = getIMSService().getAccessToken();
        if (accessToken == null || accessToken.length() <= 0 || (accessTokenExpirationTime = getIMSService().getAccessTokenExpirationTime()) == null) {
            return false;
        }
        if (accessTokenExpirationTime.getTime() - new Date().getTime() > 0) {
            AdobeLogger.log(Level.DEBUG, LOG_TAG, "Inside hasValidAccessToken(inside if) and expireTime=" + accessTokenExpirationTime.toString() + " and current time" + new Date().toString());
            return true;
        }
        AdobeLogger.log(Level.DEBUG, LOG_TAG, "Inside hasValidAccessToken(inside else) and expireTime=" + accessTokenExpirationTime.toString() + " and current time" + new Date().toString());
        return false;
    }

    public boolean canRefreshAccessToken() {
        boolean z;
        Date deviceTokenExpirationTime;
        Date refreshTokenExpirationTime;
        AdobeAuthIdentityManagementService iMSService = getIMSService();
        String deviceToken = iMSService.getDeviceToken();
        String refreshToken = iMSService.getRefreshToken();
        if (refreshToken == null || refreshToken.length() <= 0 || (refreshTokenExpirationTime = getIMSService().getRefreshTokenExpirationTime()) == null) {
            z = false;
        } else {
            z = refreshTokenExpirationTime.getTime() - new Date().getTime() > 0;
            if (z) {
                AdobeLogger.log(Level.DEBUG, LOG_TAG, "Getting access token through refresh token");
            }
        }
        if (!z && deviceToken != null && deviceToken.length() > 0 && (deviceTokenExpirationTime = getIMSService().getDeviceTokenExpirationTime()) != null) {
            z = deviceTokenExpirationTime.getTime() - new Date().getTime() > 0;
            if (z) {
                AdobeLogger.log(Level.DEBUG, LOG_TAG, "Getting access token through device token");
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postLoginError(boolean z, AdobeAuthException adobeAuthException) {
        String adobeID = null;
        if (getUserProfile() != null) {
            adobeID = getUserProfile().getAdobeID();
        }
        if (adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED) {
            AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportLoginCancel, adobeID);
        } else {
            AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportLoginFailure, adobeID);
        }
        HashMap map = new HashMap();
        map.put(AdobeNotification.Error, adobeAuthException);
        AdobeInternalNotificationID adobeInternalNotificationID = AdobeInternalNotificationID.AdobeAuthLoginNotification;
        if (z) {
            adobeInternalNotificationID = AdobeInternalNotificationID.AdobeAuthLoginExternalNotification;
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(adobeInternalNotificationID, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postLoginSuccess(boolean z) {
        AdobeInternalNotificationID adobeInternalNotificationID = AdobeInternalNotificationID.AdobeAuthLoginNotification;
        AdobeAnalyticsSDKReporter.trackAuthStep(AdobeAnalyticsSDKReporter.AdobeAnalyticsAuthReportLoginSuccess, getUserProfile() != null ? getUserProfile().getAdobeID() : null);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(z ? AdobeInternalNotificationID.AdobeAuthLoginExternalNotification : adobeInternalNotificationID, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postContinuableEvent(AdobeAuthException adobeAuthException) {
        HashMap map = new HashMap();
        map.put(AdobeNotification.Error, adobeAuthException);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeAuthContiuableEventNotification, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeAuthIdentityManagementService getIMSService() {
        return AdobeAuthIdentityManagementService.getSharedInstance();
    }

    private Context getApplicationContext() {
        return AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchSignInActivity(int i) {
        boolean z;
        Context launcherContext;
        int i2;
        boolean zShouldUseSharedAccount = false;
        Context launcherActivity = this._sessionLauncher.getLauncherActivity();
        int intentFlags = this._sessionLauncher.getIntentFlags();
        if (launcherActivity == null) {
            int i3 = intentFlags | 268435456;
            z = false;
            launcherContext = this._sessionLauncher.getLauncherContext();
            i2 = i3;
        } else {
            z = true;
            launcherContext = launcherActivity;
            i2 = intentFlags;
        }
        IAuthPostLoginWorkCallback postLoginWorkCallback = this._sessionLauncher.getPostLoginWorkCallback();
        Intent intent = new Intent(launcherContext, (Class<?>) AdobeAuthSignInActivity.class);
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        sharedInstance.setPostLoginWorkCallback(postLoginWorkCallback);
        boolean z2 = sharedInstance.getDeviceID() != null;
        if (!z2) {
            zShouldUseSharedAccount = z2;
        } else if (AdobeUXAuthManagerRestricted.getAccessGroupAccountType() != null) {
            zShouldUseSharedAccount = AdobeCSDKAdobeIDAccountType.shouldUseSharedAccount();
        }
        if (zShouldUseSharedAccount) {
            intent.putExtra(AdobeAuthSignInActivity.UXAUTHMANAGER_TRY_ADOBEID_SHAREDTOKEN, true);
        }
        intent.putExtra(AdobeAuthConstants.SIGN_IN_UI_TYPE, i);
        intent.addFlags(i2);
        if (z) {
            ((Activity) launcherContext).startActivityForResult(intent, this._sessionLauncher.getRequestCode());
        } else {
            launcherContext.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveAuthInfo(String str, String str2, String str3, Date date) {
        getIMSService().setDeviceToken(str);
        getIMSService().setEmailAddress(str3);
        getIMSService().setAdobeID(str2);
        if (date != null) {
            getIMSService().setDeviceTokenExpirationTime(date);
        } else {
            getIMSService().setDeviceTokenDefaultExpiration();
        }
    }

    private boolean isInitialized() {
        return getApplicationContext() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleEmergencyLogOut() {
        new Handler(getApplicationContext().getMainLooper()).post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager.8
            @Override // java.lang.Runnable
            public void run() {
                AdobeLogger.log(Level.DEBUG, AdobeAuthManager.AUTHTAG, "Calling logout() from emergency-logout");
                AdobeAuthManager.this.emergencyLogout = true;
                AdobeAuthManager.this.logout();
            }
        });
    }

    public boolean hasPrivateCloudScope() {
        return this._hasPrivateCloudScope;
    }

    public boolean willAccessTokenBeValidIn(long j) {
        Date accessTokenExpirationTime;
        String accessToken = getIMSService().getAccessToken();
        return accessToken != null && accessToken.length() > 0 && (accessTokenExpirationTime = getIMSService().getAccessTokenExpirationTime()) != null && accessTokenExpirationTime.getTime() > new Date().getTime() + (1000 * j);
    }

    public void setRedirectURI(String str) {
        getIMSService().setRedirectURI(str);
    }
}
