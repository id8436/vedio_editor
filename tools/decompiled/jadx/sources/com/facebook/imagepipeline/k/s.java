package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: DecodeProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class s extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f2816a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.g.f f2817c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.g.e f2818d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2819e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(q qVar, o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, cm cmVar, com.facebook.imagepipeline.g.f fVar, com.facebook.imagepipeline.g.e eVar, boolean z) {
        super(qVar, oVar, cmVar, z);
        this.f2816a = qVar;
        this.f2817c = (com.facebook.imagepipeline.g.f) com.facebook.d.d.k.a(fVar);
        this.f2818d = (com.facebook.imagepipeline.g.e) com.facebook.d.d.k.a(eVar);
        this.f2819e = 0;
    }

    @Override // com.facebook.imagepipeline.k.t
    protected synchronized boolean a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        int iB;
        boolean z2 = false;
        synchronized (this) {
            boolean zA = super.a(dVar, z);
            if (z || !com.facebook.imagepipeline.h.d.e(dVar)) {
                z2 = zA;
            } else if (this.f2817c.a(dVar) && (iB = this.f2817c.b()) > this.f2819e && iB >= this.f2818d.a(this.f2819e)) {
                this.f2819e = iB;
                z2 = zA;
            }
        }
        return z2;
    }

    @Override // com.facebook.imagepipeline.k.t
    protected int a(com.facebook.imagepipeline.h.d dVar) {
        return this.f2817c.a();
    }

    @Override // com.facebook.imagepipeline.k.t
    protected com.facebook.imagepipeline.h.g c() {
        return this.f2818d.b(this.f2817c.b());
    }
}
