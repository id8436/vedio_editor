package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: ResizeAndRotateProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class cs extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cp f2750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f2751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ cq f2752c;

    cs(cq cqVar, cp cpVar, o oVar) {
        this.f2752c = cqVar;
        this.f2750a = cpVar;
        this.f2751b = oVar;
    }

    @Override // com.facebook.imagepipeline.k.g, com.facebook.imagepipeline.k.cn
    public void c() {
        if (this.f2752c.f2745b.h()) {
            this.f2752c.f2747d.b();
        }
    }

    @Override // com.facebook.imagepipeline.k.g, com.facebook.imagepipeline.k.cn
    public void a() {
        this.f2752c.f2747d.a();
        this.f2752c.f2746c = true;
        this.f2751b.b();
    }
}
