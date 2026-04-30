package com.facebook.imagepipeline.k;

import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: MediaVariationsFallbackProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class bg implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.g f2662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.g f2663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.k f2664c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bl f2665d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cl<com.facebook.imagepipeline.h.d> f2666e;

    public bg(com.facebook.imagepipeline.c.g gVar, com.facebook.imagepipeline.c.g gVar2, com.facebook.imagepipeline.c.k kVar, bl blVar, cl<com.facebook.imagepipeline.h.d> clVar) {
        this.f2662a = gVar;
        this.f2663b = gVar2;
        this.f2664c = kVar;
        this.f2665d = blVar;
        this.f2666e = clVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        com.facebook.imagepipeline.l.a aVarA = cmVar.a();
        com.facebook.imagepipeline.d.d dVarF = aVarA.f();
        com.facebook.imagepipeline.l.f fVarC = aVarA.c();
        if (!aVarA.m() || dVarF == null || dVarF.f2480b <= 0 || dVarF.f2479a <= 0 || fVarC == null) {
            b(oVar, cmVar);
            return;
        }
        cmVar.c().a(cmVar.b(), "MediaVariationsFallbackProducer");
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        if (fVarC.b() != null) {
            a(oVar, cmVar, fVarC, fVarC.b(), aVarA, dVarF, atomicBoolean);
        } else {
            this.f2665d.a(fVarC.a()).a(new bh(this, oVar, cmVar, fVarC, aVarA, dVarF, atomicBoolean));
        }
        a(atomicBoolean, cmVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a.l a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar, com.facebook.imagepipeline.l.f fVar, List<com.facebook.imagepipeline.l.g> list, com.facebook.imagepipeline.l.a aVar, com.facebook.imagepipeline.d.d dVar, AtomicBoolean atomicBoolean) {
        a.l<com.facebook.imagepipeline.h.d> lVarA;
        boolean z;
        com.facebook.c.a.f fVar2;
        com.facebook.imagepipeline.l.g gVar;
        com.facebook.imagepipeline.c.g gVar2 = aVar.a() == com.facebook.imagepipeline.l.b.SMALL ? this.f2663b : this.f2662a;
        Object objD = cmVar.d();
        com.facebook.imagepipeline.l.g gVar3 = null;
        com.facebook.c.a.f fVar3 = null;
        int i = 0;
        while (i < list.size()) {
            com.facebook.imagepipeline.l.g gVar4 = list.get(i);
            com.facebook.c.a.f fVarA = this.f2664c.a(aVar, gVar4.a(), objD);
            if (gVar2.a(fVarA) && a(gVar4, gVar3, dVar)) {
                gVar = gVar4;
                fVar2 = fVarA;
            } else {
                fVar2 = fVar3;
                gVar = gVar3;
            }
            i++;
            gVar3 = gVar;
            fVar3 = fVar2;
        }
        if (fVar3 == null) {
            lVarA = a.l.a((Object) null);
            z = false;
        } else {
            lVarA = gVar2.a(fVar3, atomicBoolean);
            z = !fVar.c() && a(gVar3, dVar);
        }
        return lVarA.a((a.j<com.facebook.imagepipeline.h.d, TContinuationResult>) a(oVar, cmVar, z));
    }

    private static boolean a(com.facebook.imagepipeline.l.g gVar, com.facebook.imagepipeline.d.d dVar) {
        return gVar.b() >= dVar.f2479a && gVar.c() >= dVar.f2480b;
    }

    private static boolean a(com.facebook.imagepipeline.l.g gVar, com.facebook.imagepipeline.l.g gVar2, com.facebook.imagepipeline.d.d dVar) {
        if (gVar2 == null) {
            return true;
        }
        return a(gVar2, dVar) ? gVar.b() < gVar2.b() && a(gVar, dVar) : gVar.b() > gVar2.b();
    }

    private a.j<com.facebook.imagepipeline.h.d, Void> a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar, boolean z) {
        return new bi(this, cmVar.c(), cmVar.b(), oVar, cmVar, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        this.f2666e.a(new bk(this, oVar, cmVar), cmVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(a.l<?> lVar) {
        return lVar.c() || (lVar.d() && (lVar.f() instanceof CancellationException));
    }

    static Map<String, String> a(co coVar, String str, boolean z, boolean z2) {
        if (!coVar.b(str)) {
            return null;
        }
        if (z) {
            return com.facebook.d.d.e.a("cached_value_found", String.valueOf(true), "cached_value_used_as_last", String.valueOf(z2));
        }
        return com.facebook.d.d.e.a("cached_value_found", String.valueOf(false));
    }

    private void a(AtomicBoolean atomicBoolean, cm cmVar) {
        cmVar.a(new bj(this, atomicBoolean));
    }
}
