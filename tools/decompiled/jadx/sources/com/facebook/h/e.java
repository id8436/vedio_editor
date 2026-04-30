package com.facebook.h;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: TiffUtil.java */
/* JADX INFO: loaded from: classes2.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f2267a = e.class;

    e() {
    }

    public static int a(int i) {
        switch (i) {
            case 0:
            case 1:
                break;
            case 2:
            case 4:
            case 5:
            case 7:
            default:
                com.facebook.d.e.a.b(f2267a, "Unsupported orientation");
                break;
            case 3:
                break;
            case 6:
                break;
            case 8:
                break;
        }
        return 0;
    }

    public static int a(InputStream inputStream, int i) throws IOException {
        g gVar = new g();
        int iA = a(inputStream, i, gVar);
        int i2 = gVar.f2270c - 8;
        if (iA == 0 || i2 > iA) {
            return 0;
        }
        inputStream.skip(i2);
        return a(inputStream, a(inputStream, iA - i2, gVar.f2268a, 274), gVar.f2268a);
    }

    private static int a(InputStream inputStream, int i, g gVar) throws IOException {
        if (i <= 8) {
            return 0;
        }
        gVar.f2269b = d.a(inputStream, 4, false);
        int i2 = i - 4;
        if (gVar.f2269b != 1229531648 && gVar.f2269b != 1296891946) {
            com.facebook.d.e.a.d(f2267a, "Invalid TIFF header");
            return 0;
        }
        gVar.f2268a = gVar.f2269b == 1229531648;
        gVar.f2270c = d.a(inputStream, 4, gVar.f2268a);
        int i3 = i2 - 4;
        if (gVar.f2270c >= 8 && gVar.f2270c - 8 <= i3) {
            return i3;
        }
        com.facebook.d.e.a.d(f2267a, "Invalid offset");
        return 0;
    }

    private static int a(InputStream inputStream, int i, boolean z, int i2) throws IOException {
        if (i < 14) {
            return 0;
        }
        int iA = d.a(inputStream, 2, z);
        int i3 = i - 2;
        while (true) {
            int i4 = iA - 1;
            if (iA <= 0 || i3 < 12) {
                return 0;
            }
            int i5 = i3 - 2;
            if (d.a(inputStream, 2, z) == i2) {
                return i5;
            }
            inputStream.skip(10L);
            i3 = i5 - 10;
            iA = i4;
        }
    }

    private static int a(InputStream inputStream, int i, boolean z) throws IOException {
        if (i < 10 || d.a(inputStream, 2, z) != 3 || d.a(inputStream, 4, z) != 1) {
            return 0;
        }
        int iA = d.a(inputStream, 2, z);
        d.a(inputStream, 2, z);
        return iA;
    }
}
