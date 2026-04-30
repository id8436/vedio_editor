package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: BranchOnSeparateImagesProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class l implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cl<com.facebook.imagepipeline.h.d> f2804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cl<com.facebook.imagepipeline.h.d> f2805b;

    public l(cl<com.facebook.imagepipeline.h.d> clVar, cl<com.facebook.imagepipeline.h.d> clVar2) {
        this.f2804a = clVar;
        this.f2805b = clVar2;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        this.f2804a.a(new n(this, oVar, cmVar), cmVar);
    }
}
