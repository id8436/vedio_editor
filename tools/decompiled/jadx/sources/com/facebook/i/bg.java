package com.facebook.i;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;

/* JADX INFO: compiled from: WebDialog.java */
/* JADX INFO: loaded from: classes2.dex */
class bg extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ba f2347a;

    private bg(ba baVar) {
        this.f2347a = baVar;
    }

    /* synthetic */ bg(ba baVar, bb bbVar) {
        this(baVar);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        int i;
        as.a("FacebookSDK.WebDialog", "Redirect URL: " + str);
        if (str.startsWith(this.f2347a.f2330b)) {
            Bundle bundleA = this.f2347a.a(str);
            String string = bundleA.getString(Adobe360Constants.kAdobe360SatusError);
            if (string == null) {
                string = bundleA.getString("error_type");
            }
            String string2 = bundleA.getString("error_msg");
            if (string2 == null) {
                string2 = bundleA.getString("error_message");
            }
            if (string2 == null) {
                string2 = bundleA.getString("error_description");
            }
            String string3 = bundleA.getString("error_code");
            if (as.a(string3)) {
                i = -1;
            } else {
                try {
                    i = Integer.parseInt(string3);
                } catch (NumberFormatException e2) {
                    i = -1;
                }
            }
            if (as.a(string) && as.a(string2) && i == -1) {
                this.f2347a.a(bundleA);
            } else if ((string != null && (string.equals("access_denied") || string.equals("OAuthAccessDeniedException"))) || i == 4201) {
                this.f2347a.cancel();
            } else {
                this.f2347a.a(new com.facebook.ac(new com.facebook.s(i, string, string2), string2));
            }
            return true;
        }
        if (str.startsWith("fbconnect://cancel")) {
            this.f2347a.cancel();
            return true;
        }
        if (str.contains("touch")) {
            return false;
        }
        try {
            this.f2347a.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        } catch (ActivityNotFoundException e3) {
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        this.f2347a.a(new com.facebook.p(str, i, str2));
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        sslErrorHandler.cancel();
        this.f2347a.a(new com.facebook.p(null, -11, null));
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        as.a("FacebookSDK.WebDialog", "Webview loading URL: " + str);
        super.onPageStarted(webView, str, bitmap);
        if (!this.f2347a.i) {
            this.f2347a.f2333e.show();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (!this.f2347a.i) {
            this.f2347a.f2333e.dismiss();
        }
        this.f2347a.f2335g.setBackgroundColor(0);
        this.f2347a.f2332d.setVisibility(0);
        this.f2347a.f2334f.setVisibility(0);
        this.f2347a.j = true;
    }
}
