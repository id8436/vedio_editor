package com.facebook.login;

import android.os.Bundle;
import com.facebook.i.ap;
import com.facebook.login.LoginClient;

/* JADX INFO: compiled from: GetTokenLoginMethodHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements ap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ LoginClient.Request f2991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ GetTokenLoginMethodHandler f2992b;

    c(GetTokenLoginMethodHandler getTokenLoginMethodHandler, LoginClient.Request request) {
        this.f2992b = getTokenLoginMethodHandler;
        this.f2991a = request;
    }

    @Override // com.facebook.i.ap
    public void a(Bundle bundle) {
        this.f2992b.a(this.f2991a, bundle);
    }
}
