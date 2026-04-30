package com.facebook.login;

import android.os.Bundle;
import com.facebook.i.ay;
import com.facebook.login.LoginClient;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: GetTokenLoginMethodHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class d implements ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Bundle f2993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ LoginClient.Request f2994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ GetTokenLoginMethodHandler f2995c;

    d(GetTokenLoginMethodHandler getTokenLoginMethodHandler, Bundle bundle, LoginClient.Request request) {
        this.f2995c = getTokenLoginMethodHandler;
        this.f2993a = bundle;
        this.f2994b = request;
    }

    @Override // com.facebook.i.ay
    public void a(JSONObject jSONObject) {
        try {
            this.f2993a.putString("com.facebook.platform.extra.USER_ID", jSONObject.getString("id"));
            this.f2995c.b(this.f2994b, this.f2993a);
        } catch (JSONException e2) {
            this.f2995c.f2980b.b(LoginClient.Result.a(this.f2995c.f2980b.c(), "Caught exception", e2.getMessage()));
        }
    }

    @Override // com.facebook.i.ay
    public void a(com.facebook.q qVar) {
        this.f2995c.f2980b.b(LoginClient.Result.a(this.f2995c.f2980b.c(), "Caught exception", qVar.getMessage()));
    }
}
