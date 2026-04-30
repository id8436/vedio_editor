package com.facebook.login;

import android.os.Bundle;
import com.facebook.i.bh;
import com.facebook.login.LoginClient;

/* JADX INFO: compiled from: WebViewLoginMethodHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class z implements bh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ LoginClient.Request f3028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ WebViewLoginMethodHandler f3029b;

    z(WebViewLoginMethodHandler webViewLoginMethodHandler, LoginClient.Request request) {
        this.f3029b = webViewLoginMethodHandler;
        this.f3028a = request;
    }

    @Override // com.facebook.i.bh
    public void a(Bundle bundle, com.facebook.q qVar) {
        this.f3029b.a(this.f3028a, bundle, qVar);
    }
}
