package com.twitter.sdk.android.core.identity;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.google.gdata.client.authn.oauth.OAuthParameters;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.v;
import com.twitter.sdk.android.core.z;

/* JADX INFO: compiled from: OAuthController.java */
/* JADX INFO: loaded from: classes3.dex */
class c implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final f f3887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TwitterAuthToken f3888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ProgressBar f3889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WebView f3890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TwitterAuthConfig f3891e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final OAuth1aService f3892f;

    c(ProgressBar progressBar, WebView webView, TwitterAuthConfig twitterAuthConfig, OAuth1aService oAuth1aService, f fVar) {
        this.f3889c = progressBar;
        this.f3890d = webView;
        this.f3891e = twitterAuthConfig;
        this.f3892f = oAuth1aService;
        this.f3887a = fVar;
    }

    void a() {
        v.h().a("Twitter", "Obtaining request token to start the sign in flow");
        this.f3892f.a(b());
    }

    com.twitter.sdk.android.core.c<OAuthResponse> b() {
        return new d(this);
    }

    protected void a(int i, z zVar) {
        Intent intent = new Intent();
        intent.putExtra("auth_error", zVar);
        this.f3887a.a(i, intent);
    }

    void a(WebView webView, WebViewClient webViewClient, String str, WebChromeClient webChromeClient) {
        WebSettings settings = webView.getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(false);
        settings.setSaveFormData(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setWebViewClient(webViewClient);
        webView.loadUrl(str);
        webView.setVisibility(4);
        webView.setWebChromeClient(webChromeClient);
    }

    private void b(Bundle bundle) {
        String string;
        v.h().a("Twitter", "OAuth web view completed successfully");
        if (bundle != null && (string = bundle.getString(OAuthParameters.OAUTH_VERIFIER_KEY)) != null) {
            v.h().a("Twitter", "Converting the request token to an access token.");
            this.f3892f.a(c(), this.f3888b, string);
        } else {
            v.h().c("Twitter", "Failed to get authorization, bundle incomplete " + bundle, null);
            a(1, new z("Failed to get authorization, bundle incomplete"));
        }
    }

    com.twitter.sdk.android.core.c<OAuthResponse> c() {
        return new e(this);
    }

    private void b(q qVar) {
        v.h().c("Twitter", "OAuth web view completed with an error", qVar);
        a(1, new z("OAuth web view completed with an error"));
    }

    private void d() {
        this.f3890d.stopLoading();
        e();
    }

    private void e() {
        this.f3889c.setVisibility(8);
    }

    @Override // com.twitter.sdk.android.core.identity.j
    public void a(WebView webView, String str) {
        e();
        webView.setVisibility(0);
    }

    @Override // com.twitter.sdk.android.core.identity.j
    public void a(Bundle bundle) {
        b(bundle);
        d();
    }

    @Override // com.twitter.sdk.android.core.identity.j
    public void a(q qVar) {
        b(qVar);
        d();
    }
}
