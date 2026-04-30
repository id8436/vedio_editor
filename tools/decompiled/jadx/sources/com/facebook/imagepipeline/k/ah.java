package com.facebook.imagepipeline.k;

import android.net.Uri;

/* JADX INFO: compiled from: FetchState.java */
/* JADX INFO: loaded from: classes2.dex */
public class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o<com.facebook.imagepipeline.h.d> f2608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cm f2609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f2610c = 0;

    public ah(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        this.f2608a = oVar;
        this.f2609b = cmVar;
    }

    public o<com.facebook.imagepipeline.h.d> a() {
        return this.f2608a;
    }

    public cm b() {
        return this.f2609b;
    }

    public String c() {
        return this.f2609b.b();
    }

    public co d() {
        return this.f2609b.c();
    }

    public Uri e() {
        return this.f2609b.a().b();
    }

    public long f() {
        return this.f2610c;
    }

    public void a(long j) {
        this.f2610c = j;
    }
}
