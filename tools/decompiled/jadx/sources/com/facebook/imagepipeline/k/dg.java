package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: ThumbnailSizeChecker.java */
/* JADX INFO: loaded from: classes2.dex */
public final class dg {
    public static boolean a(int i, int i2, com.facebook.imagepipeline.d.d dVar) {
        return dVar == null ? ((float) a(i)) >= 2048.0f && a(i2) >= 2048 : a(i) >= dVar.f2479a && a(i2) >= dVar.f2480b;
    }

    public static boolean a(com.facebook.imagepipeline.h.d dVar, com.facebook.imagepipeline.d.d dVar2) {
        if (dVar == null) {
            return false;
        }
        switch (dVar.f()) {
            case 90:
            case 270:
                return a(dVar.h(), dVar.g(), dVar2);
            default:
                return a(dVar.g(), dVar.h(), dVar2);
        }
    }

    public static int a(int i) {
        return (int) (i * 1.3333334f);
    }
}
