package com.twitter.sdk.android.core;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.File;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Twitter.java */
/* JADX INFO: loaded from: classes.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final j f4120a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    static volatile v f4121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f4122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.s f4123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ExecutorService f4124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TwitterAuthConfig f4125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.a f4126g;
    private final j h;
    private final boolean i;

    private v(ab abVar) {
        this.f4122c = abVar.f3844a;
        this.f4123d = new com.twitter.sdk.android.core.internal.s(this.f4122c);
        this.f4126g = new com.twitter.sdk.android.core.internal.a(this.f4122c);
        if (abVar.f3846c == null) {
            this.f4125f = new TwitterAuthConfig(com.twitter.sdk.android.core.internal.n.b(this.f4122c, "com.twitter.sdk.android.CONSUMER_KEY", ""), com.twitter.sdk.android.core.internal.n.b(this.f4122c, "com.twitter.sdk.android.CONSUMER_SECRET", ""));
        } else {
            this.f4125f = abVar.f3846c;
        }
        if (abVar.f3847d == null) {
            this.f4124e = com.twitter.sdk.android.core.internal.p.a("twitter-worker");
        } else {
            this.f4124e = abVar.f3847d;
        }
        if (abVar.f3845b == null) {
            this.h = f4120a;
        } else {
            this.h = abVar.f3845b;
        }
        if (abVar.f3848e == null) {
            this.i = false;
        } else {
            this.i = abVar.f3848e.booleanValue();
        }
    }

    public static void a(ab abVar) {
        b(abVar);
    }

    static synchronized v b(ab abVar) {
        v vVar;
        if (f4121b == null) {
            f4121b = new v(abVar);
            vVar = f4121b;
        } else {
            vVar = f4121b;
        }
        return vVar;
    }

    static void a() {
        if (f4121b == null) {
            throw new IllegalStateException("Must initialize Twitter before using getInstance()");
        }
    }

    public static v b() {
        a();
        return f4121b;
    }

    public Context a(String str) {
        return new ae(this.f4122c, str, ".TwitterKit" + File.separator + str);
    }

    public com.twitter.sdk.android.core.internal.s c() {
        return this.f4123d;
    }

    public TwitterAuthConfig d() {
        return this.f4125f;
    }

    public ExecutorService e() {
        return this.f4124e;
    }

    public com.twitter.sdk.android.core.internal.a f() {
        return this.f4126g;
    }

    public static boolean g() {
        if (f4121b == null) {
            return false;
        }
        return f4121b.i;
    }

    public static j h() {
        return f4121b == null ? f4120a : f4121b.h;
    }
}
