package com.adobe.creativesdk.foundation.adobeinternal.auth;

import android.accounts.Account;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeSocialLoginParams;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthOptions;
import com.adobe.creativesdk.foundation.internal.auth.IAuthSSOInitCallback;
import com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeCSDKAdobeIDAccountType;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashMap;
import java.util.Set;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes.dex */
public class AdobeUXAuthManagerRestricted {
    private static final String ACCOUNT_TYPE_NOT_SET_ERROR = "account type is not set";
    private AdobeAuthManager _authManagerImpl;
    private static AdobeUXAuthManagerRestricted sharedInstance = null;
    private static String _accessGroupAccountTypeForSSO = null;
    private static boolean mMockTestMode = false;

    public synchronized void ignoreCCeScope() {
        this._authManagerImpl.ignoreCCeScope();
    }

    private AdobeUXAuthManagerRestricted() {
        this._authManagerImpl = null;
        this._authManagerImpl = AdobeAuthManager.sharedAuthManager();
    }

    public static synchronized AdobeUXAuthManagerRestricted getSharedAuthManagerRestricted() {
        if (sharedInstance == null) {
            sharedInstance = new AdobeUXAuthManagerRestricted();
        }
        return sharedInstance;
    }

    public static void setMockTestMode(boolean z) {
        mMockTestMode = z;
    }

    public void openContinuableAuthenticationEvent(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
        this._authManagerImpl.openContinuableAuthenticationEvent(adobeAuthSessionLauncher);
    }

    public void login(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
        this._authManagerImpl.login(adobeAuthSessionLauncher);
    }

    public void logout() {
        this._authManagerImpl.logout();
    }

    public void socialLogin(AdobeAuthSocialSessionLauncher adobeAuthSocialSessionLauncher) {
        this._authManagerImpl.socialLogin(adobeAuthSocialSessionLauncher);
    }

    public void getSocialProviders(AdobeSocialLoginParams.SocialProvider socialProvider, IAdobeSocialProviderCallback iAdobeSocialProviderCallback) {
        this._authManagerImpl.getSocialProviders(socialProvider, iAdobeSocialProviderCallback);
    }

    public boolean isSocialLoginEnabled(AdobeSocialLoginParams.SocialProvider socialProvider) {
        return this._authManagerImpl.isSocialLoginEnabled(socialProvider);
    }

    public void switchAccount() {
        this._authManagerImpl.switchAccount();
    }

    public boolean isAuthenticated() {
        return this._authManagerImpl.isAuthenticated();
    }

    public AdobeAuthUserProfile getUserProfile() {
        return this._authManagerImpl.getUserProfile();
    }

    public void setAuthenticationEnvironment(AdobeAuthIMSEnvironment adobeAuthIMSEnvironment) {
        this._authManagerImpl.setAuthenticationEnvironment(adobeAuthIMSEnvironment);
    }

    private void setAdditionalAuthenticationParameters(String str, String str2, String str3, AdobeAuthOptions[] adobeAuthOptionsArr, String[] strArr, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        this._authManagerImpl.setAuthenticationParameters(AdobeCSDKFoundation.getClientId(), AdobeCSDKFoundation.getClientSecret(), str, str2, str3, adobeAuthOptionsArr, strArr, bArr);
    }

    public void setAdditionalAuthenticationParameters(String str, String str2, String str3, AdobeAuthOptions[] adobeAuthOptionsArr, String[] strArr) {
        try {
            setAdditionalAuthenticationParameters(str, str2, str3, adobeAuthOptionsArr, strArr, null);
        } catch (InvalidKeyException e2) {
            AdobeLogger.log(Level.WARN, AdobeUXAuthManagerRestricted.class.getName(), "Unable to create cipher with default key", e2);
        } catch (NoSuchAlgorithmException e3) {
            AdobeLogger.log(Level.WARN, AdobeUXAuthManagerRestricted.class.getName(), "Unable to create cipher with default key", e3);
        } catch (NoSuchPaddingException e4) {
            AdobeLogger.log(Level.WARN, AdobeUXAuthManagerRestricted.class.getName(), "Unable to create cipher with default key", e4);
        }
    }

    public void promptForSignUp(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
        this._authManagerImpl.promptForSignUp(adobeAuthSessionLauncher);
    }

    public void refreshAccess() {
        this._authManagerImpl.refreshAccess();
    }

    public boolean reAuthenticate() {
        return this._authManagerImpl.reAuthenticate();
    }

