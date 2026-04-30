package com.facebook.imagepipeline.c;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SmallCacheIfRequestedDiskCachePolicy.java */
/* JADX INFO: loaded from: classes2.dex */
public class ai implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f2404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f2405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f2406c;

    public ai(g gVar, g gVar2, k kVar) {
        this.f2404a = gVar;
        this.f2405b = gVar2;
        this.f2406c = kVar;
    }

    @Override // com.facebook.imagepipeline.c.w
    public a.l<com.facebook.imagepipeline.h.d> a(com.facebook.imagepipeline.l.a aVar, Object obj, AtomicBoolean atomicBoolean) {
        com.facebook.c.a.f fVarC = this.f2406c.c(aVar, obj);
        return aVar.a() == com.facebook.imagepipeline.l.b.SMALL ? this.f2405b.a(fVarC, atomicBoolean) : this.f2404a.a(fVarC, atomicBoolean);
    }

    @Override // com.facebook.imagepipeline.c.w
    public void a(com.facebook.imagepipeline.h.d dVar, com.facebook.imagepipeline.l.a aVar, Object obj) {
        com.facebook.c.a.f fVarC = this.f2406c.c(aVar, obj);
        if (aVar.a() == com.facebook.imagepipeline.l.b.SMALL) {
            this.f2405b.a(fVarC, dVar);
        } else {
            this.f2404a.a(fVarC, dVar);
        }
    }
}
