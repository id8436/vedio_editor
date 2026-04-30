package com.facebook;

import org.json.JSONObject;

/* JADX INFO: compiled from: AccessTokenManager.java */
/* JADX INFO: loaded from: classes2.dex */
class g implements ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f2236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ d f2237b;

    g(d dVar, i iVar) {
        this.f2237b = dVar;
        this.f2236a = iVar;
    }

    @Override // com.facebook.ai
    public void a(as asVar) {
        JSONObject jSONObjectB = asVar.b();
        if (jSONObjectB != null) {
            this.f2236a.f2271a = jSONObjectB.optString("access_token");
            this.f2236a.f2272b = jSONObjectB.optInt("expires_at");
        }
    }
}
