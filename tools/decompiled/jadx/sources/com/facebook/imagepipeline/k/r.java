package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: DecodeProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class r extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f2815a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(q qVar, o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, cm cmVar, boolean z) {
        super(qVar, oVar, cmVar, z);
        this.f2815a = qVar;
    }

    @Override // com.facebook.imagepipeline.k.t
    protected synchronized boolean a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        return !z ? false : super.a(dVar, z);
    }

    @Override // com.facebook.imagepipeline.k.t
    protected int a(com.facebook.imagepipeline.h.d dVar) {
        return dVar.k();
    }

    @Override // com.facebook.imagepipeline.k.t
    protected com.facebook.imagepipeline.h.g c() {
        return com.facebook.imagepipeline.h.f.a(0, false, false);
    }
}
