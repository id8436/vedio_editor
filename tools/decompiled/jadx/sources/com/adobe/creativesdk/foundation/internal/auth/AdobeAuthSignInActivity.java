package com.adobe.creativesdk.foundation.internal.auth;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.auth.IAuthPostLoginWorkCallback;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAuthEvent;
import com.adobe.creativesdk.foundation.internal.auth.AdobeCSDKAdobeIdAuthenticatorHelper;
import com.adobe.creativesdk.foundation.internal.base.AdobeCSDKBaseActivity;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonErrorViewFragment;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.net.URL;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthSignInActivity extends AdobeCSDKBaseActivity implements ActivityCompat.OnRequestPermissionsResultCallback {
    public static final String UXAUTHMANAGER_TRY_ADOBEID_SHAREDTOKEN = "uxauth_trysharedtoken";
    private AdobeAuthSignInFragment _signInFragment;
    private IAuthPostLoginWorkCallback postAuthWorkCallback;
    String signInFragmentTag = "SignInfragment";
    private static final String T = AdobeAuthSignInActivity.class.getSimpleName();
    private static boolean _activityClosedDueToManualClose = false;

    public static boolean isLastActivityClosedDuetoManualClose() {
        return _activityClosedDueToManualClose;
    }

    static void sendResultBack(AdobeAuthException adobeAuthException) {
        IAdobeAuthIMSSignInClient currentSignInClient = AdobeAuthManager.sharedAuthManager().getCurrentSignInClient();
        if (currentSignInClient != null) {
            if (adobeAuthException != null) {
                currentSignInClient.onError(adobeAuthException);
            } else {
                AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
                currentSignInClient.onSuccess(sharedInstance.getAdobeID(), sharedInstance.getAccessToken());
            }
        }
    }

    public static void addNewAccountToAccountManager(AdobeCSDKAdobeIdAuthenticatorHelper.TokenDetails tokenDetails) {
        if (tokenDetails.deviceToken != null && tokenDetails.adobeId != null) {
            AdobeCSDKAdobeIdAuthenticatorHelper.getInstance().addNewAccountDirectlyToAccountManager(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext(), tokenDetails, false, null);
        } else {
            AdobeLogger.log(Level.ERROR, T, "Add account NUll - check this");
        }
    }

    void handleResult(AdobeAuthException adobeAuthException) {
        prepareAndSendResult(adobeAuthException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareAndSendResult(AdobeAuthException adobeAuthException) {
        Intent intent = new Intent();
        if (adobeAuthException != null) {
            intent.putExtra(AdobeAuthConstants.AUTH_ERROR_CODE, adobeAuthException.getErrorCode().getValue());
            if (adobeAuthException.getErrorCode() == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED) {
                setResult(0, intent);
            } else {
                setResult(-1, intent);
            }
            sendResultBack(adobeAuthException);
            finish();
            return;
        }
        intent.putExtra(AdobeAuthConstants.AUTH_ERROR_CODE, 0);
        doPostAuthWork(intent, adobeAuthException);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.adobe.creativesdk.foundation.internal.auth.AdobeAuthSignInActivity$1] */
    private void doPostAuthWork(final Intent intent, final AdobeAuthException adobeAuthException) {
        if (this.postAuthWorkCallback != null) {
            new AsyncTask<Void, Void, Boolean>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthSignInActivity.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public Boolean doInBackground(Void... voidArr) {
                    return AdobeAuthSignInActivity.this.postAuthWorkCallback.doPostLoginWork();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public void onPostExecute(Boolean bool) {
                    super.onPostExecute(bool);
                    if (bool.booleanValue()) {
                        AdobeAuthSignInActivity.this.postAuthWorkCallback.onSucess();
                    } else {
                        AdobeAuthSignInActivity.this.postAuthWorkCallback.onError();
                    }
                    AdobeAuthSignInActivity.this.setResult(-1, intent);
                    AdobeAuthSignInActivity.sendResultBack(adobeAuthException);
                    AdobeAuthSignInActivity.this.finish();
                }
            }.execute(new Void[0]);
            return;
        }
        setResult(-1, intent);
        sendResultBack(adobeAuthException);
        finish();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        _activityClosedDueToManualClose = false;
        if (!AdobeAuthManager.isInstanceCreated()) {
            finish();
        }
        AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(this);
        this.postAuthWorkCallback = AdobeAuthIdentityManagementService.getSharedInstance().getPostLoginWorkCallback();
        getWindow().setSoftInputMode(16);
        super.onCreate(bundle);
        setContentView(R.layout.adobe_csdk_ux_auth_activity_container_view);
        CookieSyncManager.createInstance(this);
        CookieManager.getInstance().removeAllCookie();
        Toolbar toolbar = (Toolbar) findViewById(R.id.adobe_csdk_actionbar_toolbar);
        toolbar.setContentInsetsRelative(getResources().getDimensionPixelSize(R.dimen.abc_action_bar_content_inset_material), 0);
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowHomeEnabled(false);
            supportActionBar.setDisplayHomeAsUpEnabled(false);
        }
        AdobeCSDKActionBarController.setTitle(findViewById(android.R.id.content), getString(R.string.adobe_csdk_auth_sign_in_close));
        AdobeCSDKActionBarController.getTextView(findViewById(android.R.id.content)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthSignInActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean unused = AdobeAuthSignInActivity._activityClosedDueToManualClose = true;
                AdobeAuthSignInActivity.this.prepareAndSendResult(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED));
                AdobeAuthSignInActivity.this.finish();
            }
        });
        getSupportActionBar().setTitle("");
        launchAuthSignInFragment();
    }

    private void launchAuthSignInFragment() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        AdobeAuthSignInFragment adobeAuthSignInFragment = (AdobeAuthSignInFragment) supportFragmentManager.findFragmentByTag(this.signInFragmentTag);
        if (adobeAuthSignInFragment == null) {
            AdobeAuthSignInFragment adobeAuthSignInFragment2 = new AdobeAuthSignInFragment();
            this._signInFragment = adobeAuthSignInFragment2;
            AuthResultHandler authResultHandlerCreateResultHandler = createResultHandler();
            authResultHandlerCreateResultHandler.setAuthSingInActivity(this);
            adobeAuthSignInFragment2.setSignInResultHandler(authResultHandlerCreateResultHandler);
            supportFragmentManager.beginTransaction().add(R.id.adobe_csdk_creativesdk_foundation_auth_fragment_container, adobeAuthSignInFragment2, this.signInFragmentTag).commitAllowingStateLoss();
            int i = getIntent().getExtras().getInt(AdobeAuthConstants.SIGN_IN_UI_TYPE, AdobeAuthConstants.AUTH_SESSION_TYPE_SIGN_IN);
            adobeAuthSignInFragment2.setUIType(i);
            adobeAuthSignInFragment2.trySignInViaSharedAdobeIdAuthToken(shouldTrySharedToken() && i == AdobeAuthConstants.AUTH_SESSION_TYPE_SIGN_IN);
            return;
        }
        this._signInFragment = adobeAuthSignInFragment;
        AuthResultHandler signInResultHandler = adobeAuthSignInFragment.getSignInResultHandler();
        if (signInResultHandler == null) {
            AuthResultHandler authResultHandlerCreateResultHandler2 = createResultHandler();
            authResultHandlerCreateResultHandler2.setAuthSingInActivity(this);
            adobeAuthSignInFragment.setSignInResultHandler(authResultHandlerCreateResultHandler2);
            int i2 = getIntent().getExtras().getInt(AdobeAuthConstants.SIGN_IN_UI_TYPE, AdobeAuthConstants.AUTH_SESSION_TYPE_SIGN_IN);
            adobeAuthSignInFragment.setUIType(i2);
            adobeAuthSignInFragment.trySignInViaSharedAdobeIdAuthToken(shouldTrySharedToken() && i2 == AdobeAuthConstants.AUTH_SESSION_TYPE_SIGN_IN);
            return;
        }
        signInResultHandler.setAuthSingInActivity(this);
        if (signInResultHandler.hasAnyQueuedResult()) {
            signInResultHandler.processQueuedResult();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        launchAuthSignInFragment();
    }

    private void checkAccountPermission() {
        if (ActivityCompat.checkSelfPermission(this, "android.permission.GET_ACCOUNTS") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.GET_ACCOUNTS"}, 0);
        } else {
            launchAuthSignInFragment();
        }
    }

    private AuthResultHandler createResultHandler() {
        if (shouldTrySharedToken()) {
            return new AuthResultHandlerForTryingSSO();
        }
        return new AuthResultHandlerForSingleClient();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            prepareAndSendResult(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED));
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            AdobeAuthSignInFragment adobeAuthSignInFragment = (AdobeAuthSignInFragment) getSupportFragmentManager().findFragmentByTag(this.signInFragmentTag);
            if (adobeAuthSignInFragment != null && adobeAuthSignInFragment.shouldHandleBackPressed()) {
                adobeAuthSignInFragment.handleBackPressed();
                return true;
            }
            prepareAndSendResult(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED));
        }
        return super.onKeyDown(i, keyEvent);
    }

    private boolean shouldTrySharedToken() {
        return getIntent().getExtras().getBoolean(UXAUTHMANAGER_TRY_ADOBEID_SHAREDTOKEN, false);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this._signInFragment != null) {
            this._signInFragment.getSignInResultHandler().setAuthSingInActivity(null);
        }
    }

    public void noSharedAccountContinueNormalSignIn() {
        this._signInFragment.trySignInViaSharedAdobeIdAuthToken(false);
        this._signInFragment.performWork();
    }

    public class AdobeAuthSignInFragment extends Fragment {
        private static final String TAG = "AdobeAuthSignInFragment";
        private AuthResultHandler _authResultHandler;
        boolean _errorCondition;
        private SharedAdobeIdTokenAccessor _sharedAdobeIdTokenAccessor;
        private boolean _shouldTrySignInViaSharedAdobeIdAuthToken;
        private ViewGroup mAuthViewContainer;
        private WebView mAuthWebView;
        AdobeCommonErrorViewFragment mErrorFragment;
        private View mErrorView;
        private ProgressBar mProgressBar;
        private AuthWebViewClient mWebViewClient;
        NetWorkObserver _netObserver = null;
        String postRequestResponse = null;
        int _uiType = AdobeAuthConstants.AUTH_SESSION_TYPE_SIGN_IN;
        boolean _loaded = false;
        boolean _proxyRequired = false;
        boolean _proxyCredsEntered = false;
        private AdobeNetworkReachability _netReachability = null;
        private Boolean tokenReceived = false;

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setRetainInstance(true);
        }

        @Override // android.support.v4.app.Fragment
        public void onDestroy() {
            if (this.mAuthWebView != null) {
                this.mAuthWebView.stopLoading();
            }
            super.onDestroy();
        }

        @Override // android.support.v4.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View viewInflate = layoutInflater.inflate(R.layout.adobe_csdk_ux_auth_fragment_view, viewGroup, false);
            if (shouldTrySignInThrouhgSharedAdobeIdAuthToken()) {
                this._sharedAdobeIdTokenAccessor = new SharedAdobeIdTokenAccessor();
            }
            return viewInflate;
        }

        boolean shouldTrySignInThrouhgSharedAdobeIdAuthToken() {
            return this._shouldTrySignInViaSharedAdobeIdAuthToken;
        }

        private void showWebviewWithSignInUpUrl() {
            if (this.mAuthWebView == null) {
                CookieManager.getInstance().removeAllCookie();
                this.mAuthWebView = new WebView(getActivity());
                this.mAuthWebView.setClipChildren(false);
                ViewCompat.setLayerType(this.mAuthWebView, 1, null);
                this.mAuthWebView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                this.mAuthWebView.getSettings().setLoadWithOverviewMode(true);
                this.mAuthWebView.getSettings().setJavaScriptEnabled(true);
                this.mAuthViewContainer.addView(this.mAuthWebView);
                this.mWebViewClient = new AuthWebViewClient(this);
                this.mWebViewClient.setAuthResultHandler(this._authResultHandler);
                this.mAuthWebView.setWebViewClient(this.mWebViewClient);
            }
        }

        @Override // android.support.v4.app.Fragment
        public void onViewCreated(View view, @Nullable Bundle bundle) {
            super.onViewCreated(view, bundle);
            this.mAuthViewContainer = (ViewGroup) view.findViewById(R.id.adobe_csdk_creativesdk_foundation_auth_webview_container);
            FragmentManager fragmentManager = getFragmentManager();
            if (this.mAuthWebView != null) {
                this.mAuthViewContainer.addView(this.mAuthWebView);
                this.mAuthWebView.setWebViewClient(this.mWebViewClient);
            }
            if (!shouldTrySignInThrouhgSharedAdobeIdAuthToken()) {
                showWebviewWithSignInUpUrl();
            }
            this.mErrorFragment = new AdobeCommonErrorViewFragment();
            fragmentManager.beginTransaction().replace(R.id.adobe_csdk_creativesdk_foundation_auth_signin_error, this.mErrorFragment).commit();
            this.mProgressBar = (ProgressBar) view.findViewById(R.id.adobe_csdk_creativesdk_foundation_auth_progressBar);
            this.mErrorView = view.findViewById(R.id.adobe_csdk_creativesdk_foundation_auth_signin_error);
            this._netReachability = AdobeNetworkReachabilityUtil.getSharedInstance();
        }

        @Override // android.support.v4.app.Fragment
        public void onSaveInstanceState(Bundle bundle) {
            super.onSaveInstanceState(bundle);
        }

        @Override // android.support.v4.app.Fragment
        public void onViewStateRestored(@Nullable Bundle bundle) {
            super.onViewStateRestored(bundle);
        }

        @Override // android.support.v4.app.Fragment
        public void onDestroyView() {
            String str = null;
            this._netReachability = null;
            try {
                if (this.mAuthWebView != null) {
                    this.mAuthViewContainer.removeView(this.mAuthWebView);
                    this.mAuthWebView.setWebViewClient(null);
                }
            } catch (IllegalArgumentException e2) {
                str = "WebViewDestroyIllegalArgumentException" + (e2.getMessage() != null ? e2.getMessage() : "");
                AdobeLogger.log(Level.ERROR, "Authentication", str);
            } catch (Exception e3) {
                str = "WebViewDestroyException" + (e3.getMessage() != null ? e3.getMessage() : "");
                AdobeLogger.log(Level.ERROR, "Authentication", str);
            }
            if (!TextUtils.isEmpty(str)) {
                AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppLogin.getValue());
                adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_WEB_VIEW, str);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
            }
            super.onDestroyView();
        }

        public void setUIType(int i) {
            this._uiType = i;
        }

        public void setPostRequestResponse(String str) {
            this.postRequestResponse = str;
        }

        public boolean shouldHandleBackPressed() {
            return this.mAuthWebView != null && this.mAuthWebView.getVisibility() == 0 && this.mErrorView.getVisibility() != 0 && this.mAuthWebView.canGoBack();
        }

        public void handleBackPressed() {
            if (this.mAuthWebView != null) {
                this.mAuthWebView.goBack();
            }
        }

        @Override // android.support.v4.app.Fragment
        public void onStart() {
            super.onStart();
            this._netObserver = new NetWorkObserver();
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this._netObserver);
            this._netReachability.startNotification(getActivity());
            if (this._netReachability.isOnline()) {
                _cameOnline();
            } else {
                _wentOffline();
            }
            AdobeLogger.log(Level.INFO, "Authentication", "Started SignIn page");
        }

        @Override // android.support.v4.app.Fragment
        public void onStop() {
            super.onStop();
            AdobeNetworkReachabilityUtil.destorySharedInstance();
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this._netObserver);
            this._netObserver = null;
            AdobeLogger.log(Level.INFO, "Authentication", "Stopped SignIn page");
        }

        URL getSignInOrSignUpUrl() {
            if (this._uiType == AdobeAuthConstants.AUTH_SESSION_TYPE_SIGN_UP) {
                return AdobeAuthIdentityManagementService.getSharedInstance().getSignUpURL();
            }
            if (this._uiType == AdobeAuthConstants.AUTH_SESSION_SOCIAL_TYPE_SIGN_IN) {
                return AdobeAuthIdentityManagementService.getSharedInstance().getAuthURL();
            }
            return AdobeAuthIdentityManagementService.getSharedInstance().getSignInURL();
        }

        private void _loadURL() {
            if ((this._proxyRequired && (!this._proxyRequired || !this._proxyCredsEntered)) || !this._loaded) {
                this._loaded = true;
                this.mAuthWebView.setVisibility(8);
                URL signInOrSignUpUrl = getSignInOrSignUpUrl();
                this._proxyRequired = false;
                this._proxyCredsEntered = false;
                if (this._uiType == AdobeAuthConstants.AUTH_SESSION_SOCIAL_TYPE_SIGN_IN) {
                    String socialSignInData = AdobeAuthIdentityManagementService.getSharedInstance().getSocialSignInData();
                    if (socialSignInData == null) {
                        socialSignInData = "";
                    }
                    this.mAuthWebView.postUrl(signInOrSignUpUrl.toString(), socialSignInData.getBytes());
                } else {
                    this.mAuthWebView.loadUrl(signInOrSignUpUrl.toString());
                }
                AdobeLogger.log(Level.INFO, "Authentication", " Loading URL");
            }
        }

        void pageLoaded() {
            AdobeLogger.log(Level.INFO, "Authentication", " Page loaded");
            if (!this._errorCondition && !this.tokenReceived.booleanValue()) {
                this.mAuthWebView.setVisibility(0);
                this.mProgressBar.setVisibility(8);
                this.mErrorView.setVisibility(8);
                AdobeLogger.log(Level.INFO, "Authentication", " No Error Condition");
            }
        }

        void showSpinnerAsTokenReceived() {
            this.tokenReceived = true;
            this.mProgressBar.setVisibility(0);
            this.mErrorView.setVisibility(8);
            this.mAuthWebView.setVisibility(8);
        }

        void handleError() {
            if (isAdded()) {
                this.mAuthWebView.setVisibility(8);
                this._errorCondition = true;
                this._loaded = false;
                if (!this._netReachability.isOnline()) {
                    _wentOffline();
                    AdobeLogger.log(Level.INFO, "Authentication", " Handle error condition offline");
                } else {
                    _showError(getString(R.string.adobe_csdk_common_error_view_unknown_authenticate_error));
                    AdobeLogger.log(Level.INFO, "Authentication", " Webpage error");
                }
            }
        }

        void handleError(String str) {
            if (isAdded()) {
                this.mAuthWebView.setVisibility(8);
                this._errorCondition = true;
                this._loaded = false;
                _showError(str);
                AdobeLogger.log(Level.INFO, "Authentication", " Webpage error");
            }
        }

        private void _showError(String str) {
            if (str != null) {
                this.mErrorFragment.setMessage(str);
            }
            this.mErrorView.setVisibility(0);
        }

        private void _hideError() {
            this.mErrorView.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void _wentOffline() {
            this._loaded = false;
            _showError(getString(R.string.adobe_csdk_common_error_view_no_internet_connection));
            AdobeLogger.log(Level.INFO, "Authentication", " _wentOffline");
        }

        public AuthResultHandler getSignInResultHandler() {
            return this._authResultHandler;
        }

        public void setSignInResultHandler(AuthResultHandler authResultHandler) {
            this._authResultHandler = authResultHandler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void performWork() {
            boolean z = true;
            if (shouldTrySignInThrouhgSharedAdobeIdAuthToken()) {
                this._sharedAdobeIdTokenAccessor = new SharedAdobeIdTokenAccessor();
                if (this._sharedAdobeIdTokenAccessor.hasSharedAdobeIdAccount()) {
                    z = false;
                    this._sharedAdobeIdTokenAccessor.tryGettingSharedTokenFromAccountManager();
                }
            }
            if (z) {
                showWebviewWithSignInUpUrl();
                _loadURL();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void _cameOnline() {
            this.mErrorView.setVisibility(0);
            _hideError();
            this._errorCondition = false;
            performWork();
            AdobeLogger.log(Level.INFO, "Authentication", " _cameOnline");
        }

        public void trySignInViaSharedAdobeIdAuthToken(boolean z) {
            this._shouldTrySignInViaSharedAdobeIdAuthToken = z;
        }

        class NetWorkObserver implements Observer {
            NetWorkObserver() {
            }

            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                if (((AdobeNotification) obj).getId() == AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification) {
                    if (!AdobeAuthSignInFragment.this._netReachability.isOnline()) {
                        AdobeAuthSignInFragment.this._wentOffline();
                        return;
                    } else {
                        AdobeAuthSignInFragment.this._cameOnline();
                        return;
                    }
                }
                AdobeLogger.log(Level.ERROR, "Authentication", "Expected a network status changed message!");
            }
        }

        class SharedAdobeIdTokenAccessor {
            SharedAdobeIdTokenAccessor() {
            }

            Bundle getAuthenticatorOptions() {
                return null;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void handleAccountManagerTokenResult(AdobeCSDKAdobeIdAuthenticatorHelper.SharedAccountRequestResultData sharedAccountRequestResultData, boolean z) {
                AuthResultHandlerForTryingSSO authResultHandlerForTryingSSO = (AuthResultHandlerForTryingSSO) AdobeAuthSignInFragment.this._authResultHandler;
                if (sharedAccountRequestResultData.isRequestCancelled) {
                    authResultHandlerForTryingSSO.setAccountManagerRequestCancelled();
                    return;
                }
                if (sharedAccountRequestResultData.tokenDetails != null && z && AdobeCSDKAdobeIdAuthenticatorHelper.isSharedDeviceTokenExpired(sharedAccountRequestResultData.tokenDetails)) {
                    removeCurrentSharedAccount();
                    sharedAccountRequestResultData.tokenDetails = null;
                }
                authResultHandlerForTryingSSO.handleSharedTokenRequestResult(sharedAccountRequestResultData.tokenDetails);
            }

            private void removeCurrentSharedAccount() {
                AdobeCSDKAdobeIdAuthenticatorHelper.removeCurrentSharedAdobeIDFromAccountManager(AdobeAuthSignInFragment.this.getActivity());
            }

            public boolean hasSharedAdobeIdAccount() {
                return AdobeCSDKAdobeIdAuthenticatorHelper.isAccountManagerHasSharedAdobeIdAccount(AdobeAuthSignInFragment.this.getActivity());
            }

            public void tryGettingSharedTokenFromAccountManager() {
                AdobeCSDKAdobeIdAuthenticatorHelper.getInstance().getSharedAdobeIdTokenFromAccountManager((Activity) AdobeAuthSignInFragment.this.getActivity(), getAuthenticatorOptions(), new AdobeCSDKAdobeIdAuthenticatorHelper.ICSDKAdobeIdAuthTokenResultHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthSignInActivity.AdobeAuthSignInFragment.SharedAdobeIdTokenAccessor.1
                    @Override // com.adobe.creativesdk.foundation.internal.auth.AdobeCSDKAdobeIdAuthenticatorHelper.ICSDKAdobeIdAuthTokenResultHandler
                    public void handleAuthenticatorTokenResult(AdobeCSDKAdobeIdAuthenticatorHelper.SharedAccountRequestResultData sharedAccountRequestResultData) {
                        SharedAdobeIdTokenAccessor.this.handleAccountManagerTokenResult(sharedAccountRequestResultData, true);
                    }
                });
            }
        }
    }
}
