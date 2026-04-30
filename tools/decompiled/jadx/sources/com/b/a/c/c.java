package com.b.a.c;

import android.support.v7.widget.ActivityChooserView;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: compiled from: NeuQuant.java */
/* JADX INFO: loaded from: classes2.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected byte[] f753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f754c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f755d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int[] f757f = new int[256];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int[] f758g = new int[256];
    protected int[] h = new int[256];
    protected int[] i = new int[32];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int[][] f756e = new int[256][];

    public c(byte[] bArr, int i, int i2) {
        this.f753b = bArr;
        this.f754c = i;
        this.f755d = i2;
        for (int i3 = 0; i3 < 256; i3++) {
            this.f756e[i3] = new int[4];
            int[] iArr = this.f756e[i3];
            int i4 = (i3 << 12) / 256;
            iArr[2] = i4;
            iArr[1] = i4;
            iArr[0] = i4;
            this.h[i3] = 256;
            this.f758g[i3] = 0;
        }
    }

    public byte[] a() {
        byte[] bArr = new byte[768];
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            iArr[this.f756e[i][3]] = i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            int i4 = iArr[i3];
            int i5 = i2 + 1;
            bArr[i2] = (byte) this.f756e[i4][0];
            int i6 = i5 + 1;
            bArr[i5] = (byte) this.f756e[i4][1];
            i2 = i6 + 1;
            bArr[i6] = (byte) this.f756e[i4][2];
        }
        return bArr;
    }

    public void b() {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i5 < 256) {
            int[] iArr = this.f756e[i5];
            int i6 = iArr[1];
            int i7 = i5;
            for (int i8 = i5 + 1; i8 < 256; i8++) {
                int[] iArr2 = this.f756e[i8];
                if (iArr2[1] < i6) {
                    i6 = iArr2[1];
                    i7 = i8;
                }
            }
            int[] iArr3 = this.f756e[i7];
            if (i5 != i7) {
                int i9 = iArr3[0];
                iArr3[0] = iArr[0];
                iArr[0] = i9;
                int i10 = iArr3[1];
                iArr3[1] = iArr[1];
                iArr[1] = i10;
                int i11 = iArr3[2];
                iArr3[2] = iArr[2];
                iArr[2] = i11;
                int i12 = iArr3[3];
                iArr3[3] = iArr[3];
                iArr[3] = i12;
            }
            if (i6 != i4) {
                this.f757f[i4] = (i3 + i5) >> 1;
                for (int i13 = i4 + 1; i13 < i6; i13++) {
                    this.f757f[i13] = i5;
                }
                i2 = i6;
                i = i5;
            } else {
                i = i3;
                i2 = i4;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        this.f757f[i4] = (i3 + 255) >> 1;
        for (int i14 = i4 + 1; i14 < 256; i14++) {
            this.f757f[i14] = 255;
        }
    }

    public void c() {
        int i;
        if (this.f754c < 1509) {
            this.f755d = 1;
        }
        this.f752a = ((this.f755d - 1) / 3) + 30;
        byte[] bArr = this.f753b;
        int i2 = this.f754c;
        int i3 = this.f754c / (this.f755d * 3);
        int i4 = i3 / 100;
        for (int i5 = 0; i5 < 32; i5++) {
            this.i[i5] = (((1024 - (i5 * i5)) * 256) / 1024) * 1024;
        }
        if (this.f754c < 1509) {
            i = 3;
        } else if (this.f754c % 499 != 0) {
            i = 1497;
        } else if (this.f754c % 491 != 0) {
            i = 1473;
        } else if (this.f754c % 487 != 0) {
            i = 1461;
        } else {
            i = 1509;
        }
        int i6 = 0;
        int i7 = 32;
        int i8 = 2048;
        int i9 = 0;
        int i10 = 1024;
        while (i9 < i3) {
            int i11 = (bArr[i6 + 0] & UnsignedBytes.MAX_VALUE) << 4;
            int i12 = (bArr[i6 + 1] & UnsignedBytes.MAX_VALUE) << 4;
            int i13 = (bArr[i6 + 2] & UnsignedBytes.MAX_VALUE) << 4;
            int iB = b(i11, i12, i13);
            b(i10, iB, i11, i12, i13);
            if (i7 != 0) {
                a(i7, iB, i11, i12, i13);
            }
            int i14 = i6 + i;
            int i15 = i14 >= i2 ? i14 - this.f754c : i14;
            int i16 = i9 + 1;
            int i17 = i4 == 0 ? 1 : i4;
            if (i16 % i17 == 0) {
                int i18 = i10 - (i10 / this.f752a);
                int i19 = i8 - (i8 / 30);
                int i20 = i19 >> 6;
                if (i20 <= 1) {
                    i20 = 0;
                }
                for (int i21 = 0; i21 < i20; i21++) {
                    this.i[i21] = ((((i20 * i20) - (i21 * i21)) * 256) / (i20 * i20)) * i18;
                }
                i6 = i15;
                i4 = i17;
                i7 = i20;
                i8 = i19;
                i9 = i16;
                i10 = i18;
            } else {
                i6 = i15;
                i4 = i17;
                i9 = i16;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(int r13, int r14, int r15) {
        /*
            r12 = this;
            r11 = 2
            r10 = 1
            r9 = 0
            r6 = -1
            r5 = 256(0x100, float:3.59E-43)
            r3 = 1000(0x3e8, float:1.401E-42)
            int[] r0 = r12.f757f
            r4 = r0[r14]
            int r0 = r4 + (-1)
            r1 = r6
            r2 = r3
            r7 = r0
            r3 = r4
        L12:
            if (r3 < r5) goto L16
            if (r7 < 0) goto L6f
        L16:
            if (r3 >= r5) goto L77
            int[][] r0 = r12.f756e
            r8 = r0[r3]
            r0 = r8[r10]
            int r0 = r0 - r14
            if (r0 < r2) goto L35
            r3 = r2
            r4 = r5
            r2 = r1
        L24:
            if (r7 < 0) goto L70
            int[][] r0 = r12.f756e
            r8 = r0[r7]
            r0 = r8[r10]
            int r0 = r14 - r0
            if (r0 < r3) goto L51
            r1 = r2
            r7 = r6
            r2 = r3
            r3 = r4
            goto L12
        L35:
            int r4 = r3 + 1
            if (r0 >= 0) goto L3a
            int r0 = -r0
        L3a:
            r3 = r8[r9]
            int r3 = r3 - r13
            if (r3 >= 0) goto L40
            int r3 = -r3
        L40:
            int r3 = r3 + r0
            if (r3 >= r2) goto L74
            r0 = r8[r11]
            int r0 = r0 - r15
            if (r0 >= 0) goto L49
            int r0 = -r0
        L49:
            int r3 = r3 + r0
            if (r3 >= r2) goto L74
            r0 = 3
            r0 = r8[r0]
            r2 = r0
            goto L24
        L51:
            int r7 = r7 + (-1)
            if (r0 >= 0) goto L56
            int r0 = -r0
        L56:
            r1 = r8[r9]
            int r1 = r1 - r13
            if (r1 >= 0) goto L5c
            int r1 = -r1
        L5c:
            int r1 = r1 + r0
            if (r1 >= r3) goto L70
            r0 = r8[r11]
            int r0 = r0 - r15
            if (r0 >= 0) goto L65
            int r0 = -r0
        L65:
            int r0 = r0 + r1
            if (r0 >= r3) goto L70
            r1 = 3
            r2 = r8[r1]
            r1 = r2
            r3 = r4
            r2 = r0
            goto L12
        L6f:
            return r1
        L70:
            r1 = r2
            r2 = r3
            r3 = r4
            goto L12
        L74:
            r3 = r2
            r2 = r1
            goto L24
        L77:
            r4 = r3
            r3 = r2
            r2 = r1
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.c.c.a(int, int, int):int");
    }

    public byte[] d() {
        c();
        e();
        b();
        return a();
    }

    public void e() {
        for (int i = 0; i < 256; i++) {
            int[] iArr = this.f756e[i];
            iArr[0] = iArr[0] >> 4;
            int[] iArr2 = this.f756e[i];
            iArr2[1] = iArr2[1] >> 4;
            int[] iArr3 = this.f756e[i];
            iArr3[2] = iArr3[2] >> 4;
            this.f756e[i][3] = i;
        }
    }

    protected void a(int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7 = i2 - i;
        int i8 = i7 < -1 ? -1 : i7;
        int i9 = i2 + i;
        if (i9 > 256) {
            i9 = 256;
        }
        int i10 = 1;
        int i11 = i2 - 1;
        int i12 = i2 + 1;
        while (true) {
            if (i12 < i9 || i11 > i8) {
                int i13 = i10 + 1;
                int i14 = this.i[i10];
                if (i12 < i9) {
                    i6 = i12 + 1;
                    int[] iArr = this.f756e[i12];
                    try {
                        iArr[0] = iArr[0] - (((iArr[0] - i3) * i14) / 262144);
                        iArr[1] = iArr[1] - (((iArr[1] - i4) * i14) / 262144);
                        iArr[2] = iArr[2] - (((iArr[2] - i5) * i14) / 262144);
                    } catch (Exception e2) {
                    }
                } else {
                    i6 = i12;
                }
                if (i11 > i8) {
                    int i15 = i11 - 1;
                    int[] iArr2 = this.f756e[i11];
                    try {
                        iArr2[0] = iArr2[0] - (((iArr2[0] - i3) * i14) / 262144);
                        iArr2[1] = iArr2[1] - (((iArr2[1] - i4) * i14) / 262144);
                        iArr2[2] = iArr2[2] - ((i14 * (iArr2[2] - i5)) / 262144);
                        i11 = i15;
                        i12 = i6;
                        i10 = i13;
                    } catch (Exception e3) {
                        i11 = i15;
                        i12 = i6;
                        i10 = i13;
                    }
                } else {
                    i12 = i6;
                    i10 = i13;
                }
            } else {
                return;
            }
        }
    }

    protected void b(int i, int i2, int i3, int i4, int i5) {
        int[] iArr = this.f756e[i2];
        iArr[0] = iArr[0] - (((iArr[0] - i3) * i) / 1024);
        iArr[1] = iArr[1] - (((iArr[1] - i4) * i) / 1024);
        iArr[2] = iArr[2] - (((iArr[2] - i5) * i) / 1024);
    }

    protected int b(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i8 = -1;
        int i9 = Integer.MAX_VALUE;
        int i10 = -1;
        int i11 = 0;
        while (i11 < 256) {
            int[] iArr = this.f756e[i11];
            int i12 = iArr[0] - i;
            if (i12 < 0) {
                i12 = -i12;
            }
            int i13 = iArr[1] - i2;
            if (i13 < 0) {
                i13 = -i13;
            }
            int i14 = i13 + i12;
            int i15 = iArr[2] - i3;
            if (i15 < 0) {
                i15 = -i15;
            }
            int i16 = i14 + i15;
            if (i16 < i9) {
                i4 = i16;
                i5 = i11;
            } else {
                i4 = i9;
                i5 = i10;
            }
            int i17 = i16 - (this.f758g[i11] >> 12);
            if (i17 < i7) {
                i6 = i11;
            } else {
                i17 = i7;
                i6 = i8;
            }
            int i18 = this.h[i11] >> 10;
            int[] iArr2 = this.h;
            iArr2[i11] = iArr2[i11] - i18;
            int[] iArr3 = this.f758g;
            iArr3[i11] = (i18 << 10) + iArr3[i11];
            i11++;
            i7 = i17;
            i8 = i6;
            i10 = i5;
            i9 = i4;
        }
        int[] iArr4 = this.h;
        iArr4[i10] = iArr4[i10] + 64;
        int[] iArr5 = this.f758g;
        iArr5[i10] = iArr5[i10] - 65536;
        return i8;
    }
}
