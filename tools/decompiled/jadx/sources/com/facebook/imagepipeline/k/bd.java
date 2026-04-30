package com.facebook.imagepipeline.k;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: LocalVideoThumbnailProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class bd implements cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f2657a;

    public bd(Executor executor) {
        this.f2657a = executor;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, cm cmVar) {
        be beVar = new be(this, oVar, cmVar.c(), "VideoThumbnailProducer", cmVar.b(), cmVar.a());
        cmVar.a(new bf(this, beVar));
        this.f2657a.execute(beVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(com.facebook.imagepipeline.l.a aVar) {
        return (aVar.d() > 96 || aVar.e() > 96) ? 1 : 3;
    }
}
