package com.d.a.a.b;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;

/* JADX INFO: compiled from: NumberOutput.java */
/* JADX INFO: loaded from: classes2.dex */
public final class h {
    private static final byte[] j;
    private static final String[] k;
    private static final String[] l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f1368b = 1000000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f1369c = 1000000000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f1370d = 10000000000L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f1371e = 1000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f1372f = -2147483648L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f1373g = 2147483647L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f1367a = String.valueOf(Long.MIN_VALUE);
    private static final char[] h = new char[4000];
    private static final char[] i = new char[4000];

    static {
        int i2 = 0;
        int i3 = 0;
        while (i2 < 10) {
            char c2 = (char) (i2 + 48);
            char c3 = i2 == 0 ? (char) 0 : c2;
            int i4 = 0;
            while (i4 < 10) {
                char c4 = (char) (i4 + 48);
                char c5 = (i2 == 0 && i4 == 0) ? (char) 0 : c4;
                int i5 = i3;
                for (int i6 = 0; i6 < 10; i6++) {
                    char c6 = (char) (i6 + 48);
                    h[i5] = c3;
                    h[i5 + 1] = c5;
                    h[i5 + 2] = c6;
                    i[i5] = c2;
                    i[i5 + 1] = c4;
                    i[i5 + 2] = c6;
                    i5 += 4;
                }
                i4++;
                i3 = i5;
            }
            i2++;
        }
        j = new byte[4000];
        for (int i7 = 0; i7 < 4000; i7++) {
            j[i7] = (byte) i[i7];
        }
        k = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
        l = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    public static int a(int i2, char[] cArr, int i3) {
        int iB;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                return a(i2, cArr, i3);
            }
            cArr[i3] = '-';
            i2 = -i2;
            i3++;
        }
        if (i2 < f1368b) {
            if (i2 < 1000) {
                if (i2 < 10) {
                    int i4 = i3 + 1;
                    cArr[i3] = (char) (i2 + 48);
                    return i4;
                }
                return b(i2, cArr, i3);
            }
            int i5 = i2 / 1000;
            return c(i2 - (i5 * 1000), cArr, b(i5, cArr, i3));
        }
        boolean z = i2 >= f1369c;
        if (z) {
            i2 -= f1369c;
            if (i2 >= f1369c) {
                i2 -= f1369c;
                cArr[i3] = '2';
                i3++;
            } else {
                cArr[i3] = '1';
                i3++;
            }
        }
        int i6 = i2 / 1000;
        int i7 = i2 - (i6 * 1000);
        int i8 = i6 / 1000;
        int i9 = i6 - (i8 * 1000);
        if (z) {
            iB = c(i8, cArr, i3);
        } else {
            iB = b(i8, cArr, i3);
        }
        return c(i7, cArr, c(i9, cArr, iB));
    }

    public static int a(int i2, byte[] bArr, int i3) {
        int iB;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                return a(i2, bArr, i3);
            }
            bArr[i3] = ClosedCaptionCtrl.CARRIAGE_RETURN;
            i2 = -i2;
            i3++;
        }
        if (i2 < f1368b) {
            if (i2 < 1000) {
                if (i2 < 10) {
                    int i4 = i3 + 1;
                    bArr[i3] = (byte) (i2 + 48);
                    return i4;
                }
                return b(i2, bArr, i3);
            }
            int i5 = i2 / 1000;
            return c(i2 - (i5 * 1000), bArr, b(i5, bArr, i3));
        }
        boolean z = i2 >= f1369c;
        if (z) {
            i2 -= f1369c;
            if (i2 >= f1369c) {
                i2 -= f1369c;
                bArr[i3] = 50;
                i3++;
            } else {
                bArr[i3] = 49;
                i3++;
            }
        }
        int i6 = i2 / 1000;
        int i7 = i2 - (i6 * 1000);
        int i8 = i6 / 1000;
        int i9 = i6 - (i8 * 1000);
        if (z) {
            iB = c(i8, bArr, i3);
        } else {
            iB = b(i8, bArr, i3);
        }
        return c(i7, bArr, c(i9, bArr, iB));
    }

    public static int a(long j2, char[] cArr, int i2) {
        if (j2 < 0) {
            if (j2 > f1372f) {
                return a((int) j2, cArr, i2);
            }
            if (j2 == Long.MIN_VALUE) {
                int length = f1367a.length();
                f1367a.getChars(0, length, cArr, i2);
                return i2 + length;
            }
            cArr[i2] = '-';
            j2 = -j2;
            i2++;
        } else if (j2 <= f1373g) {
            return a((int) j2, cArr, i2);
        }
        int iA = i2 + a(j2);
        int i3 = iA;
        while (j2 > f1373g) {
            i3 -= 3;
            long j3 = j2 / f1371e;
            c((int) (j2 - (f1371e * j3)), cArr, i3);
            j2 = j3;
        }
        int i4 = i3;
        int i5 = (int) j2;
        while (i5 >= 1000) {
            int i6 = i4 - 3;
            int i7 = i5 / 1000;
            c(i5 - (i7 * 1000), cArr, i6);
            i5 = i7;
            i4 = i6;
        }
        b(i5, cArr, i2);
        return iA;
    }

    public static int a(long j2, byte[] bArr, int i2) {
        if (j2 < 0) {
            if (j2 > f1372f) {
                return a((int) j2, bArr, i2);
            }
            if (j2 == Long.MIN_VALUE) {
                int length = f1367a.length();
                int i3 = 0;
                int i4 = i2;
                while (i3 < length) {
                    bArr[i4] = (byte) f1367a.charAt(i3);
                    i3++;
                    i4++;
                }
                return i4;
            }
            bArr[i2] = ClosedCaptionCtrl.CARRIAGE_RETURN;
            j2 = -j2;
            i2++;
        } else if (j2 <= f1373g) {
            return a((int) j2, bArr, i2);
        }
        int iA = i2 + a(j2);
        int i5 = iA;
        while (j2 > f1373g) {
            i5 -= 3;
            long j3 = j2 / f1371e;
            c((int) (j2 - (f1371e * j3)), bArr, i5);
            j2 = j3;
        }
        int i6 = i5;
        int i7 = (int) j2;
        while (i7 >= 1000) {
            int i8 = i6 - 3;
            int i9 = i7 / 1000;
            c(i7 - (i9 * 1000), bArr, i8);
            i7 = i9;
            i6 = i8;
        }
        b(i7, bArr, i2);
        return iA;
    }

    private static int b(int i2, char[] cArr, int i3) {
        int i4 = i2 << 2;
        int i5 = i4 + 1;
        char c2 = h[i4];
        if (c2 != 0) {
            cArr[i3] = c2;
            i3++;
        }
        int i6 = i5 + 1;
        char c3 = h[i5];
        if (c3 != 0) {
            cArr[i3] = c3;
            i3++;
        }
        int i7 = i3 + 1;
        cArr[i3] = h[i6];
        return i7;
    }

    private static int b(int i2, byte[] bArr, int i3) {
        int i4 = i2 << 2;
        int i5 = i4 + 1;
        char c2 = h[i4];
        if (c2 != 0) {
            bArr[i3] = (byte) c2;
            i3++;
        }
        int i6 = i5 + 1;
        char c3 = h[i5];
        if (c3 != 0) {
            bArr[i3] = (byte) c3;
            i3++;
        }
        int i7 = i3 + 1;
        bArr[i3] = (byte) h[i6];
        return i7;
    }

    private static int c(int i2, char[] cArr, int i3) {
        int i4 = i2 << 2;
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        cArr[i3] = i[i4];
        int i7 = i5 + 1;
        cArr[i5] = i[i6];
        int i8 = i7 + 1;
        cArr[i7] = i[i6 + 1];
        return i8;
    }

    private static int c(int i2, byte[] bArr, int i3) {
        int i4 = i2 << 2;
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        bArr[i3] = j[i4];
        int i7 = i5 + 1;
        bArr[i5] = j[i6];
        int i8 = i7 + 1;
        bArr[i7] = j[i6 + 1];
        return i8;
    }

    private static int a(long j2) {
        int i2 = 10;
        for (long j3 = f1370d; j2 >= j3 && i2 != 19; j3 = (j3 << 1) + (j3 << 3)) {
            i2++;
        }
        return i2;
    }
}
