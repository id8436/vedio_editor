package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: BitmapMemoryCacheProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class j implements cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> f2799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.k f2800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2801c;

    public j(com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> adVar, com.facebook.imagepipeline.c.k kVar, cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar) {
        this.f2799a = adVar;
        this.f2800b = kVar;
        this.f2801c = clVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, cm cmVar) {
        co coVarC = cmVar.c();
        String strB = cmVar.b();
        coVarC.a(strB, a());
        com.facebook.c.a.f fVarA = this.f2800b.a(cmVar.a(), cmVar.d());
        com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVarA = this.f2799a.a(fVarA);
        if (aVarA != null) {
            boolean zC = aVarA.a().c().c();
            if (zC) {
                coVarC.a(strB, a(), coVarC.b(strB) ? com.facebook.d.d.e.a("cached_value_found", "true") : null);
                oVar.b(1.0f);
            }
            oVar.b(aVarA, zC);
            aVarA.close();
            if (zC) {
                return;
            }
        }
        if (cmVar.e().a() >= com.facebook.imagepipeline.l.c.BITMAP_MEMORY_CACHE.a()) {
            coVarC.a(strB, a(), coVarC.b(strB) ? com.facebook.d.d.e.a("cached_value_found", "false") : null);
            oVar.b(null, true);
        } else {
            o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVarA = a(oVar, fVarA);
            coVarC.a(strB, a(), coVarC.b(strB) ? com.facebook.d.d.e.a("cached_value_found", "false") : null);
            this.f2801c.a(oVarA, cmVar);
        }
    }

    protected o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> a(o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, com.facebook.c.a.f fVar) {
        return new k(this, oVar, fVar);
    }

    protected String a() {
        return "BitmapMemoryCacheProducer";
    }
}
