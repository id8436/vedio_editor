package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import java.util.Date;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: compiled from: AccessTokenManager.java */
/* JADX INFO: loaded from: classes2.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile d f1920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocalBroadcastManager f1921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f1922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AccessToken f1923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AtomicBoolean f1924e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Date f1925f = new Date(0);

    d(LocalBroadcastManager localBroadcastManager, b bVar) {
        com.facebook.i.az.a(localBroadcastManager, "localBroadcastManager");
        com.facebook.i.az.a(bVar, "accessTokenCache");
        this.f1921b = localBroadcastManager;
        this.f1922c = bVar;
    }

    static d a() {
        if (f1920a == null) {
            synchronized (d.class) {
                if (f1920a == null) {
                    f1920a = new d(LocalBroadcastManager.getInstance(w.f()), new b());
                }
            }
        }
        return f1920a;
    }

    AccessToken b() {
        return this.f1923d;
    }

    boolean c() {
        AccessToken accessTokenA = this.f1922c.a();
        if (accessTokenA == null) {
            return false;
        }
        a(accessTokenA, false);
        return true;
    }

    void a(AccessToken accessToken) {
        a(accessToken, true);
    }

    private void a(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.f1923d;
        this.f1923d = accessToken;
        this.f1924e.set(false);
        this.f1925f = new Date(0L);
        if (z) {
            if (accessToken != null) {
                this.f1922c.a(accessToken);
            } else {
                this.f1922c.b();
                com.facebook.i.as.b(w.f());
            }
        }
        if (!com.facebook.i.as.a(accessToken2, accessToken)) {
            a(accessToken2, accessToken);
        }
    }

    private void a(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.f1921b.sendBroadcast(intent);
    }

    void d() {
        if (f()) {
            e();
        }
    }

    private boolean f() {
        if (this.f1923d == null) {
            return false;
        }
        Long lValueOf = Long.valueOf(new Date().getTime());
        return this.f1923d.f().a() && lValueOf.longValue() - this.f1925f.getTime() > DateUtils.MILLIS_PER_HOUR && lValueOf.longValue() - this.f1923d.g().getTime() > DateUtils.MILLIS_PER_DAY;
    }

    private static GraphRequest a(AccessToken accessToken, ai aiVar) {
        return new GraphRequest(accessToken, "me/permissions", new Bundle(), at.GET, aiVar);
    }

    private static GraphRequest b(AccessToken accessToken, ai aiVar) {
        Bundle bundle = new Bundle();
        bundle.putString("grant_type", "fb_extend_sso_token");
        return new GraphRequest(accessToken, "oauth/access_token", bundle, at.GET, aiVar);
    }

    void e() {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            g();
        } else {
            new Handler(Looper.getMainLooper()).post(new e(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        AccessToken accessToken = this.f1923d;
        if (accessToken != null && this.f1924e.compareAndSet(false, true)) {
            com.facebook.i.az.a();
            this.f1925f = new Date();
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            i iVar = new i(null);
            ap apVar = new ap(a(accessToken, new f(this, atomicBoolean, hashSet, hashSet2)), b(accessToken, new g(this, iVar)));
            apVar.a(new h(this, accessToken, atomicBoolean, iVar, hashSet, hashSet2));
            apVar.h();
        }
    }
}
