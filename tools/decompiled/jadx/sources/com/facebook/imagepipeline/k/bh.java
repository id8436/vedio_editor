package com.facebook.imagepipeline.k;

import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: MediaVariationsFallbackProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class bh implements a.j<List<com.facebook.imagepipeline.l.g>, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ o f2667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ cm f2668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.l.f f2669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.l.a f2670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.d.d f2671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f2672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ bg f2673g;

    bh(bg bgVar, o oVar, cm cmVar, com.facebook.imagepipeline.l.f fVar, com.facebook.imagepipeline.l.a aVar, com.facebook.imagepipeline.d.d dVar, AtomicBoolean atomicBoolean) {
        this.f2673g = bgVar;
        this.f2667a = oVar;
        this.f2668b = cmVar;
        this.f2669c = fVar;
        this.f2670d = aVar;
        this.f2671e = dVar;
        this.f2672f = atomicBoolean;
    }

    @Override // a.j
    public Object a(a.l<List<com.facebook.imagepipeline.l.g>> lVar) throws Exception {
        a.l lVarA;
        if (!lVar.c() && !lVar.d()) {
            try {
                if (lVar.e() == null || lVar.e().isEmpty()) {
                    this.f2673g.b(this.f2667a, this.f2668b);
                    lVarA = null;
                } else {
                    lVarA = this.f2673g.a(this.f2667a, this.f2668b, this.f2669c, lVar.e(), this.f2670d, this.f2671e, this.f2672f);
                }
                return lVarA;
            } catch (Exception e2) {
                return null;
            }
        }
        return lVar;
    }
}
