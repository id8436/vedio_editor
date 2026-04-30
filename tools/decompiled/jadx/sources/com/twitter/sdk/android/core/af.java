package com.twitter.sdk.android.core;

import android.annotation.SuppressLint;
import android.content.Context;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import com.twitter.sdk.android.core.internal.scribe.an;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: TwitterCore.java */
/* JADX INFO: loaded from: classes.dex */
public class af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    static volatile af f3856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    u<aj> f3857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    u<e> f3858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.twitter.sdk.android.core.internal.t<aj> f3859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TwitterAuthConfig f3860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<t, w> f3861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f3862g;
    private volatile w h;
    private volatile g i;

    af(TwitterAuthConfig twitterAuthConfig) {
        this(twitterAuthConfig, new ConcurrentHashMap(), null);
    }

    af(TwitterAuthConfig twitterAuthConfig, ConcurrentHashMap<t, w> concurrentHashMap, w wVar) {
        this.f3860e = twitterAuthConfig;
        this.f3861f = concurrentHashMap;
        this.h = wVar;
        this.f3862g = v.b().a(e());
        this.f3857b = new k(new com.twitter.sdk.android.core.internal.b.c(this.f3862g, "session_store"), new ak(), "active_twittersession", "twittersession");
        this.f3858c = new k(new com.twitter.sdk.android.core.internal.b.c(this.f3862g, "session_store"), new f(), "active_guestsession", "guestsession");
        this.f3859d = new com.twitter.sdk.android.core.internal.t<>(this.f3857b, v.b().e(), new com.twitter.sdk.android.core.internal.aa());
    }

    public static af a() {
        if (f3856a == null) {
            synchronized (af.class) {
                if (f3856a == null) {
                    f3856a = new af(v.b().d());
                    v.b().e().execute(new ag());
                }
            }
        }
        return f3856a;
    }

    public String b() {
        return "3.1.1.9";
    }

    public TwitterAuthConfig c() {
        return this.f3860e;
    }

    void d() {
        this.f3857b.b();
        this.f3858c.b();
        g();
        h();
        this.f3859d.a(v.b().f());
    }

    public String e() {
        return "com.twitter.sdk.android:twitter-core";
    }

    private void h() {
        an.a(this.f3862g, f(), g(), v.b().c(), "TwitterCore", b());
    }

    public u<aj> f() {
        return this.f3857b;
    }

    public g g() {
        if (this.i == null) {
            i();
        }
        return this.i;
    }

    private synchronized void i() {
        if (this.i == null) {
            this.i = new g(new OAuth2Service(this, new com.twitter.sdk.android.core.internal.z()), this.f3858c);
        }
    }

    public w a(aj ajVar) {
        if (!this.f3861f.containsKey(ajVar)) {
            this.f3861f.putIfAbsent(ajVar, new w(ajVar));
        }
        return this.f3861f.get(ajVar);
    }
}
