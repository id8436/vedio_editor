package com.behance.sdk.ui.fragments;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.BehanceSDKSocialAccountManager;
import com.behance.sdk.OAuth.TwitterClient;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.params.BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKGetAuthUrlFromTwitterTaskResult;
import com.behance.sdk.asynctasks.result.BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;
import com.behance.sdk.dto.BehanceSDKSocialAccountDTO;
import com.behance.sdk.enums.BehanceSDKSocialAccountType;
import com.behance.sdk.fragments.headless.BehanceSDKLoginToTwitterHeadlessFragment;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKLoginToTwitterFragment extends Fragment implements BehanceSDKLoginToTwitterHeadlessFragment.Callbacks {
    public static final String FRAGMENT_TAG_LOGIN_TO_SOCIAL_CLIENT = "FRAGMENT_TAG_LOGIN_TO_SOCIAL_CLIENT";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKLoginToTwitterFragment.class);
    private Callbacks callbacks;
    private ProgressBar progressBar;
    private View rootView;
    private BehanceSDKLoginToTwitterHeadlessFragment shareProjectOnTwitterHeadlessFragment;
    private Toast toastMessage;
    private BehanceSDKSocialAccountDTO twitterAccount;
    private WebView webview = null;
    private WebSettings webviewSettings = null;

    public interface Callbacks {
        void onTwitterAuthenticationFailure(Exception exc);

        void onTwitterAuthenticationSuccess(BehanceSDKRetrieveAccessTokenFromTwitterTaskResult behanceSDKRetrieveAccessTokenFromTwitterTaskResult);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    @SuppressLint({"SetJavaScriptEnabled"})
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        boolean z = false;
        this.rootView = layoutInflater.inflate(R.layout.bsdk_dialog_fragment_login_user_to_social_client, viewGroup, false);
        this.progressBar = (ProgressBar) this.rootView.findViewById(R.id.bsdkLoginUserToSocialClientProgressBar);
        this.shareProjectOnTwitterHeadlessFragment = (BehanceSDKLoginToTwitterHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.SHARE_PROJECT_ON_TWITTER);
        if (this.shareProjectOnTwitterHeadlessFragment == null) {
            this.shareProjectOnTwitterHeadlessFragment = new BehanceSDKLoginToTwitterHeadlessFragment();
            getActivity().getSupportFragmentManager().beginTransaction().add(this.shareProjectOnTwitterHeadlessFragment, BehanceSDKHeadlessFragmentTags.SHARE_PROJECT_ON_TWITTER).commit();
        }
        this.shareProjectOnTwitterHeadlessFragment.setCallbacks(this);
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getActivity().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            displayNoInternetConnectivity();
        } else {
            z = true;
        }
        this.twitterAccount = BehanceSDKSocialAccountManager.getInstance().getAccount(BehanceSDKSocialAccountType.TWITTER, getActivity());
        this.webview = (WebView) this.rootView.findViewById(R.id.bsdkLoginUserToSocialClientWebView);
        this.webviewSettings = this.webview.getSettings();
        this.webviewSettings.setSupportZoom(true);
        this.webviewSettings.setBuiltInZoomControls(true);
        this.webviewSettings.setUseWideViewPort(true);
        this.webviewSettings.setJavaScriptEnabled(true);
        this.webviewSettings.setLoadWithOverviewMode(true);
        if (z) {
            getAuthURLFromTwitter();
        }
        return this.rootView;
    }

    private void getAuthURLFromTwitter() {
        String accountClientId = this.twitterAccount.getAccountClientId();
        String accountClientSecret = this.twitterAccount.getAccountClientSecret();
        if (accountClientId != null && !accountClientId.isEmpty() && accountClientSecret != null && !accountClientSecret.isEmpty()) {
            BehanceSDKGetAuthURLFromTwitterAsyncTaskParams behanceSDKGetAuthURLFromTwitterAsyncTaskParams = new BehanceSDKGetAuthURLFromTwitterAsyncTaskParams();
            behanceSDKGetAuthURLFromTwitterAsyncTaskParams.setConsumerKey(accountClientId);
            behanceSDKGetAuthURLFromTwitterAsyncTaskParams.setConsumerSecret(accountClientSecret);
            this.shareProjectOnTwitterHeadlessFragment.getAuthURLFromTwitter(behanceSDKGetAuthURLFromTwitterAsyncTaskParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayNoInternetConnectivity() {
        if (getActivity() != null) {
            this.toastMessage = Toast.makeText(getActivity(), getResources().getString(R.string.bsdk_connection_error_msg), 1);
            this.toastMessage.setGravity(17, 0, 0);
            this.toastMessage.show();
            getActivity().setResult(2);
        }
    }

    public void setWebViewforAuthorization(String str) {
        hideProgressBar();
        this.webview.setWebViewClient(new WebViewClient() { // from class: com.behance.sdk.ui.fragments.BehanceSDKLoginToTwitterFragment.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str2) {
                if (str2 == null || !str2.startsWith(TwitterClient.TWITTER_OAUTH_CALLBACK_URI)) {
                    return false;
                }
                BehanceSDKLoginToTwitterFragment.this.retrieveTokenFromURLCallback(str2);
                webView.setVisibility(8);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str2, String str3) {
                super.onReceivedError(webView, i, str2, str3);
                BehanceSDKLoginToTwitterFragment.this.displayNoInternetConnectivity();
            }
        });
        this.webview.loadUrl(str);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                onBackPressed();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    public void onBackPressed() {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retrieveTokenFromURLCallback(String str) {
        String accountClientId = this.twitterAccount.getAccountClientId();
        String accountClientSecret = this.twitterAccount.getAccountClientSecret();
        if (accountClientId != null && !accountClientId.isEmpty() && accountClientSecret != null && !accountClientSecret.isEmpty()) {
            BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams = new BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams();
            behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams.setConsumerKey(accountClientId);
            behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams.setConsumerSecret(accountClientSecret);
            behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams.setAuthURL(str);
            this.shareProjectOnTwitterHeadlessFragment.retrieveAccessTokenFromTwitter(behanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams);
        }
    }

    private void hideProgressBar() {
        if (this.progressBar != null) {
            this.progressBar.setVisibility(4);
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKLoginToTwitterHeadlessFragment.Callbacks
    public void onGetAuthURLFromTwitterSuccess(BehanceSDKGetAuthUrlFromTwitterTaskResult behanceSDKGetAuthUrlFromTwitterTaskResult) {
        if (getActivity() != null) {
            if (behanceSDKGetAuthUrlFromTwitterTaskResult.getAuthURL() != null && behanceSDKGetAuthUrlFromTwitterTaskResult.getAuthURL().length() > 0) {
                setWebViewforAuthorization(behanceSDKGetAuthUrlFromTwitterTaskResult.getAuthURL());
            } else {
                logger.error("Problem retrieving auth URL. AUTH URL retrieved is null", new Object[0]);
            }
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKLoginToTwitterHeadlessFragment.Callbacks
    public void onGetAuthURLFromTwitterFailure(Exception exc) {
        if (getActivity() != null) {
            logger.error(exc, "Problem retrieving auth URL from Twitter. [Error - %s]", exc.getMessage());
            if (this.callbacks != null) {
                this.callbacks.onTwitterAuthenticationFailure(exc);
            }
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKLoginToTwitterHeadlessFragment.Callbacks
    public void onRetrieveAccessTokenFromTwitterSuccess(BehanceSDKRetrieveAccessTokenFromTwitterTaskResult behanceSDKRetrieveAccessTokenFromTwitterTaskResult) {
        if (getActivity() != null && this.callbacks != null) {
            this.callbacks.onTwitterAuthenticationSuccess(behanceSDKRetrieveAccessTokenFromTwitterTaskResult);
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKLoginToTwitterHeadlessFragment.Callbacks
    public void onRetrieveAccessTokenFromTwitterFailure(Exception exc) {
        if (getActivity() != null) {
            logger.error(exc, "Problem retrieving access token and secret from Twitter. [Error - %s]", exc.getMessage());
            if (this.callbacks != null) {
                this.callbacks.onTwitterAuthenticationFailure(exc);
            }
        }
    }
}
