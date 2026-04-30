package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: PostprocessedBitmapMemoryCacheProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class cc extends w<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>, com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.c.a.f f2717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f2718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> f2719c;

    public cc(o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, com.facebook.c.a.f fVar, boolean z, com.facebook.imagepipeline.c.ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> adVar) {
        super(oVar);
        this.f2717a = fVar;
        this.f2718b = z;
        this.f2719c = adVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar, boolean z) {
        if (aVar == null) {
            if (z) {
                d().b(null, true);
            }
        } else if (z || this.f2718b) {
            com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVarA = this.f2719c.a(this.f2717a, aVar);
            try {
                d().b(1.0f);
                o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVarD = d();
                if (aVarA != null) {
                    aVar = aVarA;
                }
                oVarD.b(aVar, z);
            } finally {
                com.facebook.d.h.a.c(aVarA);
            }
        }
    }
}
