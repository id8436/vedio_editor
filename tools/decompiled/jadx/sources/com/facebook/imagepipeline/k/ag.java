package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: EncodedMemoryCacheProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class ag extends w<com.facebook.imagepipeline.h.d, com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.memory.ah> f2606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.c.a.f f2607b;

    public ag(o<com.facebook.imagepipeline.h.d> oVar, com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.memory.ah> adVar, com.facebook.c.a.f fVar) {
        super(oVar);
        this.f2606a = adVar;
        this.f2607b = fVar;
    }

    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (!z || dVar == null) {
            d().b(dVar, z);
            return;
        }
        com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah> aVarC = dVar.c();
        if (aVarC != null) {
            try {
                com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah> aVarA = this.f2606a.a(dVar.j() != null ? dVar.j() : this.f2607b, aVarC);
                if (aVarA != null) {
                    try {
                        com.facebook.imagepipeline.h.d dVar2 = new com.facebook.imagepipeline.h.d(aVarA);
                        dVar2.b(dVar);
                        try {
                            d().b(1.0f);
                            d().b(dVar2, true);
                            return;
                        } finally {
                            com.facebook.imagepipeline.h.d.d(dVar2);
                        }
                    } finally {
                        com.facebook.d.h.a.c(aVarA);
                    }
                }
            } finally {
                com.facebook.d.h.a.c(aVarC);
            }
        }
        d().b(dVar, true);
    }
}
