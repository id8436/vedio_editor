package com.twitter.sdk.android.core.identity;

import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: OAuthWebViewClient.java */
/* JADX INFO: loaded from: classes3.dex */
class i extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f3896b;

    public i(String str, j jVar) {
        this.f3895a = str;
        this.f3896b = jVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f3896b.a(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!str.startsWith(this.f3895a)) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        TreeMap<String, String> treeMapA = com.twitter.sdk.android.core.internal.a.f.a(URI.create(str), false);
        Bundle bundle = new Bundle(treeMapA.size());
        for (Map.Entry<String, String> entry : treeMapA.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        this.f3896b.a(bundle);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        this.f3896b.a(new q(i, str, str2));
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.f3896b.a(new q(sslError.getPrimaryError(), null, null));
    }
}
