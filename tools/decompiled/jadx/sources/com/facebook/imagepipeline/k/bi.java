package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: MediaVariationsFallbackProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class bi implements a.j<com.facebook.imagepipeline.h.d, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ co f2674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ o f2676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ cm f2677d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ boolean f2678e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ bg f2679f;

    bi(bg bgVar, co coVar, String str, o oVar, cm cmVar, boolean z) {
        this.f2679f = bgVar;
        this.f2674a = coVar;
        this.f2675b = str;
        this.f2676c = oVar;
        this.f2677d = cmVar;
        this.f2678e = z;
    }

    @Override // a.j
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Void a(a.l<com.facebook.imagepipeline.h.d> lVar) throws Exception {
        boolean z = true;
        if (bg.b((a.l<?>) lVar)) {
            this.f2674a.b(this.f2675b, "MediaVariationsFallbackProducer", null);
            this.f2676c.b();
            z = false;
        } else if (lVar.d()) {
            this.f2674a.a(this.f2675b, "MediaVariationsFallbackProducer", lVar.f(), null);
            this.f2679f.b(this.f2676c, this.f2677d);
        } else {
            com.facebook.imagepipeline.h.d dVarE = lVar.e();
            if (dVarE != null) {
                this.f2674a.a(this.f2675b, "MediaVariationsFallbackProducer", bg.a(this.f2674a, this.f2675b, true, this.f2678e));
                if (this.f2678e) {
                    this.f2676c.b(1.0f);
                }
                this.f2676c.b(dVarE, this.f2678e);
                dVarE.close();
                z = !this.f2678e;
            } else {
                this.f2674a.a(this.f2675b, "MediaVariationsFallbackProducer", bg.a(this.f2674a, this.f2675b, false, false));
            }
        }
        if (z) {
            this.f2679f.b(this.f2676c, this.f2677d);
        }
        return null;
    }
}
