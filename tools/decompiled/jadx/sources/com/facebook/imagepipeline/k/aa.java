package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: DiskCacheWriteProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class aa implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cl<com.facebook.imagepipeline.h.d> f2598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.w f2599b;

    public aa(cl<com.facebook.imagepipeline.h.d> clVar, com.facebook.imagepipeline.c.w wVar) {
        this.f2598a = clVar;
        this.f2599b = wVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        b(oVar, cmVar);
    }

    private void b(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        if (cmVar.e().a() >= com.facebook.imagepipeline.l.c.DISK_CACHE.a()) {
            oVar.b(null, true);
            return;
        }
        if (cmVar.a().m()) {
            oVar = new ac(oVar, cmVar, this.f2599b);
        }
        this.f2598a.a(oVar, cmVar);
    }
}
