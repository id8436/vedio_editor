package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: MediaVariationsFallbackProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class bk extends w<com.facebook.imagepipeline.h.d, com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ bg f2682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cm f2683b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk(bg bgVar, o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        super(oVar);
        this.f2682a = bgVar;
        this.f2683b = cmVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (z && dVar != null) {
            a(dVar);
        }
        d().b(dVar, z);
    }

    private void a(com.facebook.imagepipeline.h.d dVar) {
        com.facebook.imagepipeline.l.a aVarA = this.f2683b.a();
        com.facebook.imagepipeline.l.f fVarC = aVarA.c();
        if (aVarA.m() && fVarC != null) {
            this.f2682a.f2665d.a(fVarC.a(), this.f2682a.f2664c.c(aVarA, this.f2683b.d()), dVar);
        }
    }
}
