package com.d.a.a.b;

import java.lang.ref.SoftReference;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: JsonStringEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected com.d.a.a.e.b f1358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final char[] f1359c = new char[6];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final char[] f1356d = a.g();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f1357e = a.h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final ThreadLocal<SoftReference<e>> f1355a = new ThreadLocal<>();

    public e() {
        this.f1359c[0] = IOUtils.DIR_SEPARATOR_WINDOWS;
        this.f1359c[2] = '0';
        this.f1359c[3] = '0';
    }

    public static e a() {
        SoftReference<e> softReference = f1355a.get();
        e eVar = softReference == null ? null : softReference.get();
        if (eVar == null) {
            e eVar2 = new e();
            f1355a.set(new SoftReference<>(eVar2));
            return eVar2;
        }
        return eVar;
    }

    public byte[] a(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        com.d.a.a.e.b bVar = this.f1358b;
        if (bVar == null) {
            bVar = new com.d.a.a.e.b(null);
            this.f1358b = bVar;
        }
        int length = str.length();
        byte[] bArrC = bVar.c();
        int length2 = bArrC.length;
        int i6 = 0;
        int i7 = 0;
        loop0: while (true) {
            if (i7 >= length) {
                i = i6;
                break;
            }
            int i8 = i7 + 1;
            char cCharAt = str.charAt(i7);
            int i9 = length2;
            byte[] bArrD = bArrC;
            int i10 = i6;
            int length3 = i9;
            while (cCharAt <= 127) {
                if (i10 >= length3) {
                    bArrD = bVar.d();
                    length3 = bArrD.length;
                    i10 = 0;
                }
                int i11 = i10 + 1;
                bArrD[i10] = (byte) cCharAt;
                if (i8 >= length) {
                    i = i11;
                    break loop0;
                }
                cCharAt = str.charAt(i8);
                i8++;
                i10 = i11;
            }
            if (i10 >= length3) {
                bArrD = bVar.d();
                length3 = bArrD.length;
                i2 = 0;
            } else {
                i2 = i10;
            }
            if (cCharAt < 2048) {
                i3 = i2 + 1;
                bArrD[i2] = (byte) ((cCharAt >> 6) | 192);
                i4 = cCharAt;
                i7 = i8;
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                int i12 = i2 + 1;
                bArrD[i2] = (byte) ((cCharAt >> '\f') | 224);
                if (i12 >= length3) {
                    bArrD = bVar.d();
                    length3 = bArrD.length;
                    i12 = 0;
                }
                bArrD[i12] = (byte) (((cCharAt >> 6) & 63) | 128);
                i3 = i12 + 1;
                i4 = cCharAt;
                i7 = i8;
            } else {
                if (cCharAt > 56319) {
                    a(cCharAt);
                }
                if (i8 >= length) {
                    a(cCharAt);
                }
                int i13 = i8 + 1;
                int iA = a(cCharAt, str.charAt(i8));
                if (iA > 1114111) {
                    a(iA);
                }
                int i14 = i2 + 1;
                bArrD[i2] = (byte) ((iA >> 18) | 240);
                if (i14 >= length3) {
                    bArrD = bVar.d();
                    length3 = bArrD.length;
                    i14 = 0;
                }
                int i15 = i14 + 1;
                bArrD[i14] = (byte) (((iA >> 12) & 63) | 128);
                if (i15 >= length3) {
                    bArrD = bVar.d();
                    length3 = bArrD.length;
                    i5 = 0;
                } else {
                    i5 = i15;
                }
                bArrD[i5] = (byte) (((iA >> 6) & 63) | 128);
                i3 = i5 + 1;
                i4 = iA;
                i7 = i13;
            }
            if (i3 >= length3) {
                bArrD = bVar.d();
                length3 = bArrD.length;
                i3 = 0;
            }
            int i16 = i3 + 1;
            bArrD[i3] = (byte) ((i4 & 63) | 128);
            bArrC = bArrD;
            length2 = length3;
            i6 = i16;
        }
        return this.f1358b.d(i);
    }

    private static int a(int i, int i2) {
        if (i2 < 56320 || i2 > 57343) {
            throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2) + "; illegal combination");
        }
        return 65536 + ((i - 55296) << 10) + (i2 - 56320);
    }

    private static void a(int i) {
        throw new IllegalArgumentException(l.c(i));
    }
}
