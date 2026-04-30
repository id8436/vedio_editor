package com.adobe.creativesdk.foundation.internal.auth;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.net.UrlQuerySanitizer;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.R;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthSignInActivity;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

/* JADX INFO: compiled from: AdobeAuthSignInActivity.java */
/* JADX INFO: loaded from: classes.dex */
class AuthWebViewClient extends WebViewClient {
    private AuthResultHandler _authClientResultHandler;
    AdobeAuthSignInActivity.AdobeAuthSignInFragment signInView;
    String authorizationCode = ProjectHostingService.PROJECTHOSTING_SERVICE;
    String deviceToken = "device_token";
    String error = Adobe360Constants.kAdobe360SatusError;
    String accessDenied = "access_denied#";
    String invalidScope = "invalid_scope";
    private boolean showPreUDPError = false;

    public AuthWebViewClient(AdobeAuthSignInActivity.AdobeAuthSignInFragment adobeAuthSignInFragment) {
        this.signInView = adobeAuthSignInFragment;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        AdobeLogger.log(Level.INFO, "Authentication", "onPageFinished");
        this.signInView.pageLoaded();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpAuthRequest(WebView webView, final HttpAuthHandler httpAuthHandler, String str, String str2) {
        this.signInView._proxyRequired = true;
        View viewInflate = this.signInView.getActivity().getLayoutInflater().inflate(R.layout.adobe_csdk_ux_auth_dialog_proxy_credentials, (ViewGroup) null);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.adobe_csdk_proxy_userName);
        final EditText editText2 = (EditText) viewInflate.findViewById(R.id.adobe_csdk_proxy_passWord);
        ((TextView) viewInflate.findViewById(R.id.adobe_csdk_proxy_warningMsg)).setText(String.format(viewInflate.getResources().getString(R.string.adobe_csdk_warning_msg), str, str2));
        AlertDialog.Builder builder = new AlertDialog.Builder(this.signInView.getActivity(), R.style.AdobeCSDKProxyAlertDialog);
        final AlertDialog alertDialogCreate = builder.create();
        builder.setCustomTitle(this.signInView.getActivity().getLayoutInflater().inflate(R.layout.adobe_csdk_ux_auth_dialog_proxy_title, (ViewGroup) null));
        builder.setMessage(" ");
        builder.setCancelable(true);
        builder.setView(viewInflate);
        builder.setNegativeButton(R.string.adobe_csdk_cancelLogIn, new DialogInterface.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.auth.AuthWebViewClient.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AuthWebViewClient.this.signInView._proxyCredsEntered = true;
                dialogInterface.cancel();
                alertDialogCreate.dismiss();
                httpAuthHandler.cancel();
            }
        });
        builder.setPositiveButton(R.string.adobe_csdk_logIn, new DialogInterface.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.auth.AuthWebViewClient.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AuthWebViewClient.this.signInView._proxyCredsEntered = true;
                httpAuthHandler.proceed(editText.getText().toString(), editText2.getText().toString());
            }
        });
        builder.show();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        AdobeLogger.log(Level.ERROR, "Authentication", "onReceivedError:Webpage Error=" + str + " with webpage error " + i);
        if (i == -1 && str.equals("net::ERR_CACHE_MISS")) {
            this._authClientResultHandler.handleResultFromIMS(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED));
        } else {
            this.signInView.handleError();
        }
    }

    private boolean doesMatchWithRedirectURI(String str) {
        try {
            URI uri = new URI(AdobeAuthIdentityManagementService.getSharedInstance().getRedirectURI());
            String scheme = uri.getScheme();
            String host = uri.getHost();
            URI uri2 = new URI(str);
            String scheme2 = uri2.getScheme();
            String host2 = uri2.getHost();
            boolean z = "www.adobe.com".equals(host2) || "adobe.com".equals(host2) || "complete".equals(host2);
            AdobeAuthManager adobeAuthManagerSharedAuthManager = AdobeAuthManager.sharedAuthManager();
            if (((adobeAuthManagerSharedAuthManager.hasPrivateCloudScope() || adobeAuthManagerSharedAuthManager.isAdobeApp() || adobeAuthManagerSharedAuthManager.isFirstPartyApp()) ? false : true) && z) {
                this.showPreUDPError = true;
                return false;
            }
            if (host2 == null || scheme2 == null || host == null || scheme == null) {
                return false;
            }
            return (host2.equals(host) && scheme2.equals(scheme)) || host2.equals("www.adobe.com") || host2.equals("adobe.com") || host2.equals("fake.domain.adobe.com") || host2.equals("complete");
        } catch (URISyntaxException e2) {
            AdobeLogger.log(Level.ERROR, "doesMatchWithRedirectURI failure", e2.getMessage());
            return false;
        }
    }

    private boolean handleOverrideUrlCommon(String str) {
        List<UrlQuerySanitizer.ParameterValuePair> parameterList = new UrlQuerySanitizer(str).getParameterList();
        boolean z = false;
        for (int i = 0; i < parameterList.size(); i++) {
            UrlQuerySanitizer.ParameterValuePair parameterValuePair = parameterList.get(i);
            if (parameterValuePair.mParameter.equals(this.authorizationCode)) {
                if (doesMatchWithRedirectURI(str)) {
                    this._authClientResultHandler.handleAuthCodeReceived(parameterValuePair.mValue);
                    this.signInView.showSpinnerAsTokenReceived();
                    z = true;
                } else if (this.showPreUDPError) {
                    this.signInView.handleError(this.signInView.getString(R.string.adobe_csdk_id_pre_UDP_client_error));
                } else {
                    this.signInView.handleError();
                }
            } else if (parameterValuePair.mParameter.equals(this.deviceToken)) {
                if (doesMatchWithRedirectURI(str)) {
                    this._authClientResultHandler.handleDeviceTokenReceived(parameterValuePair.mValue);
                    this.signInView.showSpinnerAsTokenReceived();
                    z = true;
                } else if (this.showPreUDPError) {
                    this.signInView.handleError(this.signInView.getString(R.string.adobe_csdk_id_pre_UDP_client_error));
                } else {
                    this.signInView.handleError();
                }
            } else if (parameterValuePair.mParameter.equals(this.error) && parameterValuePair.mValue.equals(this.accessDenied)) {
                this._authClientResultHandler.handleResultFromIMS(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED));
            } else if (parameterValuePair.mParameter.equals(this.error) && parameterValuePair.mValue.equals(this.invalidScope)) {
                this.signInView.handleError();
            }
        }
        return z;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return handleOverrideUrlCommon(str);
    }

    public void setAuthResultHandler(AuthResultHandler authResultHandler) {
        this._authClientResultHandler = authResultHandler;
    }
}
