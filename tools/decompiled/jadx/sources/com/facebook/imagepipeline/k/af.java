package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: EncodedMemoryCacheProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class af implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.memory.ah> f2603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.k f2604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final cl<com.facebook.imagepipeline.h.d> f2605c;

    public af(com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.memory.ah> adVar, com.facebook.imagepipeline.c.k kVar, cl<com.facebook.imagepipeline.h.d> clVar) {
        this.f2603a = adVar;
        this.f2604b = kVar;
        this.f2605c = clVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        String strB = cmVar.b();
        co coVarC = cmVar.c();
        coVarC.a(strB, "EncodedMemoryCacheProducer");
        com.facebook.c.a.f fVarC = this.f2604b.c(cmVar.a(), cmVar.d());
        com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah> aVarA = this.f2603a.a(fVarC);
        try {
            if (aVarA != null) {
                com.facebook.imagepipeline.h.d dVar = new com.facebook.imagepipeline.h.d(aVarA);
                dVar.a(fVarC);
                try {
                    coVarC.a(strB, "EncodedMemoryCacheProducer", coVarC.b(strB) ? com.facebook.d.d.e.a("cached_value_found", "true") : null);
                    oVar.b(1.0f);
                    oVar.b(dVar, true);
                    return;
                } finally {
                    com.facebook.imagepipeline.h.d.d(dVar);
                }
            }
            if (cmVar.e().a() >= com.facebook.imagepipeline.l.c.ENCODED_MEMORY_CACHE.a()) {
                coVarC.a(strB, "EncodedMemoryCacheProducer", coVarC.b(strB) ? com.facebook.d.d.e.a("cached_value_found", "false") : null);
                oVar.b(null, true);
            } else {
                ag agVar = new ag(oVar, this.f2603a, fVarC);
                coVarC.a(strB, "EncodedMemoryCacheProducer", coVarC.b(strB) ? com.facebook.d.d.e.a("cached_value_found", "false") : null);
                this.f2605c.a(agVar, cmVar);
            }
        } finally {
            com.facebook.d.h.a.c(aVarA);
        }
    }
}
