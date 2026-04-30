package com.facebook.imagepipeline.k;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: PostprocessorProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class cd implements cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.b.f f2721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f2722c;

    public cd(cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar, com.facebook.imagepipeline.b.f fVar, Executor executor) {
        this.f2720a = (cl) com.facebook.d.d.k.a(clVar);
        this.f2721b = fVar;
        this.f2722c = (Executor) com.facebook.d.d.k.a(executor);
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, cm cmVar) {
        o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> ckVar;
        ce ceVar = null;
        co coVarC = cmVar.c();
        com.facebook.imagepipeline.l.h hVarO = cmVar.a().o();
        cf cfVar = new cf(this, oVar, coVarC, cmVar.b(), hVarO, cmVar);
        if (hVarO instanceof com.facebook.imagepipeline.l.i) {
            ckVar = new ci(this, cfVar, (com.facebook.imagepipeline.l.i) hVarO, cmVar);
        } else {
            ckVar = new ck(this, cfVar);
        }
        this.f2720a.a(ckVar, cmVar);
    }
}
