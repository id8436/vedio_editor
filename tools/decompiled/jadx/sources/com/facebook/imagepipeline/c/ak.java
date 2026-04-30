package com.facebook.imagepipeline.c;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SplitCachesByImageSizeDiskCachePolicy.java */
/* JADX INFO: loaded from: classes2.dex */
class ak implements a.j<com.facebook.imagepipeline.h.d, a.l<com.facebook.imagepipeline.h.d>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.facebook.c.a.f f2412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f2413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ aj f2414d;

    ak(aj ajVar, g gVar, com.facebook.c.a.f fVar, AtomicBoolean atomicBoolean) {
        this.f2414d = ajVar;
        this.f2411a = gVar;
        this.f2412b = fVar;
        this.f2413c = atomicBoolean;
    }

    @Override // a.j
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a.l<com.facebook.imagepipeline.h.d> a(a.l<com.facebook.imagepipeline.h.d> lVar) throws Exception {
        if (aj.b(lVar)) {
            return lVar;
        }
        return (lVar.d() || lVar.e() == null) ? this.f2411a.a(this.f2412b, this.f2413c) : lVar;
    }
}
