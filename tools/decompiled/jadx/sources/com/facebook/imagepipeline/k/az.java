package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: LocalFetchProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class az extends cu<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.l.a f2652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ ay f2653c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    az(ay ayVar, o oVar, co coVar, String str, String str2, com.facebook.imagepipeline.l.a aVar) {
        super(oVar, coVar, str, str2);
        this.f2653c = ayVar;
        this.f2652b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.d.b.e
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public com.facebook.imagepipeline.h.d c() throws Exception {
        com.facebook.imagepipeline.h.d dVarA = this.f2653c.a(this.f2652b);
        if (dVarA == null) {
            return null;
        }
        dVarA.l();
        return dVarA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.cu, com.facebook.d.b.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(com.facebook.imagepipeline.h.d dVar) {
        com.facebook.imagepipeline.h.d.d(dVar);
    }
}