    public boolean reAuthenticate(IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        return this._authManagerImpl.reAuthenticate(iAdobeAuthManagerCallback);
    }

    public String getClientID() {
        String clientId = AdobeCSDKFoundation.getClientId();
        if (clientId == null) {
            return this._authManagerImpl.getClientID();
        }
        return clientId;
    }

    public String getClientSecret() {
        String clientSecret = AdobeCSDKFoundation.getClientSecret();
        if (clientSecret == null) {
            return this._authManagerImpl.getClientSecret();
        }
        return clientSecret;
    }

    public Set<String> getEntitlements() {
        return this._authManagerImpl.getEntitlements();
    }

    public String getAdobeID() {
        return this._authManagerImpl.getAdobeID();
    }

    public String getAccessToken() {
        return this._authManagerImpl.getAccessToken();
    }

    public void getDeviceTokenFromAccountManger(IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        if (AdobeCSDKAdobeIDAccountType.getAccountType() != null) {
            this._authManagerImpl.getDeviceTokenFromAccountManger(iAdobeAuthManagerCallback);
        } else {
            iAdobeAuthManagerCallback.onError(createAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, ACCOUNT_TYPE_NOT_SET_ERROR));
        }
    }

    public Account getAccountFromAccountManager() {
        if (AdobeCSDKAdobeIDAccountType.getAccountType() != null) {
            return this._authManagerImpl.getAccountFromAccountManager();
        }
        return null;
    }

    public static void setAccessGroupAccountType(String str) {
        _accessGroupAccountTypeForSSO = str;
    }

    public static String getAccessGroupAccountType() {
        return _accessGroupAccountTypeForSSO;
    }

    public void saveAuthInfo(String str, String str2, String str3, IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        this._authManagerImpl.saveAuthInfo(str, str2, str3, null, iAdobeAuthManagerCallback);
    }

    public void updateWithNewScopes(String[] strArr) {
        this._authManagerImpl.resetRefreshToken();
        this._authManagerImpl.setAdditionalScopeList(strArr);
    }

    public void initiateSSO(IAuthSSOInitCallback iAuthSSOInitCallback) {
        this._authManagerImpl.initiateSSO(iAuthSSOInitCallback);
    }

    public void saveAuthInfo(String str, String str2, String str3, Date date, IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        this._authManagerImpl.saveAuthInfo(str, str2, str3, date, iAdobeAuthManagerCallback);
    }

    public boolean hasPrivateCloudScope() {
        return this._authManagerImpl.hasPrivateCloudScope();
    }

    public boolean isAdobeApp() {
        return this._authManagerImpl.isAdobeApp();
    }

    public void setAsAdobeApp() {
        this._authManagerImpl.setAsAdobeApp();
    }

    public boolean isFirstPartyApp() {
        return this._authManagerImpl.isFirstPartyApp();
    }

    public boolean hasValidAccessToken() {
        return this._authManagerImpl.willAccessTokenBeValidIn(0L);
    }

    public boolean checkAndCallErrorIfInvalidAccessToken(IAdobeGenericErrorCallback<AdobeAuthException> iAdobeGenericErrorCallback, String str) {
        if (mMockTestMode) {
            return false;
        }
        boolean zHasValidAccessToken = hasValidAccessToken();
        if (!zHasValidAccessToken) {
            if (iAdobeGenericErrorCallback != null) {
                iAdobeGenericErrorCallback.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CREDENTIALS_REQUIRED));
            } else {
                AdobeLogger.log(Level.ERROR, AdobeUXAuthManagerRestricted.class.getSimpleName(), str);
            }
        }
        return !zHasValidAccessToken;
    }

    public boolean checkAndCallErrorIfNotAuthenticated(IAdobeGenericErrorCallback<AdobeAuthException> iAdobeGenericErrorCallback, String str) {
        if (mMockTestMode) {
            return false;
        }
        boolean zIsAuthenticated = isAuthenticated();
        if (!zIsAuthenticated) {
            if (iAdobeGenericErrorCallback != null) {
                iAdobeGenericErrorCallback.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CREDENTIALS_REQUIRED));
            } else {
                AdobeLogger.log(Level.ERROR, AdobeUXAuthManagerRestricted.class.getSimpleName(), str);
            }
        }
        return !zIsAuthenticated;
    }

    private AdobeAuthException createAuthException(AdobeAuthErrorCode adobeAuthErrorCode, String str) {
        HashMap map = new HashMap();
        map.put("error_description", str);
        return new AdobeAuthException(adobeAuthErrorCode, map);
    }
}
