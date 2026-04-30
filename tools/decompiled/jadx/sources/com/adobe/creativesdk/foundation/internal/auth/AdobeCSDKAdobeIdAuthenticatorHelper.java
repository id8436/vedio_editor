package com.adobe.creativesdk.foundation.internal.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorDescription;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.auth.IAdobeAuthManagerCallback;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAuthEvent;
import com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeCSDKAdobeIDAccountType;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.IOException;
import java.util.Date;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Scanner;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCSDKAdobeIdAuthenticatorHelper {
    private static final String ADOBEID_AUTHENTICATOR_ADDACCOUNT_DUETO_SIGNUP_REQUEST = "adbAuth_addaccount_signup_force";
    private static final String ADOBEID_AUTHENTICATOR_ADD_ACCOUNT_AUTHTOKEN = "adbAuth_authtoken";
    private static final String ADOBEID_AUTHENTICATOR_ADD_ACCOUNT_USERNAME = "adbAuth_adobeId";
    private static final int DATA_VERSION = 2;
    private static final int DATE_LEN = 20;
    private static final int NUM_FIELDS = 3;
    private static final int NUM_FIELDS_V1 = 2;
    private static final String T = AdobeCSDKAdobeIdAuthenticatorHelper.class.getSimpleName();
    private static final String TAG = "AdobeCSDKAdobeIdAuthenticatorHelper";
    private static AdobeCSDKAdobeIdAuthenticatorHelper _sInstance;
    private Context _context;

    public interface ICSDKAdobeIdAuthTokenResultHandler {
        void handleAuthenticatorTokenResult(SharedAccountRequestResultData sharedAccountRequestResultData);
    }

    public class TokenDetails {
        public String adobeId;
        public Date deviceExpirationTime;
        public String deviceId;
        public String deviceToken;
    }

    private AdobeCSDKAdobeIdAuthenticatorHelper() {
    }

    public static AdobeCSDKAdobeIdAuthenticatorHelper getInstance() {
        if (_sInstance == null) {
            _sInstance = new AdobeCSDKAdobeIdAuthenticatorHelper();
        }
        return _sInstance;
    }

    public static boolean isAccountManagerHasSharedAdobeIdAccount(Context context) {
        AccountManager accountManager = AccountManager.get(context);
        if (AdobeCSDKAdobeIDAccountType.getAccountType() == null) {
            return false;
        }
        try {
            Account[] accountsByType = accountManager.getAccountsByType(AdobeCSDKAdobeIDAccountType.getAccountType());
            if (accountsByType != null) {
                return accountsByType.length > 0;
            }
            return false;
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, TAG, e2.getMessage(), e2);
            return false;
        }
    }

    public static void removeCurrentSharedAdobeIDFromAccountManager(Context context) {
        AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsETSAuthEvent.ADOBE_ETS_ENVIRONMENT_REMOVE_ACCOUNT);
        adobeAnalyticsETSAuthEvent.trackSSO();
        HashMap map = new HashMap();
        try {
            AccountManager accountManager = AccountManager.get(context);
            Account[] accountsByType = accountManager.getAccountsByType(AdobeCSDKAdobeIDAccountType.getAccountType());
            if (accountsByType != null && accountsByType.length > 0) {
                accountManager.removeAccount(accountsByType[0], null, null);
            }
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, TAG, e2.getMessage(), e2);
            map.put("error_description", e2.getMessage());
            AdobeAuthException adobeAuthException = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, map);
            adobeAnalyticsETSAuthEvent.trackError(adobeAuthException.getErrorCode(), adobeAuthException.getDescription());
        } finally {
            adobeAnalyticsETSAuthEvent.endAndTrackEvent();
        }
    }

    public static boolean isSharedDeviceTokenExpired(TokenDetails tokenDetails) {
        return tokenDetails == null || tokenDetails.deviceExpirationTime == null || tokenDetails.deviceExpirationTime.getTime() - System.currentTimeMillis() < ((long) 10000);
    }

    public Account[] getStoredAccounts(Context context) {
        AccountManager accountManager = AccountManager.get(context);
        if (AdobeCSDKAdobeIDAccountType.getAccountType() == null) {
            return null;
        }
        try {
            return accountManager.getAccountsByType(AdobeCSDKAdobeIDAccountType.getAccountType());
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, TAG, e2.getMessage(), e2);
            return null;
        }
    }

    public void addNewAccountDirectlyToAccountManager(Context context, TokenDetails tokenDetails, boolean z, IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        boolean zCheckAuthenticatorSignature = checkAuthenticatorSignature(context);
        AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppLogin.getValue());
        adobeAnalyticsETSAuthEvent.trackSSO();
        HashMap map = new HashMap();
        if (!zCheckAuthenticatorSignature) {
            AdobeLogger.log(Level.ERROR, T, "authenticator signature !valid");
            adobeAnalyticsETSAuthEvent.trackError("Add Account", "authenticator signature not valid");
            adobeAnalyticsETSAuthEvent.endAndTrackEvent();
            map.put("error_description", "authenticator signature not valid");
            AdobeAuthException adobeAuthException = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_ACCOUNT_SIGNATURE_MISMATCH, map);
            if (iAdobeAuthManagerCallback != null) {
                iAdobeAuthManagerCallback.onError(adobeAuthException);
                return;
            }
            return;
        }
        AccountManager accountManager = AccountManager.get(context);
        Bundle bundle = new Bundle();
        bundle.putString("adbAuth_adobeId", tokenDetails.adobeId);
        bundle.putString("adbAuth_authtoken", createCombinedEncryptedDataOfToken(tokenDetails.deviceId, tokenDetails.deviceToken, tokenDetails.deviceExpirationTime));
        if (z) {
            bundle.putBoolean("adbAuth_addaccount_signup_force", true);
        }
        try {
            AccountManagerFuture<Bundle> accountManagerFutureAddAccount = accountManager.addAccount(AdobeCSDKAdobeIDAccountType.getAccountType(), AdobeCSDKAdobeIDAccountType.ADOBEID_AUTHTOKEN_TYPE, null, bundle, null, null, null);
            if (iAdobeAuthManagerCallback != null) {
                new AddAccountResultAsyncTask(iAdobeAuthManagerCallback).execute(accountManagerFutureAddAccount);
            }
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, TAG, e2.getMessage(), e2);
            adobeAnalyticsETSAuthEvent.trackError("Add Account", e2.getMessage());
            map.put("error_description", e2.getMessage());
            AdobeAuthException adobeAuthException2 = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER, map);
            if (iAdobeAuthManagerCallback != null) {
                iAdobeAuthManagerCallback.onError(adobeAuthException2);
            }
        } finally {
            adobeAnalyticsETSAuthEvent.endAndTrackEvent();
        }
    }

    public void setContext(Context context) {
        this._context = context;
    }

    class AddAccountResultAsyncTask extends AsyncTask<AccountManagerFuture<Bundle>, Void, Boolean> {
        private final IAdobeAuthManagerCallback<String, AdobeAuthException> callback;
        private AdobeAuthException error;
        private HashMap<String, Object> errorData;
        private String errorMsg = "";
        private String accountUser = "";

        AddAccountResultAsyncTask(IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
            this.callback = iAdobeAuthManagerCallback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(AccountManagerFuture<Bundle>... accountManagerFutureArr) {
            Boolean boolValueOf = false;
            try {
                Bundle result = accountManagerFutureArr[0].getResult();
                boolValueOf = Boolean.valueOf(result != null);
                if (boolValueOf.booleanValue()) {
                    this.accountUser = result.get("authAccount") != null ? result.get("authAccount").toString() : "";
                }
                return boolValueOf;
            } catch (AuthenticatorException e2) {
                Boolean bool = boolValueOf;
                this.errorMsg = e2.getMessage();
                e2.printStackTrace();
                return bool;
            } catch (OperationCanceledException e3) {
                Boolean bool2 = boolValueOf;
                this.errorMsg = e3.getMessage();
                e3.printStackTrace();
                return bool2;
            } catch (IOException e4) {
                Boolean bool3 = boolValueOf;
                this.errorMsg = e4.getMessage();
                e4.printStackTrace();
                return bool3;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            if (bool.booleanValue()) {
                this.callback.onSuccess(this.accountUser);
                return;
            }
            this.errorData.put("error_description", this.errorMsg);
            this.error = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER, this.errorData);
            this.callback.onError(this.error);
        }
    }

    private String decryptData(String str) {
        return str;
    }

    private String encryptData(String str) {
        return str;
    }

    private String createCombinedData(String str, String str2, Date date) {
        StringBuilder sb = new StringBuilder();
        new Formatter(sb, Locale.US).format("%d %d %s %d %s", 2, 3, str, Long.valueOf(date.getTime()), str2);
        return sb.toString();
    }

    public String createCombinedEncryptedDataOfToken(String str, String str2, Date date) {
        return encryptData(createCombinedData(str, str2, date));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TokenDetails getTokenDetailsFromData(String str) {
        Scanner scanner;
        int iNextInt;
        if (str == null || (iNextInt = (scanner = new Scanner(decryptData(str))).nextInt()) > 2 || scanner.nextInt() < 2) {
            return null;
        }
        String next = iNextInt == 2 ? scanner.next() : null;
        long jNextLong = scanner.nextLong();
        String strTrim = scanner.next().trim();
        TokenDetails tokenDetails = new TokenDetails();
        tokenDetails.deviceToken = strTrim;
        tokenDetails.deviceExpirationTime = new Date(jNextLong);
        tokenDetails.deviceId = next;
        return tokenDetails;
    }

    public boolean checkAuthenticatorSignature(Context context) {
        boolean z = false;
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(context).getAuthenticatorTypes()) {
            if (authenticatorDescription.type.equalsIgnoreCase(AdobeCSDKAdobeIDAccountType.getAccountType())) {
                z = context.getPackageManager().checkSignatures(context.getApplicationInfo().packageName, authenticatorDescription.packageName) == 0;
            }
        }
        return z;
    }

    public void getSharedAdobeIdTokenFromAccountManager(Activity activity, Bundle bundle, ICSDKAdobeIdAuthTokenResultHandler iCSDKAdobeIdAuthTokenResultHandler) {
        new FetchAuthTokenInBackground(activity, bundle, iCSDKAdobeIdAuthTokenResultHandler).execute(new Void[0]);
    }

    void getSharedAdobeIdTokenFromAccountManager(Context context, Bundle bundle, ICSDKAdobeIdAuthTokenResultHandler iCSDKAdobeIdAuthTokenResultHandler) {
        new FetchAuthTokenInBackground(context, bundle, iCSDKAdobeIdAuthTokenResultHandler).execute(new Void[0]);
    }

    public void getSharedAdobeIdTokenFromAccountManager(Context context, Bundle bundle, final IAdobeAuthManagerCallback<String, AdobeAuthException> iAdobeAuthManagerCallback) {
        new FetchAuthTokenInBackground(context, bundle, new ICSDKAdobeIdAuthTokenResultHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeCSDKAdobeIdAuthenticatorHelper.1
            @Override // com.adobe.creativesdk.foundation.internal.auth.AdobeCSDKAdobeIdAuthenticatorHelper.ICSDKAdobeIdAuthTokenResultHandler
            public void handleAuthenticatorTokenResult(SharedAccountRequestResultData sharedAccountRequestResultData) {
                if (sharedAccountRequestResultData == null) {
                    iAdobeAuthManagerCallback.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER));
                } else if (sharedAccountRequestResultData.requestError != null) {
                    iAdobeAuthManagerCallback.onError(sharedAccountRequestResultData.requestError);
                } else {
                    iAdobeAuthManagerCallback.onSuccess(sharedAccountRequestResultData.tokenDetails.deviceToken);
                }
            }
        }).execute(new Void[0]);
    }

    class FetchAuthTokenInBackground extends AsyncTask<Void, Void, SharedAccountRequestResultData> {
        private Activity activity;
        private Bundle authenticatorOptions;
        private Context context;
        final AdobeAnalyticsETSAuthEvent etsEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppLogin.getValue());
        private ICSDKAdobeIdAuthTokenResultHandler resultHandler;

        FetchAuthTokenInBackground(Activity activity, Bundle bundle, ICSDKAdobeIdAuthTokenResultHandler iCSDKAdobeIdAuthTokenResultHandler) {
            this.activity = activity;
            this.context = activity;
            this.authenticatorOptions = bundle;
            this.resultHandler = iCSDKAdobeIdAuthTokenResultHandler;
        }

        FetchAuthTokenInBackground(Context context, Bundle bundle, ICSDKAdobeIdAuthTokenResultHandler iCSDKAdobeIdAuthTokenResultHandler) {
            this.context = context;
            this.authenticatorOptions = bundle;
            this.resultHandler = iCSDKAdobeIdAuthTokenResultHandler;
        }

        SharedAccountRequestResultData getSharedAdobeIdAuthTokenFromAccountManager() {
            TokenDetails tokenDetails;
            boolean z;
            AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent;
            AdobeAuthException adobeAuthException = null;
            AccountManager accountManager = AccountManager.get(this.context);
            this.etsEvent.trackSSO();
            HashMap map = new HashMap();
            if (AdobeCSDKAdobeIDAccountType.getAccountType() == null) {
                SharedAccountRequestResultData sharedAccountRequestResultData = new SharedAccountRequestResultData();
                map.put("error_description", "AdobeCSDKAdobeIdAuthenticatorHelperAccount Type not set");
                AdobeAuthException adobeAuthException2 = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, map);
                AdobeLogger.log(Level.ERROR, AdobeCSDKAdobeIdAuthenticatorHelper.TAG, adobeAuthException2.getDescription());
                sharedAccountRequestResultData.requestError = adobeAuthException2;
                this.etsEvent.trackError(adobeAuthException2.getErrorCode(), adobeAuthException2.getDescription());
                return sharedAccountRequestResultData;
            }
            Account[] accountsByType = accountManager.getAccountsByType(AdobeCSDKAdobeIDAccountType.getAccountType());
            if (accountsByType == null || accountsByType.length <= 0) {
                map.put("error_description", "account not present");
                AdobeAuthException adobeAuthException3 = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, map);
                AdobeLogger.log(Level.ERROR, AdobeCSDKAdobeIdAuthenticatorHelper.TAG, adobeAuthException3.getDescription());
                this.etsEvent.trackError(adobeAuthException3.getErrorCode(), adobeAuthException3.getDescription());
                this.etsEvent.endAndTrackEvent();
                tokenDetails = null;
                adobeAuthException = adobeAuthException3;
                z = false;
            } else if (AdobeCSDKAdobeIdAuthenticatorHelper.this.checkAuthenticatorSignature(this.context)) {
                try {
                    try {
                        try {
                            try {
                                TokenDetails tokenDetailsFromData = AdobeCSDKAdobeIdAuthenticatorHelper.this.getTokenDetailsFromData((this.activity != null ? accountManager.getAuthToken(accountsByType[0], AdobeCSDKAdobeIDAccountType.ADOBEID_AUTHTOKEN_TYPE, this.authenticatorOptions, this.activity, (AccountManagerCallback<Bundle>) null, (Handler) null) : accountManager.getAuthToken(accountsByType[0], AdobeCSDKAdobeIDAccountType.ADOBEID_AUTHTOKEN_TYPE, this.authenticatorOptions, false, (AccountManagerCallback<Bundle>) null, (Handler) null)).getResult().getString("authtoken"));
                                this.etsEvent.endAndTrackEvent();
                                tokenDetails = tokenDetailsFromData;
                                z = false;
                            } catch (OperationCanceledException e2) {
                                AdobeLogger.log(Level.ERROR, AdobeCSDKAdobeIdAuthenticatorHelper.TAG, e2.getMessage(), e2);
                                map.put("error_description", e2.getMessage());
                                AdobeAuthException adobeAuthException4 = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, map);
                                this.etsEvent.trackError(adobeAuthException4.getErrorCode(), adobeAuthException4.getDescription());
                                this.etsEvent.endAndTrackEvent();
                                z = true;
                                tokenDetails = null;
                                adobeAuthException = adobeAuthException4;
                            }
                        } catch (Exception e3) {
                            AdobeLogger.log(Level.ERROR, AdobeCSDKAdobeIdAuthenticatorHelper.TAG, e3.getMessage(), e3);
                            map.put("error_description", e3.getMessage());
                            AdobeAuthException adobeAuthException5 = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, map);
                            this.etsEvent.trackError(adobeAuthException5.getErrorCode(), adobeAuthException5.getDescription());
                            this.etsEvent.endAndTrackEvent();
                            tokenDetails = null;
                            adobeAuthException = adobeAuthException5;
                            z = false;
                        }
                    } catch (AuthenticatorException e4) {
                        AdobeLogger.log(Level.ERROR, AdobeCSDKAdobeIdAuthenticatorHelper.TAG, e4.getMessage(), e4);
                        map.put("error_description", e4.getMessage());
                        AdobeAuthException adobeAuthException6 = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, map);
                        this.etsEvent.trackError(adobeAuthException6.getErrorCode(), adobeAuthException6.getDescription());
                        this.etsEvent.endAndTrackEvent();
                        tokenDetails = null;
                        adobeAuthException = adobeAuthException6;
                        z = false;
                    } catch (IOException e5) {
                        AdobeLogger.log(Level.ERROR, AdobeCSDKAdobeIdAuthenticatorHelper.TAG, e5.getMessage(), e5);
                        map.put("error_description", e5.getMessage());
                        AdobeAuthException adobeAuthException7 = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, map);
                        this.etsEvent.trackError(adobeAuthException7.getErrorCode(), adobeAuthException7.getDescription());
                        this.etsEvent.endAndTrackEvent();
                        tokenDetails = null;
                        adobeAuthException = adobeAuthException7;
                        z = false;
                    }
                } finally {
                    this.etsEvent.endAndTrackEvent();
                }
            } else {
                map.put("error_description", "authentication failure");
                AdobeAuthException adobeAuthException8 = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, map);
                AdobeLogger.log(Level.ERROR, AdobeCSDKAdobeIdAuthenticatorHelper.TAG, adobeAuthException8.getDescription());
                this.etsEvent.trackError(adobeAuthException8.getErrorCode(), adobeAuthException8.getDescription());
                this.etsEvent.endAndTrackEvent();
                tokenDetails = null;
                adobeAuthException = adobeAuthException8;
                z = false;
            }
            SharedAccountRequestResultData sharedAccountRequestResultData2 = new SharedAccountRequestResultData();
            sharedAccountRequestResultData2.tokenDetails = tokenDetails;
            sharedAccountRequestResultData2.isRequestCancelled = z;
            sharedAccountRequestResultData2.requestError = adobeAuthException;
            if (sharedAccountRequestResultData2.tokenDetails == null && sharedAccountRequestResultData2.requestError == null) {
                map.put("error_description", "result not found");
                AdobeAuthException adobeAuthException9 = new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER, map);
                AdobeLogger.log(Level.ERROR, AdobeCSDKAdobeIdAuthenticatorHelper.TAG, adobeAuthException9.getDescription());
                sharedAccountRequestResultData2.requestError = adobeAuthException9;
                this.etsEvent.trackError(adobeAuthException9.getErrorCode(), adobeAuthException9.getDescription());
            }
            return sharedAccountRequestResultData2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public SharedAccountRequestResultData doInBackground(Void... voidArr) {
            try {
                return getSharedAdobeIdAuthTokenFromAccountManager();
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, AdobeCSDKAdobeIdAuthenticatorHelper.TAG, e2.getMessage(), e2);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(SharedAccountRequestResultData sharedAccountRequestResultData) {
            this.resultHandler.handleAuthenticatorTokenResult(sharedAccountRequestResultData);
        }
    }

    public class SharedAccountRequestResultData {
        boolean isRequestCancelled = false;
        AdobeAuthException requestError;
        TokenDetails tokenDetails;

        SharedAccountRequestResultData() {
        }
    }
}
