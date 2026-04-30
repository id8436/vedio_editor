package com.adobe.creativesdk.foundation.internal.auth;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthContinuableEventActivity;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: compiled from: AdobeAuthContinuableEventActivity.java */
/* JADX INFO: loaded from: classes.dex */
class ContinuableWebViewClient extends WebViewClient {
    AdobeAuthContinuableEventActivity.AdobeAuthContinuableEventFragment continuableView;

    public ContinuableWebViewClient(AdobeAuthContinuableEventActivity.AdobeAuthContinuableEventFragment adobeAuthContinuableEventFragment) {
        this.continuableView = adobeAuthContinuableEventFragment;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        AdobeLogger.log(Level.INFO, "AdobeAuthContinuableActivity", "onPageFinished:Webpage =" + str);
        this.continuableView.pageLoaded();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!str.toLowerCase().contains("access_token") && !str.toLowerCase().contains("device_token")) {
            return false;
        }
        this.continuableView.handleTOUAcceptance();
        return true;
    }
}
