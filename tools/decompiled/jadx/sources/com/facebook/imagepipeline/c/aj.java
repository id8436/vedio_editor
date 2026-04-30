package com.facebook.imagepipeline.c;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SplitCachesByImageSizeDiskCachePolicy.java */
/* JADX INFO: loaded from: classes2.dex */
public class aj implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f2407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f2408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f2409c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2410d;

    public aj(g gVar, g gVar2, k kVar, int i) {
        this.f2407a = gVar;
        this.f2408b = gVar2;
        this.f2409c = kVar;
        this.f2410d = i;
    }

    @Override // com.facebook.imagepipeline.c.w
    public a.l<com.facebook.imagepipeline.h.d> a(com.facebook.imagepipeline.l.a aVar, Object obj, AtomicBoolean atomicBoolean) {
        g gVar;
        g gVar2;
        com.facebook.c.a.f fVarC = this.f2409c.c(aVar, obj);
        boolean zA = this.f2408b.a(fVarC);
        boolean zA2 = this.f2407a.a(fVarC);
        if (zA || !zA2) {
            gVar = this.f2408b;
            gVar2 = this.f2407a;
        } else {
            gVar = this.f2407a;
            gVar2 = this.f2408b;
        }
        return gVar.a(fVarC, atomicBoolean).b(new ak(this, gVar2, fVarC, atomicBoolean));
    }

    @Override // com.facebook.imagepipeline.c.w
    public void a(com.facebook.imagepipeline.h.d dVar, com.facebook.imagepipeline.l.a aVar, Object obj) {
        com.facebook.c.a.f fVarC = this.f2409c.c(aVar, obj);
        int iK = dVar.k();
        if (iK > 0 && iK < this.f2410d) {
            this.f2408b.a(fVarC, dVar);
        } else {
            this.f2407a.a(fVarC, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(a.l<?> lVar) {
        return lVar.c() || (lVar.d() && (lVar.f() instanceof CancellationException));
    }
}
