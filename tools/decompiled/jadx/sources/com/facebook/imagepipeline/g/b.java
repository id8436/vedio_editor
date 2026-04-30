package com.facebook.imagepipeline.g;

/* JADX INFO: compiled from: DefaultImageDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2563a;

    b(a aVar) {
        this.f2563a = aVar;
    }

    @Override // com.facebook.imagepipeline.g.c
    public com.facebook.imagepipeline.h.b a(com.facebook.imagepipeline.h.d dVar, int i, com.facebook.imagepipeline.h.g gVar, com.facebook.imagepipeline.d.a aVar) {
        com.facebook.g.c cVarE = dVar.e();
        if (cVarE == com.facebook.g.b.f2245a) {
            return this.f2563a.b(dVar, i, gVar, aVar);
        }
        if (cVarE == com.facebook.g.b.f2247c) {
            return this.f2563a.a(dVar, aVar);
        }
        if (cVarE == com.facebook.g.b.i) {
            return this.f2563a.c(dVar, aVar);
        }
        if (cVarE == com.facebook.g.c.f2252a) {
            throw new IllegalArgumentException("unknown image format");
        }
        return this.f2563a.b(dVar, aVar);
    }
}
