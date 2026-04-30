package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: DecodeProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class u implements ap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f2826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ cm f2827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ t f2828c;

    u(t tVar, q qVar, cm cmVar) {
        this.f2828c = tVar;
        this.f2826a = qVar;
        this.f2827b = cmVar;
    }

    @Override // com.facebook.imagepipeline.k.ap
    public void a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (dVar != null) {
            if (this.f2828c.f2821b.f2813f) {
                com.facebook.imagepipeline.l.a aVarA = this.f2827b.a();
                if (this.f2828c.f2821b.f2814g || !com.facebook.d.m.f.a(aVarA.b())) {
                    dVar.d(ad.a(aVarA, dVar));
                }
            }
            this.f2828c.c(dVar, z);
        }
    }
}
