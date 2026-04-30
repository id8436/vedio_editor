package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: compiled from: PoolFactory.java */
/* JADX INFO: loaded from: classes2.dex */
@NotThreadSafe
public class ad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aa f2895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f2896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o f2897c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s f2898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private aj f2899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private am f2900f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private j f2901g;

    public ad(aa aaVar) {
        this.f2895a = (aa) com.facebook.d.d.k.a(aaVar);
    }

    public h a() {
        if (this.f2896b == null) {
            this.f2896b = new h(this.f2895a.c(), this.f2895a.a(), this.f2895a.b());
        }
        return this.f2896b;
    }

    public o b() {
        if (this.f2897c == null) {
            this.f2897c = new o(this.f2895a.c(), this.f2895a.f());
        }
        return this.f2897c;
    }

    public int c() {
        return this.f2895a.f().f2907f;
    }

    public s d() {
        if (this.f2898d == null) {
            this.f2898d = new s(this.f2895a.c(), this.f2895a.d(), this.f2895a.e());
        }
        return this.f2898d;
    }

    public aj e() {
        if (this.f2899e == null) {
            this.f2899e = new u(d(), f());
        }
        return this.f2899e;
    }

    public am f() {
        if (this.f2900f == null) {
            this.f2900f = new am(g());
        }
        return this.f2900f;
    }

    public j g() {
        if (this.f2901g == null) {
            this.f2901g = new r(this.f2895a.c(), this.f2895a.g(), this.f2895a.h());
        }
        return this.f2901g;
    }
}
