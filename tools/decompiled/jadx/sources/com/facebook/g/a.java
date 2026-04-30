package com.facebook.g;

import com.facebook.d.d.k;
import com.google.common.base.Ascii;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DefaultImageFormatChecker.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f2238b = {-1, -40, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f2239c = f2238b.length;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f2240d = {-119, 80, 78, 71, 13, 10, Ascii.SUB, 10};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f2241e = f2240d.length;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte[] f2242f = f.a("GIF87a");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte[] f2243g = f.a("GIF89a");
    private static final byte[] h = f.a("BM");
    private static final int i = h.length;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f2244a = com.facebook.d.d.f.a(21, 20, f2239c, f2241e, 6, i);

    @Override // com.facebook.g.d
    public int a() {
        return this.f2244a;
    }

    @Override // com.facebook.g.d
    @Nullable
    public final c a(byte[] bArr, int i2) {
        k.a(bArr);
        if (com.facebook.d.n.d.b(bArr, 0, i2)) {
            return b(bArr, i2);
        }
        if (c(bArr, i2)) {
            return b.f2245a;
        }
        if (d(bArr, i2)) {
            return b.f2246b;
        }
        if (e(bArr, i2)) {
            return b.f2247c;
        }
        if (f(bArr, i2)) {
            return b.f2248d;
        }
        return c.f2252a;
    }

    private static c b(byte[] bArr, int i2) {
        k.a(com.facebook.d.n.d.b(bArr, 0, i2));
        if (com.facebook.d.n.d.b(bArr, 0)) {
            return b.f2249e;
        }
        if (com.facebook.d.n.d.c(bArr, 0)) {
            return b.f2250f;
        }
        if (com.facebook.d.n.d.a(bArr, 0, i2)) {
            if (com.facebook.d.n.d.a(bArr, 0)) {
                return b.i;
            }
            if (com.facebook.d.n.d.d(bArr, 0)) {
                return b.h;
            }
            return b.f2251g;
        }
        return c.f2252a;
    }

    private static boolean c(byte[] bArr, int i2) {
        return i2 >= f2238b.length && f.a(bArr, f2238b);
    }

    private static boolean d(byte[] bArr, int i2) {
        return i2 >= f2240d.length && f.a(bArr, f2240d);
    }

    private static boolean e(byte[] bArr, int i2) {
        if (i2 < 6) {
            return false;
        }
        return f.a(bArr, f2242f) || f.a(bArr, f2243g);
    }

    private static boolean f(byte[] bArr, int i2) {
        if (i2 < h.length) {
            return false;
        }
        return f.a(bArr, h);
    }
}
