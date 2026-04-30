package com.dropbox.core.android;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.dropbox.core.DbxRequestUtil;
import com.google.common.primitives.UnsignedBytes;
import com.google.gdata.client.authn.oauth.OAuthParameters;
import java.security.SecureRandom;
import java.util.List;
import java.util.Locale;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public class AuthActivity extends Activity {
    public static final String ACTION_AUTHENTICATE_V1 = "com.dropbox.android.AUTHENTICATE_V1";
    public static final String ACTION_AUTHENTICATE_V2 = "com.dropbox.android.AUTHENTICATE_V2";
    public static final String AUTH_PATH_CONNECT = "/connect";
    public static final int AUTH_VERSION = 1;
    public static final String EXTRA_ACCESS_SECRET = "ACCESS_SECRET";
    public static final String EXTRA_ACCESS_TOKEN = "ACCESS_TOKEN";
    public static final String EXTRA_ALREADY_AUTHED_UIDS = "ALREADY_AUTHED_UIDS";
    public static final String EXTRA_AUTH_STATE = "AUTH_STATE";
    public static final String EXTRA_CALLING_CLASS = "CALLING_CLASS";
    public static final String EXTRA_CALLING_PACKAGE = "CALLING_PACKAGE";
    public static final String EXTRA_CONSUMER_KEY = "CONSUMER_KEY";
    public static final String EXTRA_CONSUMER_SIG = "CONSUMER_SIG";
    public static final String EXTRA_DESIRED_UID = "DESIRED_UID";
    public static final String EXTRA_SESSION_ID = "SESSION_ID";
    public static final String EXTRA_UID = "UID";
    private static final String SIS_KEY_AUTH_STATE_NONCE = "SIS_KEY_AUTH_STATE_NONCE";
    private static String[] sAlreadyAuthedUids;
    private static String sApiType;
    private static String sAppKey;
    private static String sDesiredUid;
    private static String sSessionId;
    private String[] mAlreadyAuthedUids;
    private String mApiType;
    private String mAppKey;
    private String mDesiredUid;
    private String mSessionId;
    private String mWebHost;
    private static final String TAG = AuthActivity.class.getName();
    private static SecurityProvider sSecurityProvider = new SecurityProvider() { // from class: com.dropbox.core.android.AuthActivity.1
        @Override // com.dropbox.core.android.AuthActivity.SecurityProvider
        public SecureRandom getSecureRandom() {
            return FixedSecureRandom.get();
        }
    };
    private static final Object sSecurityProviderLock = new Object();
    public static Intent result = null;
    private static final String DEFAULT_WEB_HOST = "www.dropbox.com";
    private static String sWebHost = DEFAULT_WEB_HOST;
    private String mAuthStateNonce = null;
    private boolean mActivityDispatchHandlerPosted = false;

    public interface SecurityProvider {
        SecureRandom getSecureRandom();
    }

    static void setAuthParams(String str, String str2, String[] strArr) {
        setAuthParams(str, str2, strArr, null);
    }

    static void setAuthParams(String str, String str2, String[] strArr, String str3, String str4) {
        setAuthParams(str, str2, strArr, null, null, null);
    }

    static void setAuthParams(String str, String str2, String[] strArr, String str3) {
        setAuthParams(str, str2, strArr, str3, null, null);
    }

    static void setAuthParams(String str, String str2, String[] strArr, String str3, String str4, String str5) {
        sAppKey = str;
        sDesiredUid = str2;
        if (strArr == null) {
            strArr = new String[0];
        }
        sAlreadyAuthedUids = strArr;
        sSessionId = str3;
        if (str4 == null) {
            str4 = DEFAULT_WEB_HOST;
        }
        sWebHost = str4;
        sApiType = str5;
    }

    public static Intent makeIntent(Context context, String str, String str2, String str3) {
        return makeIntent(context, str, null, null, null, str2, str3);
    }

    public static Intent makeIntent(Context context, String str, String str2, String[] strArr, String str3, String str4, String str5) {
        if (str == null) {
            throw new IllegalArgumentException("'appKey' can't be null");
        }
        setAuthParams(str, str2, strArr, str3, str4, str5);
        return new Intent(context, (Class<?>) AuthActivity.class);
    }

    public static boolean checkAppBeforeAuth(Context context, String str, boolean z) {
        Intent intent = new Intent("android.intent.action.VIEW");
        String str2 = "db-" + str;
        intent.setData(Uri.parse(str2 + "://1" + AUTH_PATH_CONNECT));
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (listQueryIntentActivities == null || listQueryIntentActivities.size() == 0) {
            throw new IllegalStateException("URI scheme in your app's manifest is not set up correctly. You should have a " + AuthActivity.class.getName() + " with the scheme: " + str2);
        }
        if (listQueryIntentActivities.size() > 1) {
            if (z) {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle("Security alert");
                builder.setMessage("Another app on your phone may be trying to pose as the app you are currently using. The malicious app can't access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com.");
                builder.setPositiveButton(HttpStatus.OK, new DialogInterface.OnClickListener() { // from class: com.dropbox.core.android.AuthActivity.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                });
                builder.show();
                return false;
            }
            Log.w(TAG, "There are multiple apps registered for the AuthActivity URI scheme (" + str2 + ").  Another app may be trying to  impersonate this app, so authentication will be disabled.");
            return false;
        }
        ResolveInfo resolveInfo = listQueryIntentActivities.get(0);
        if (resolveInfo == null || resolveInfo.activityInfo == null || !context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
            throw new IllegalStateException("There must be a " + AuthActivity.class.getName() + " within your app's package registered for your URI scheme (" + str2 + "). However, it appears that an activity in a different package is registered for that scheme instead. If you have multiple apps that all want to use the same accesstoken pair, designate one of them to do authentication and have the other apps launch it and then retrieve the token pair from it.");
        }
        return true;
    }

    public static void setSecurityProvider(SecurityProvider securityProvider) {
        synchronized (sSecurityProviderLock) {
            sSecurityProvider = securityProvider;
        }
    }

    private static SecurityProvider getSecurityProvider() {
        SecurityProvider securityProvider;
        synchronized (sSecurityProviderLock) {
            securityProvider = sSecurityProvider;
        }
        return securityProvider;
    }

    private static SecureRandom getSecureRandom() {
        SecurityProvider securityProvider = getSecurityProvider();
        return securityProvider != null ? securityProvider.getSecureRandom() : new SecureRandom();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.mAppKey = sAppKey;
        this.mWebHost = sWebHost;
        this.mApiType = sApiType;
        this.mDesiredUid = sDesiredUid;
        this.mAlreadyAuthedUids = sAlreadyAuthedUids;
        this.mSessionId = sSessionId;
        if (bundle == null) {
            result = null;
            this.mAuthStateNonce = null;
        } else {
            this.mAuthStateNonce = bundle.getString(SIS_KEY_AUTH_STATE_NONCE);
        }
        setTheme(R.style.Theme.Translucent.NoTitleBar);
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(SIS_KEY_AUTH_STATE_NONCE, this.mAuthStateNonce);
    }

    static Intent getOfficialAuthIntent() {
        Intent intent = new Intent(ACTION_AUTHENTICATE_V2);
        intent.setPackage("com.dropbox.android");
        return intent;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!isFinishing()) {
            if (this.mAuthStateNonce != null || this.mAppKey == null) {
                authFinished(null);
                return;
            }
            result = null;
            if (this.mActivityDispatchHandlerPosted) {
                Log.w(TAG, "onResume called again before Handler run");
                return;
            }
            final String strCreateStateNonce = createStateNonce();
            final Intent officialAuthIntent = getOfficialAuthIntent();
            officialAuthIntent.putExtra(EXTRA_CONSUMER_KEY, this.mAppKey);
            officialAuthIntent.putExtra(EXTRA_CONSUMER_SIG, "");
            officialAuthIntent.putExtra(EXTRA_DESIRED_UID, this.mDesiredUid);
            officialAuthIntent.putExtra(EXTRA_ALREADY_AUTHED_UIDS, this.mAlreadyAuthedUids);
            officialAuthIntent.putExtra(EXTRA_SESSION_ID, this.mSessionId);
            officialAuthIntent.putExtra(EXTRA_CALLING_PACKAGE, getPackageName());
            officialAuthIntent.putExtra(EXTRA_CALLING_CLASS, getClass().getName());
            officialAuthIntent.putExtra(EXTRA_AUTH_STATE, strCreateStateNonce);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.dropbox.core.android.AuthActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(AuthActivity.TAG, "running startActivity in handler");
                    try {
                        if (DbxOfficialAppConnector.getDropboxAppPackage(AuthActivity.this, officialAuthIntent) == null) {
                            AuthActivity.this.startWebAuth(strCreateStateNonce);
                        } else {
                            AuthActivity.this.startActivity(officialAuthIntent);
                        }
                        AuthActivity.this.mAuthStateNonce = strCreateStateNonce;
                        AuthActivity.setAuthParams(null, null, null);
                    } catch (ActivityNotFoundException e2) {
                        Log.e(AuthActivity.TAG, "Could not launch intent. User may have restricted profile", e2);
                        AuthActivity.this.finish();
                    }
                }
            });
            this.mActivityDispatchHandlerPosted = true;
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        String stringExtra;
        String stringExtra2;
        String stringExtra3;
        String stringExtra4;
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        Intent intent2 = null;
        if (this.mAuthStateNonce == null) {
            authFinished(null);
            return;
        }
        if (intent.hasExtra(EXTRA_ACCESS_TOKEN)) {
            stringExtra4 = intent.getStringExtra(EXTRA_ACCESS_TOKEN);
            stringExtra3 = intent.getStringExtra("ACCESS_SECRET");
            stringExtra2 = intent.getStringExtra(EXTRA_UID);
            stringExtra = intent.getStringExtra(EXTRA_AUTH_STATE);
        } else {
            Uri data = intent.getData();
            if (data == null || !AUTH_PATH_CONNECT.equals(data.getPath())) {
                stringExtra = null;
                stringExtra2 = null;
                stringExtra3 = null;
                stringExtra4 = null;
            } else {
                try {
                    queryParameter3 = data.getQueryParameter(OAuthParameters.OAUTH_TOKEN_KEY);
                    try {
                        queryParameter2 = data.getQueryParameter(OAuthParameters.OAUTH_TOKEN_SECRET_KEY);
                        try {
                            queryParameter = data.getQueryParameter("uid");
                        } catch (UnsupportedOperationException e2) {
                            queryParameter = null;
                        }
                    } catch (UnsupportedOperationException e3) {
                        queryParameter = null;
                        queryParameter2 = null;
                    }
                } catch (UnsupportedOperationException e4) {
                    queryParameter = null;
                    queryParameter2 = null;
                    queryParameter3 = null;
                }
                try {
                    String queryParameter4 = data.getQueryParameter("state");
                    stringExtra4 = queryParameter3;
                    stringExtra3 = queryParameter2;
                    stringExtra2 = queryParameter;
                    stringExtra = queryParameter4;
                } catch (UnsupportedOperationException e5) {
                    stringExtra4 = queryParameter3;
                    stringExtra3 = queryParameter2;
                    stringExtra2 = queryParameter;
                    stringExtra = null;
                }
            }
        }
        if (stringExtra4 != null && !stringExtra4.equals("") && stringExtra3 != null && !stringExtra3.equals("") && stringExtra2 != null && !stringExtra2.equals("") && stringExtra != null && !stringExtra.equals("")) {
            if (!this.mAuthStateNonce.equals(stringExtra)) {
                authFinished(null);
                return;
            }
            intent2 = new Intent();
            intent2.putExtra(EXTRA_ACCESS_TOKEN, stringExtra4);
            intent2.putExtra("ACCESS_SECRET", stringExtra3);
            intent2.putExtra(EXTRA_UID, stringExtra2);
        }
        authFinished(intent2);
    }

    private void authFinished(Intent intent) {
        result = intent;
        this.mAuthStateNonce = null;
        setAuthParams(null, null, null);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWebAuth(String str) {
        Locale locale = Locale.getDefault();
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(DbxRequestUtil.buildUrlWithParams(new Locale(locale.getLanguage(), locale.getCountry()).toString(), this.mWebHost, "1/connect", new String[]{"k", this.mAppKey, "n", this.mAlreadyAuthedUids.length > 0 ? this.mAlreadyAuthedUids[0] : "0", "api", this.mApiType, "state", str}))));
    }

    private String createStateNonce() {
        byte[] bArr = new byte[16];
        getSecureRandom().nextBytes(bArr);
        StringBuilder sb = new StringBuilder();
        sb.append("oauth2:");
        for (int i = 0; i < 16; i++) {
            sb.append(String.format("%02x", Integer.valueOf(bArr[i] & UnsignedBytes.MAX_VALUE)));
        }
        return sb.toString();
    }
}
