package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: DiskCacheWriteProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class ac extends w<com.facebook.imagepipeline.h.d, com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cm f2600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.w f2601b;

    private ac(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar, com.facebook.imagepipeline.c.w wVar) {
        super(oVar);
        this.f2600a = cmVar;
        this.f2601b = wVar;
    }

    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (dVar != null && z) {
            this.f2601b.a(dVar, this.f2600a.a(), this.f2600a.d());
        }
        d().b(dVar, z);
    }
}
