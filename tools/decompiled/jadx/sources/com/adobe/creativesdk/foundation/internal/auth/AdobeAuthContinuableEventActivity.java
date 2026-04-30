package com.adobe.creativesdk.foundation.internal.auth;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.auth.R;
import com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeContinuableEventHandler;
import com.adobe.creativesdk.foundation.internal.base.AdobeCSDKBaseActivity;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonErrorViewFragment;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Observable;
import java.util.Observer;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthContinuableEventActivity extends AdobeCSDKBaseActivity {
    private static boolean _activityClosedDueToManualClose = false;
    private AdobeAuthContinuableEventFragment _continuableFragment;
    private WebView _webView;
    Timer timer;
    private FifteenMinutesTimerTask timerTask = null;
    String _jumpURL = null;
    String continuableFragmentTag = "Continuablefragment";

    public static boolean isLastActivityClosedDuetoManualClose() {
        return _activityClosedDueToManualClose;
    }

    class FifteenMinutesTimerTask extends TimerTask {
        FifteenMinutesTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            AdobeAuthContinuableEventActivity.this.handleTimerComplete();
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        _activityClosedDueToManualClose = false;
        AdobeContinuableEventHandler.stopContinuableTimer();
        this._jumpURL = getIntent().getExtras().getString(AdobeAuthConstants.JUMP_URL);
        getWindow().setSoftInputMode(16);
        AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(this);
        super.onCreate(bundle);
        setContentView(R.layout.adobe_csdk_ux_auth_activity_container_view);
        Toolbar toolbar = (Toolbar) findViewById(R.id.adobe_csdk_actionbar_toolbar);
        toolbar.setContentInsetsRelative(getResources().getDimensionPixelSize(R.dimen.abc_action_bar_content_inset_material), 0);
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowHomeEnabled(false);
            supportActionBar.setDisplayHomeAsUpEnabled(false);
        }
        AdobeCSDKActionBarController.setTitle(findViewById(android.R.id.content), getString(R.string.adobe_csdk_auth_sign_in_close));
        AdobeCSDKActionBarController.getTextView(findViewById(android.R.id.content)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthContinuableEventActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeAuthContinuableEventActivity.this.handleCloseButtonClicked();
            }
        });
        getSupportActionBar().setTitle("");
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        AdobeAuthContinuableEventFragment adobeAuthContinuableEventFragment = (AdobeAuthContinuableEventFragment) supportFragmentManager.findFragmentByTag(this.continuableFragmentTag);
        if (adobeAuthContinuableEventFragment == null) {
            AdobeAuthContinuableEventFragment adobeAuthContinuableEventFragment2 = new AdobeAuthContinuableEventFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString(AdobeAuthConstants.JUMP_URL, this._jumpURL);
            adobeAuthContinuableEventFragment2.setArguments(bundle2);
            this._continuableFragment = adobeAuthContinuableEventFragment2;
            supportFragmentManager.beginTransaction().add(R.id.adobe_csdk_creativesdk_foundation_auth_fragment_container, adobeAuthContinuableEventFragment2, this.continuableFragmentTag).commit();
        } else {
            this._continuableFragment = adobeAuthContinuableEventFragment;
        }
        startTimer();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (this._continuableFragment.shouldHandleBackPressed()) {
            this._continuableFragment.handleBackPressed();
        } else {
            handleCloseButtonClicked();
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.timer.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCloseButtonClicked() {
        _activityClosedDueToManualClose = true;
        setResult(0);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeNotificationContinualActivityClosed, null));
        finish();
    }

    private void startTimer() {
        this.timerTask = new FifteenMinutesTimerTask();
        this.timer = new Timer();
        this.timer.scheduleAtFixedRate(this.timerTask, 900000L, 900000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTimerComplete() {
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthContinuableEventActivity.2
            @Override // java.lang.Runnable
            public void run() {
                if (AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().reAuthenticate()) {
                    AdobeAuthContinuableEventActivity.this.runOnUiThread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthContinuableEventActivity.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdobeAuthContinuableEventActivity.this.handleActivityCloseWithSuccess();
                        }
                    });
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleActivityCloseWithSuccess() {
        setResult(-1);
        finish();
    }

    public class AdobeAuthContinuableEventFragment extends Fragment {
        private static final String TAG = "AdobeAuthContinuableFragment";
        boolean _errorCondition;
        private String _jumpURL;
        private ViewGroup mAuthViewContainer;
        private WebView mAuthWebView;
        AdobeCommonErrorViewFragment mErrorFragment;
        private View mErrorView;
        private ProgressBar mProgressBar;
        private ContinuableWebViewClient mWebViewClient;
        NetWorkObserver _netObserver = null;
        boolean _loaded = false;
        boolean _proxyRequired = false;
        boolean _proxyCredsEntered = false;
        private AdobeNetworkReachability _netReachability = null;
        private Boolean tokenReceived = false;

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this._jumpURL = (String) getArguments().get(AdobeAuthConstants.JUMP_URL);
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
            return layoutInflater.inflate(R.layout.adobe_csdk_ux_auth_fragment_view, viewGroup, false);
        }

        private void showWebviewWithJumpUrl() {
            if (this.mAuthWebView == null) {
                this.mAuthWebView = new WebView(getActivity());
                this.mAuthWebView.setClipChildren(false);
                ViewCompat.setLayerType(this.mAuthWebView, 1, null);
                this.mAuthWebView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                this.mAuthWebView.getSettings().setLoadWithOverviewMode(true);
                this.mAuthWebView.getSettings().setJavaScriptEnabled(true);
                this.mAuthViewContainer.addView(this.mAuthWebView);
                this.mWebViewClient = new ContinuableWebViewClient(this);
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
            this._netReachability = null;
            if (this.mAuthWebView != null) {
                this.mAuthViewContainer.removeView(this.mAuthWebView);
                this.mAuthWebView.setWebViewClient(null);
            }
            super.onDestroyView();
        }

        public boolean shouldHandleBackPressed() {
            return this.mAuthWebView != null && this.mAuthWebView.getVisibility() == 0 && this.mErrorView.getVisibility() != 0 && this.mAuthWebView.canGoBack();
        }

        public void handleTOUAcceptance() {
            this.tokenReceived = true;
            showSpinner();
            hidewebView();
            _hideError();
            if (getActivity() instanceof AdobeAuthContinuableEventActivity) {
                getActivity().setResult(-1);
                ((AdobeAuthContinuableEventActivity) getActivity()).handleTimerComplete();
            }
        }

        public void handleBackPressed() {
            if (this.mAuthWebView != null) {
                this.mAuthWebView.goBack();
            }
        }

        private void showSpinner() {
            if (this.mProgressBar != null) {
                this.mProgressBar.setVisibility(0);
            }
        }

        private void hidewebView() {
            if (this.mAuthViewContainer != null) {
                this.mAuthViewContainer.setVisibility(8);
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
            AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", "Started continuable event page");
        }

        @Override // android.support.v4.app.Fragment
        public void onStop() {
            super.onStop();
            AdobeNetworkReachabilityUtil.destorySharedInstance();
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this._netObserver);
            this._netObserver = null;
            AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", "Stopped continuable event page");
        }

        URL getLaodingURL() {
            try {
                return new URL(this._jumpURL);
            } catch (MalformedURLException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        private void _loadURL() {
            if ((this._proxyRequired && (!this._proxyRequired || !this._proxyCredsEntered)) || !this._loaded) {
                this._loaded = true;
                this.mAuthWebView.setVisibility(8);
                URL laodingURL = getLaodingURL();
                this._proxyRequired = false;
                this._proxyCredsEntered = false;
                this.mAuthWebView.loadUrl(laodingURL.toString());
                AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", " Loading URL" + laodingURL.toString());
            }
        }

        void pageLoaded() {
            AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", " Page loaded");
            if (!this._errorCondition && !this.tokenReceived.booleanValue()) {
                this.mAuthWebView.setVisibility(0);
                this.mProgressBar.setVisibility(8);
                this.mErrorView.setVisibility(8);
                AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", " No Error Condition");
            }
        }

        void handleError() {
            if (isAdded()) {
                this.mAuthWebView.setVisibility(8);
                this._errorCondition = true;
                this._loaded = false;
                if (!this._netReachability.isOnline()) {
                    _wentOffline();
                    AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", " Handle error condition offline");
                } else {
                    _showError(getString(R.string.adobe_csdk_common_error_view_unknown_authenticate_error));
                    AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", " Webpage error");
                }
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
            AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", " _wentOffline");
        }

        private void performWork() {
            showWebviewWithJumpUrl();
            _loadURL();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void _cameOnline() {
            this.mErrorView.setVisibility(0);
            _hideError();
            this._errorCondition = false;
            performWork();
            AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", " _cameOnline");
        }

        class NetWorkObserver implements Observer {
            NetWorkObserver() {
            }

            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                if (((AdobeNotification) obj).getId() == AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification) {
                    if (!AdobeAuthContinuableEventFragment.this._netReachability.isOnline()) {
                        AdobeAuthContinuableEventFragment.this._wentOffline();
                        return;
                    } else {
                        AdobeAuthContinuableEventFragment.this._cameOnline();
                        return;
                    }
                }
                AdobeLogger.log(Level.ERROR, "AdobeAuthContinuableActivity", "Expected a network status changed message!");
            }
        }
    }
}
