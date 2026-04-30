package com.a.a.a.g.a;

import android.support.annotation.Nullable;
import com.a.a.a.r;

/* JADX INFO: compiled from: CallbackMessage.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends com.a.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private r f477g;

    @Nullable
    private Throwable h;

    public b() {
        super(com.a.a.a.g.i.CALLBACK);
    }

    @Override // com.a.a.a.g.b
    protected void a() {
        this.f477g = null;
        this.h = null;
    }

    public void a(r rVar, int i) {
        this.f474d = i;
        this.f477g = rVar;
    }

    public void a(r rVar, int i, int i2) {
        this.f474d = i;
        this.f475e = i2;
        this.f477g = rVar;
    }

    public void a(r rVar, int i, boolean z, @Nullable Throwable th) {
        this.f474d = i;
        this.f476f = z;
        this.f477g = rVar;
        this.h = th;
    }

    public int c() {
        return this.f474d;
    }

    public int d() {
        return this.f475e;
    }

    public boolean e() {
        return this.f476f;
    }

    public r f() {
        return this.f477g;
    }

    @Nullable
    public Throwable g() {
        return this.h;
    }
}
