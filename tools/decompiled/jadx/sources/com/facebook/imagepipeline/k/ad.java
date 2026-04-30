package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: DownsampleUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class ad {
    public static int a(com.facebook.imagepipeline.l.a aVar, com.facebook.imagepipeline.h.d dVar) {
        int iA;
        if (!com.facebook.imagepipeline.h.d.c(dVar)) {
            return 1;
        }
        float fB = b(aVar, dVar);
        if (dVar.e() == com.facebook.g.b.f2245a) {
            iA = b(fB);
        } else {
            iA = a(fB);
        }
        int iMax = Math.max(dVar.h(), dVar.g());
        com.facebook.imagepipeline.d.d dVarF = aVar.f();
        float f2 = dVarF != null ? dVarF.f2481c : 2048.0f;
        while (iMax / iA > f2) {
            if (dVar.e() == com.facebook.g.b.f2245a) {
                iA *= 2;
            } else {
                iA++;
            }
        }
        return iA;
    }

    static float b(com.facebook.imagepipeline.l.a aVar, com.facebook.imagepipeline.h.d dVar) {
        com.facebook.d.d.k.a(com.facebook.imagepipeline.h.d.c(dVar));
        com.facebook.imagepipeline.d.d dVarF = aVar.f();
        if (dVarF == null || dVarF.f2480b <= 0 || dVarF.f2479a <= 0 || dVar.g() == 0 || dVar.h() == 0) {
            return 1.0f;
        }
        int iC = c(aVar, dVar);
        boolean z = iC == 90 || iC == 270;
        int iH = z ? dVar.h() : dVar.g();
        int iG = z ? dVar.g() : dVar.h();
        float f2 = dVarF.f2479a / iH;
        float f3 = dVarF.f2480b / iG;
        float fMax = Math.max(f2, f3);
        com.facebook.d.e.a.a("DownsampleUtil", "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f for %s", Integer.valueOf(dVarF.f2479a), Integer.valueOf(dVarF.f2480b), Integer.valueOf(iH), Integer.valueOf(iG), Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(fMax), aVar.b().toString());
        return fMax;
    }

    static int a(float f2) {
        if (f2 > 0.6666667f) {
            return 1;
        }
        int i = 2;
        while (true) {
            if (((1.0d / (Math.pow(i, 2.0d) - ((double) i))) * 0.3333333432674408d) + (1.0d / ((double) i)) <= f2) {
                return i - 1;
            }
            i++;
        }
    }

    static int b(float f2) {
        if (f2 > 0.6666667f) {
            return 1;
        }
        int i = 2;
        while (true) {
            if (((1.0d / ((double) (i * 2))) * 0.3333333432674408d) + (1.0d / ((double) (i * 2))) <= f2) {
                return i;
            }
            i *= 2;
        }
    }

    private static int c(com.facebook.imagepipeline.l.a aVar, com.facebook.imagepipeline.h.d dVar) {
        if (!aVar.g().c()) {
            return 0;
        }
        int iF = dVar.f();
        com.facebook.d.d.k.a(iF == 0 || iF == 90 || iF == 180 || iF == 270);
        return iF;
    }
}
