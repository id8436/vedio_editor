package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: BranchOnSeparateImagesProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class n extends w<com.facebook.imagepipeline.h.d, com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f2806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private cm f2807b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private n(l lVar, o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        super(oVar);
        this.f2806a = lVar;
        this.f2807b = cmVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        com.facebook.imagepipeline.l.a aVarA = this.f2807b.a();
        boolean zA = dg.a(dVar, aVarA.f());
        if (dVar != null && (zA || aVarA.j())) {
            d().b(dVar, z && zA);
        }
        if (z && !zA) {
            com.facebook.imagepipeline.h.d.d(dVar);
            this.f2806a.f2805b.a(d(), this.f2807b);
        }
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    protected void a(Throwable th) {
        this.f2806a.f2805b.a(d(), this.f2807b);
    }
}
