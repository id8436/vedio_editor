package com.facebook.imagepipeline.k;

import com.adobe.premiereclip.project.sequence.Sequence;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ResizeAndRotateProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class cp implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f2739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.aj f2740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f2741c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cl<com.facebook.imagepipeline.h.d> f2742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f2743e;

    public cp(Executor executor, com.facebook.imagepipeline.memory.aj ajVar, boolean z, cl<com.facebook.imagepipeline.h.d> clVar, boolean z2) {
        this.f2739a = (Executor) com.facebook.d.d.k.a(executor);
        this.f2740b = (com.facebook.imagepipeline.memory.aj) com.facebook.d.d.k.a(ajVar);
        this.f2741c = z;
        this.f2742d = (cl) com.facebook.d.d.k.a(clVar);
        this.f2743e = z2;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        this.f2742d.a(new cq(this, oVar, cmVar), cmVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.facebook.d.m.e c(com.facebook.imagepipeline.l.a aVar, com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (dVar == null || dVar.e() == com.facebook.g.c.f2252a) {
            return com.facebook.d.m.e.UNSET;
        }
        if (dVar.e() != com.facebook.g.b.f2245a) {
            return com.facebook.d.m.e.NO;
        }
        return com.facebook.d.m.e.a(c(aVar.g(), dVar) || b(d(aVar, dVar, z)));
    }

    static float a(com.facebook.imagepipeline.d.d dVar, int i, int i2) {
        if (dVar == null) {
            return 1.0f;
        }
        float fMax = Math.max(dVar.f2479a / i, dVar.f2480b / i2);
        if (i * fMax > dVar.f2481c) {
            fMax = dVar.f2481c / i;
        }
        if (i2 * fMax > dVar.f2481c) {
            return dVar.f2481c / i2;
        }
        return fMax;
    }

    static int a(float f2, float f3) {
        return (int) ((8.0f * f2) + f3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(com.facebook.imagepipeline.l.a aVar, com.facebook.imagepipeline.h.d dVar, boolean z) {
        com.facebook.imagepipeline.d.d dVarF;
        if (z && (dVarF = aVar.f()) != null) {
            int iB = b(aVar.g(), dVar);
            boolean z2 = iB == 90 || iB == 270;
            int iA = a(a(dVarF, z2 ? dVar.h() : dVar.g(), z2 ? dVar.g() : dVar.h()), dVarF.f2482d);
            if (iA > 8) {
                return 8;
            }
            if (iA < 1) {
                return 1;
            }
            return iA;
        }
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(com.facebook.imagepipeline.d.e eVar, com.facebook.imagepipeline.h.d dVar) {
        if (!eVar.d()) {
            return 0;
        }
        int iA = a(dVar);
        return !eVar.c() ? (iA + eVar.e()) % Sequence.PLAYBACK_HEIGHT : iA;
    }

    private static int a(com.facebook.imagepipeline.h.d dVar) {
        switch (dVar.f()) {
            case 90:
            case 180:
            case 270:
                return dVar.f();
            default:
                return 0;
        }
    }

    private static boolean b(int i) {
        return i < 8;
    }

    private static boolean c(com.facebook.imagepipeline.d.e eVar, com.facebook.imagepipeline.h.d dVar) {
        return (eVar.f() || b(eVar, dVar) == 0) ? false : true;
    }

    static int a(int i) {
        return Math.max(1, 8 / i);
    }
}
