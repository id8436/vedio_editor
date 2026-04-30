package com.a.a.a.c;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.a.a.a.ad;
import com.a.a.a.f.d;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: Configuration.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Context f445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ad f446g;
    com.a.a.a.d.a h;
    com.a.a.a.h.c i;
    com.a.a.a.f.a j;
    com.a.a.a.k.b k;
    com.a.a.a.j.a l;
    boolean m;
    boolean n;
    int o;
    boolean p;
    ThreadFactory q;

    private a() {
        this.f440a = "default_job_manager";
        this.f441b = 5;
        this.f442c = 0;
        this.f443d = 15;
        this.f444e = 3;
        this.j = new d();
        this.m = false;
        this.n = false;
        this.o = 5;
        this.p = true;
        this.q = null;
    }

    @NonNull
    public Context a() {
        return this.f445f;
    }

    @NonNull
    public String b() {
        return this.f440a;
    }

    public boolean c() {
        return this.p;
    }

    @NonNull
    public ad d() {
        return this.f446g;
    }

    @Nullable
    public com.a.a.a.d.a e() {
        return this.h;
    }

    public int f() {
        return this.f443d;
    }

    @NonNull
    public com.a.a.a.h.c g() {
        return this.i;
    }

    public int h() {
        return this.f441b;
    }

    public int i() {
        return this.f442c;
    }

    @Nullable
    public com.a.a.a.f.a j() {
        return this.j;
    }

    public int k() {
        return this.f444e;
    }

    public boolean l() {
        return this.m;
    }

    @NonNull
    public com.a.a.a.k.b m() {
        return this.k;
    }

    public boolean n() {
        return this.n;
    }

    @Nullable
    public com.a.a.a.j.a o() {
        return this.l;
    }

    public int p() {
        return this.o;
    }

    @Nullable
    public ThreadFactory q() {
        return this.q;
    }
}
