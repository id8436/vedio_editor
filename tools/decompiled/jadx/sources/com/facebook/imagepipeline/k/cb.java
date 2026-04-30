package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: PostprocessedBitmapMemoryCacheProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class cb implements cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> f2714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.k f2715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2716c;

    public cb(com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> adVar, com.facebook.imagepipeline.c.k kVar, cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar) {
        this.f2714a = adVar;
        this.f2715b = kVar;
        this.f2716c = clVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, cm cmVar) {
        co coVarC = cmVar.c();
        String strB = cmVar.b();
        com.facebook.imagepipeline.l.a aVarA = cmVar.a();
        Object objD = cmVar.d();
        com.facebook.imagepipeline.l.h hVarO = aVarA.o();
        if (hVarO == null || hVarO.b() == null) {
            this.f2716c.a(oVar, cmVar);
            return;
        }
        coVarC.a(strB, a());
        com.facebook.c.a.f fVarB = this.f2715b.b(aVarA, objD);
        com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVarA2 = this.f2714a.a(fVarB);
        if (aVarA2 != null) {
            coVarC.a(strB, a(), coVarC.b(strB) ? com.facebook.d.d.e.a("cached_value_found", "true") : null);
            oVar.b(1.0f);
            oVar.b(aVarA2, true);
            aVarA2.close();
            return;
        }
        cc ccVar = new cc(oVar, fVarB, hVarO instanceof com.facebook.imagepipeline.l.i, this.f2714a);
        coVarC.a(strB, a(), coVarC.b(strB) ? com.facebook.d.d.e.a("cached_value_found", "false") : null);
        this.f2716c.a(ccVar, cmVar);
    }

    protected String a() {
        return "PostprocessedBitmapMemoryCacheProducer";
    }
}
