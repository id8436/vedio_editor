package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: DiskCacheReadProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class y implements a.j<com.facebook.imagepipeline.h.d, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ co f2835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ o f2837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ cm f2838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ x f2839e;

    y(x xVar, co coVar, String str, o oVar, cm cmVar) {
        this.f2839e = xVar;
        this.f2835a = coVar;
        this.f2836b = str;
        this.f2837c = oVar;
        this.f2838d = cmVar;
    }

    @Override // a.j
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Void a(a.l<com.facebook.imagepipeline.h.d> lVar) throws Exception {
        if (x.b(lVar)) {
            this.f2835a.b(this.f2836b, "DiskCacheProducer", null);
            this.f2837c.b();
        } else if (lVar.d()) {
            this.f2835a.a(this.f2836b, "DiskCacheProducer", lVar.f(), null);
            this.f2839e.f2833a.a(this.f2837c, this.f2838d);
        } else {
            com.facebook.imagepipeline.h.d dVarE = lVar.e();
            if (dVarE != null) {
                this.f2835a.a(this.f2836b, "DiskCacheProducer", x.a(this.f2835a, this.f2836b, true));
                this.f2837c.b(1.0f);
                this.f2837c.b(dVarE, true);
                dVarE.close();
            } else {
                this.f2835a.a(this.f2836b, "DiskCacheProducer", x.a(this.f2835a, this.f2836b, false));
                this.f2839e.f2833a.a(this.f2837c, this.f2838d);
            }
        }
        return null;
    }
}
