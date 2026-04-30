package com.adobe.creativesdk.foundation.internal.auth.authenticator;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.auth.R;
import com.adobe.creativesdk.foundation.internal.auth.AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCSDKAdobeIDAuthenticatorDC extends AbstractAccountAuthenticator {
    public static final String ADOBEID_AUTHENTICATOR_ADDACCOUNT_DUETO_SIGNUP_REQUEST = "adbAuth_addaccount_signup_force";
    public static final String ADOBEID_AUTHENTICATOR_ADD_ACCOUNT_AUTHTOKEN = "adbAuth_authtoken";
    public static final String ADOBEID_AUTHENTICATOR_ADD_ACCOUNT_USERNAME = "adbAuth_adobeId";
    private static final String ADOBEID_AUTHENTICATOR_AUTH_TOKEN = "adbIdauthtoken_key";
    public static final String ADOBEID_AUTHENTICATOR_DEVICE_TOKEN_SHARED_AES_KEY = "adbAuth_device_token_aes_key";
    public static final String ADOBEID_AUTHENTICATOR_REMOVE_ACCOUNT_EXPLICITLY_REQUEST = "adbAuth_removeaccount";
    public static final String ADOBEID_AUTHENTICATOR_UID = "adbAuth_authenticator_uid";
    private boolean _shouldAllowAccountRemovalInNextCall;
    private Handler handler;
    private final Context mContext;

    public AdobeCSDKAdobeIDAuthenticatorDC(Context context) {
        super(context);
        this._shouldAllowAccountRemovalInNextCall = false;
        this.mContext = context;
        this.handler = new Handler(Looper.getMainLooper());
    }

    public static void LogText(String str) {
        Log.d("AdobeIdDCAuthenticator", str);
    }

    private boolean doesCallerUidSignatureMatchWithThisAuthenticator(int i) {
        if (this.mContext.getPackageManager().checkSignatures(this.mContext.getApplicationInfo().uid, i) != 0) {
            return false;
        }
        return true;
    }

    private boolean checkCallerPermission(Bundle bundle) {
        int i;
        if (bundle == null || (i = bundle.getInt("callerUid", -1)) == -1) {
            return false;
        }
        return doesCallerUidSignatureMatchWithThisAuthenticator(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0084  */
    @Override // android.accounts.AbstractAccountAuthenticator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle addAccount(android.accounts.AccountAuthenticatorResponse r11, java.lang.String r12, java.lang.String r13, java.lang.String[] r14, android.os.Bundle r15) throws android.accounts.NetworkErrorException {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeCSDKAdobeIDAuthenticatorDC.addAccount(android.accounts.AccountAuthenticatorResponse, java.lang.String, java.lang.String, java.lang.String[], android.os.Bundle):android.os.Bundle");
    }

    private void showToast(final String str) {
        this.handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeCSDKAdobeIDAuthenticatorDC.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(AdobeCSDKAdobeIDAuthenticatorDC.this.mContext, str, 1).show();
            }
        });
    }

    private void removeAdobeIDAccount(Account account) {
        LogText("in getAuthToken : Remove AdobeId account request - removing the account");
        this._shouldAllowAccountRemovalInNextCall = true;
        try {
            removeAuthTokenInPreference(account);
            AccountManager.get(this.mContext).removeAccount(account, null, null);
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, e2.getClass().getSimpleName(), e2.getMessage(), e2);
        }
    }

    private String getAuthTokenFromPreference(Account account) {
        return AccountManager.get(this.mContext).getPassword(account);
    }

    private void removeAuthTokenInPreference(Account account) {
        AccountManager accountManager = AccountManager.get(this.mContext);
        accountManager.invalidateAuthToken(account.type, null);
        accountManager.setPassword(account, null);
    }

    private void storeAuthTokenInPreference(Account account, String str) {
        AccountManager.get(this.mContext).setPassword(account, str);
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public String getAuthTokenLabel(String str) {
        return this.mContext.getResources().getString(R.string.adobe_csdk_id_authenticator_accesslabel);
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) throws NetworkErrorException {
        Bundle bundle = new Bundle();
        bundle.putBoolean("booleanResult", false);
        return bundle;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
        LogText("in getAuthToken : fetch token");
        boolean zCheckCallerPermission = checkCallerPermission(bundle);
        if (!zCheckCallerPermission || !str.equals(AdobeCSDKAdobeIDAccountType.ADOBEID_AUTHTOKEN_TYPE)) {
            LogText("in getAuthToken : FAILING due to permission check");
            Bundle bundle2 = new Bundle();
            bundle2.putInt("errorCode", 7);
            bundle2.putString("errorMessage", !zCheckCallerPermission ? "caller UID Different" : "invalid authTokenType");
            return bundle2;
        }
        Bundle bundle3 = new Bundle();
        LogText("in getAuthToken : Try getting authtoken from preference");
        String authTokenFromPreference = getAuthTokenFromPreference(account);
        if (!TextUtils.isEmpty(authTokenFromPreference)) {
            LogText("in getAuthToken : seems to have a Valid Token");
            bundle3.putString("authAccount", account.name);
            bundle3.putString("accountType", account.type);
            bundle3.putString("authtoken", authTokenFromPreference);
            bundle3.putString("adbAuth_device_token_aes_key", AdobeCSDKAuthSharedDeviceTokenAESKeyMgr.getInstance().getDeviceTokenSharedAESKey());
            bundle3.putInt("adbAuth_authenticator_uid", this.mContext.getApplicationInfo().uid);
            return bundle3;
        }
        LogText("in getAuthToken : auth Token not present in preference");
        bundle3.putInt("errorCode", 9);
        return bundle3;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) throws NetworkErrorException {
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str) {
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
        return null;
    }
}
