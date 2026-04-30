package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AccessTokenCache.java */
/* JADX INFO: loaded from: classes2.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f1803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f1804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private au f1805c;

    b(SharedPreferences sharedPreferences, c cVar) {
        this.f1803a = sharedPreferences;
        this.f1804b = cVar;
    }

    public b() {
        this(w.f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new c());
    }

    public AccessToken a() {
        if (c()) {
            return d();
        }
        if (!e()) {
            return null;
        }
        AccessToken accessTokenF = f();
        if (accessTokenF != null) {
            a(accessTokenF);
            g().b();
            return accessTokenF;
        }
        return accessTokenF;
    }

    public void a(AccessToken accessToken) {
        com.facebook.i.az.a(accessToken, "accessToken");
        try {
            this.f1803a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.k().toString()).apply();
        } catch (JSONException e2) {
        }
    }

    public void b() {
        this.f1803a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (e()) {
            g().b();
        }
    }

    private boolean c() {
        return this.f1803a.contains("com.facebook.AccessTokenManager.CachedAccessToken");
    }

    private AccessToken d() {
        String string = this.f1803a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string == null) {
            return null;
        }
        try {
            return AccessToken.a(new JSONObject(string));
        } catch (JSONException e2) {
            return null;
        }
    }

    private boolean e() {
        return w.c();
    }

    private AccessToken f() {
        Bundle bundleA = g().a();
        if (bundleA == null || !au.a(bundleA)) {
            return null;
        }
        return AccessToken.a(bundleA);
    }

    private au g() {
        if (this.f1805c == null) {
            synchronized (this) {
                if (this.f1805c == null) {
                    this.f1805c = this.f1804b.a();
                }
            }
        }
        return this.f1805c;
    }
}
