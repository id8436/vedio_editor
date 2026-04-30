package com.facebook.imagepipeline.k;

import java.io.InputStream;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: WebpTranscodeProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class dh implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f2783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.aj f2784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final cl<com.facebook.imagepipeline.h.d> f2785c;

    public dh(Executor executor, com.facebook.imagepipeline.memory.aj ajVar, cl<com.facebook.imagepipeline.h.d> clVar) {
        this.f2783a = (Executor) com.facebook.d.d.k.a(executor);
        this.f2784b = (com.facebook.imagepipeline.memory.aj) com.facebook.d.d.k.a(ajVar);
        this.f2785c = (cl) com.facebook.d.d.k.a(clVar);
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        this.f2785c.a(new dj(this, oVar, cmVar), cmVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.facebook.imagepipeline.h.d dVar, o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        com.facebook.d.d.k.a(dVar);
        this.f2783a.execute(new di(this, oVar, cmVar.c(), "WebpTranscodeProducer", cmVar.b(), com.facebook.imagepipeline.h.d.a(dVar)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.facebook.d.m.e b(com.facebook.imagepipeline.h.d dVar) {
        com.facebook.d.d.k.a(dVar);
        com.facebook.g.c cVarC = com.facebook.g.e.c(dVar.d());
        if (com.facebook.g.b.b(cVarC)) {
            com.facebook.imagepipeline.nativecode.b bVarA = com.facebook.imagepipeline.nativecode.c.a();
            if (bVarA == null) {
                return com.facebook.d.m.e.NO;
            }
            return com.facebook.d.m.e.a(!bVarA.a(cVarC));
        }
        if (cVarC == com.facebook.g.c.f2252a) {
            return com.facebook.d.m.e.UNSET;
        }
        return com.facebook.d.m.e.NO;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.facebook.imagepipeline.h.d dVar, com.facebook.imagepipeline.memory.al alVar) throws Exception {
        InputStream inputStreamD = dVar.d();
        com.facebook.g.c cVarC = com.facebook.g.e.c(inputStreamD);
        if (cVarC == com.facebook.g.b.f2249e || cVarC == com.facebook.g.b.f2251g) {
            com.facebook.imagepipeline.nativecode.c.a().a(inputStreamD, alVar, 80);
            dVar.a(com.facebook.g.b.f2245a);
        } else {
            if (cVarC == com.facebook.g.b.f2250f || cVarC == com.facebook.g.b.h) {
                com.facebook.imagepipeline.nativecode.c.a().a(inputStreamD, alVar);
                dVar.a(com.facebook.g.b.f2246b);
                return;
            }
            throw new IllegalArgumentException("Wrong image format");
        }
    }
}
