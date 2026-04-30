package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: ThumbnailBranchProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class de extends w<com.facebook.imagepipeline.h.d, com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ dd f2779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cm f2780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.d.d f2782d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public de(dd ddVar, o<com.facebook.imagepipeline.h.d> oVar, cm cmVar, int i) {
        super(oVar);
        this.f2779a = ddVar;
        this.f2780b = cmVar;
        this.f2781c = i;
        this.f2782d = this.f2780b.a().f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (dVar != null && (!z || dg.a(dVar, this.f2782d))) {
            d().b(dVar, z);
        } else if (z) {
            com.facebook.imagepipeline.h.d.d(dVar);
            if (!this.f2779a.a(this.f2781c + 1, d(), this.f2780b)) {
                d().b(null, true);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    protected void a(Throwable th) {
        if (!this.f2779a.a(this.f2781c + 1, d(), this.f2780b)) {
            d().b(th);
        }
    }
}
