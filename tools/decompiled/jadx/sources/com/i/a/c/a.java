package com.i.a.c;

import android.opengl.GLES10;
import com.i.a.b.a.i;

/* JADX INFO: compiled from: ImageSizeUtils.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.i.a.b.a.f f3396a;

    static {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        int iMax = Math.max(iArr[0], 2048);
        f3396a = new com.i.a.b.a.f(iMax, iMax);
    }

    public static com.i.a.b.a.f a(com.i.a.b.e.a aVar, com.i.a.b.a.f fVar) {
        int iA = aVar.a();
        if (iA <= 0) {
            iA = fVar.a();
        }
        int iB = aVar.b();
        if (iB <= 0) {
            iB = fVar.b();
        }
        return new com.i.a.b.a.f(iA, iB);
    }

    public static int a(com.i.a.b.a.f fVar, com.i.a.b.a.f fVar2, i iVar, boolean z) {
        int iMin;
        int iA = fVar.a();
        int iB = fVar.b();
        int iA2 = fVar2.a();
        int iB2 = fVar2.b();
        int i = iA / iA2;
        int i2 = iB / iB2;
        switch (iVar) {
            case FIT_INSIDE:
                if (!z) {
                    iMin = Math.max(i, i2);
                } else {
                    int i3 = iA;
                    int i4 = iB;
                    iMin = 1;
                    while (true) {
                        if (i3 / 2 >= iA2 || i4 / 2 >= iB2) {
                            i3 /= 2;
                            i4 /= 2;
                            iMin *= 2;
                        }
                    }
                }
                break;
            case CROP:
                if (z) {
                    int i5 = iA;
                    int i6 = iB;
                    iMin = 1;
                    while (i5 / 2 >= iA2 && i6 / 2 >= iB2) {
                        i5 /= 2;
                        i6 /= 2;
                        iMin *= 2;
                    }
                } else {
                    iMin = Math.min(i, i2);
                }
                break;
            default:
                iMin = 1;
                break;
        }
        if (iMin < 1) {
            return 1;
        }
        return iMin;
    }

    public static int a(com.i.a.b.a.f fVar) {
        int iA = fVar.a();
        int iB = fVar.b();
        return Math.max((int) Math.ceil(iA / f3396a.a()), (int) Math.ceil(iB / f3396a.b()));
    }

    public static float b(com.i.a.b.a.f fVar, com.i.a.b.a.f fVar2, i iVar, boolean z) {
        int i;
        int i2;
        int iA = fVar.a();
        int iB = fVar.b();
        int iA2 = fVar2.a();
        int iB2 = fVar2.b();
        float f2 = iA / iA2;
        float f3 = iB / iB2;
        if ((iVar == i.FIT_INSIDE && f2 >= f3) || (iVar == i.CROP && f2 < f3)) {
            int i3 = (int) (iB / f2);
            i = iA2;
            i2 = i3;
        } else {
            i = (int) (iA / f3);
            i2 = iB2;
        }
        if ((z || i >= iA || i2 >= iB) && (!z || i == iA || i2 == iB)) {
            return 1.0f;
        }
        return i / iA;
    }
}
