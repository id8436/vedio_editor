package com.facebook.imagepipeline.k;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: DecodeProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class q implements cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.j f2808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f2809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.g.c f2810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.g.e f2811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cl<com.facebook.imagepipeline.h.d> f2812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f2813f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f2814g;
    private final boolean h;

    public q(com.facebook.imagepipeline.memory.j jVar, Executor executor, com.facebook.imagepipeline.g.c cVar, com.facebook.imagepipeline.g.e eVar, boolean z, boolean z2, boolean z3, cl<com.facebook.imagepipeline.h.d> clVar) {
        this.f2808a = (com.facebook.imagepipeline.memory.j) com.facebook.d.d.k.a(jVar);
        this.f2809b = (Executor) com.facebook.d.d.k.a(executor);
        this.f2810c = (com.facebook.imagepipeline.g.c) com.facebook.d.d.k.a(cVar);
        this.f2811d = (com.facebook.imagepipeline.g.e) com.facebook.d.d.k.a(eVar);
        this.f2813f = z;
        this.f2814g = z2;
        this.f2812e = (cl) com.facebook.d.d.k.a(clVar);
        this.h = z3;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, cm cmVar) {
        o<com.facebook.imagepipeline.h.d> sVar;
        if (!com.facebook.d.m.f.a(cmVar.a().b())) {
            sVar = new r(this, oVar, cmVar, this.h);
        } else {
            sVar = new s(this, oVar, cmVar, new com.facebook.imagepipeline.g.f(this.f2808a), this.f2811d, this.h);
        }
        this.f2812e.a(sVar, cmVar);
    }
}
