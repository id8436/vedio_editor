package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: BitmapMemoryCacheProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class k extends w<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>, com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.facebook.c.a.f f2802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ j f2803b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    k(j jVar, o oVar, com.facebook.c.a.f fVar) {
        super(oVar);
        this.f2803b = jVar;
        this.f2802a = fVar;
    }

    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar, boolean z) {
        com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVarA;
        if (aVar == null) {
            if (z) {
                d().b(null, true);
                return;
            }
            return;
        }
        if (aVar.a().d()) {
            d().b(aVar, z);
            return;
        }
        if (!z && (aVarA = this.f2803b.f2799a.a(this.f2802a)) != null) {
            try {
                com.facebook.imagepipeline.h.g gVarC = aVar.a().c();
                com.facebook.imagepipeline.h.g gVarC2 = aVarA.a().c();
                if (gVarC2.c() || gVarC2.a() >= gVarC.a()) {
                    d().b(aVarA, false);
                    return;
                }
            } finally {
                com.facebook.d.h.a.c(aVarA);
            }
        }
        com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVarA2 = this.f2803b.f2799a.a(this.f2802a, aVar);
        if (z) {
            try {
                d().b(1.0f);
            } finally {
                com.facebook.d.h.a.c(aVarA2);
            }
        }
        o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVarD = d();
        if (aVarA2 != null) {
            aVar = aVarA2;
        }
        oVarD.b(aVar, z);
    }
}
