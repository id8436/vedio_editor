package com.b.a.c;

import android.support.v4.app.FrameMetricsAggregator;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: LZWEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f745a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f747c;
    int j;
    int k;
    int l;
    int p;
    private int r;
    private int s;
    private byte[] t;
    private int u;
    private int v;
    private int w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f746b = 12;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f748d = 4096;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f749e = new int[5003];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int[] f750f = new int[5003];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f751g = 5003;
    int h = 0;
    boolean i = false;
    int m = 0;
    int n = 0;
    int[] o = {0, 1, 3, 7, 15, 31, 63, 127, 255, FrameMetricsAggregator.EVERY_DURATION, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    byte[] q = new byte[256];

    b(int i, int i2, byte[] bArr, int i3) {
        this.r = i;
        this.s = i2;
        this.t = bArr;
        this.u = Math.max(2, i3);
    }

    void a(byte b2, OutputStream outputStream) throws IOException {
        byte[] bArr = this.q;
        int i = this.p;
        this.p = i + 1;
        bArr[i] = b2;
        if (this.p >= 254) {
            c(outputStream);
        }
    }

    void a(OutputStream outputStream) throws IOException {
        a(this.f751g);
        this.h = this.k + 2;
        this.i = true;
        b(this.k, outputStream);
    }

    void a(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this.f749e[i2] = -1;
        }
    }

    void a(int i, OutputStream outputStream) throws IOException {
        int i2 = 0;
        this.j = i;
        this.i = false;
        this.f745a = this.j;
        this.f747c = b(this.f745a);
        this.k = 1 << (i - 1);
        this.l = this.k + 1;
        this.h = this.k + 2;
        this.p = 0;
        int iA = a();
        for (int i3 = this.f751g; i3 < 65536; i3 *= 2) {
            i2++;
        }
        int i4 = 8 - i2;
        int i5 = this.f751g;
        a(i5);
        b(this.k, outputStream);
        while (true) {
            int iA2 = a();
            if (iA2 != -1) {
                int i6 = (iA2 << this.f746b) + iA;
                int i7 = (iA2 << i4) ^ iA;
                if (this.f749e[i7] == i6) {
                    iA = this.f750f[i7];
                } else {
                    if (this.f749e[i7] >= 0) {
                        int i8 = i5 - i7;
                        if (i7 == 0) {
                            i8 = 1;
                        }
                        do {
                            i7 -= i8;
                            if (i7 < 0) {
                                i7 += i5;
                            }
                            if (this.f749e[i7] == i6) {
                                iA = this.f750f[i7];
                                break;
                            }
                        } while (this.f749e[i7] >= 0);
                    }
                    b(iA, outputStream);
                    if (this.h < this.f748d) {
                        int[] iArr = this.f750f;
                        int i9 = this.h;
                        this.h = i9 + 1;
                        iArr[i7] = i9;
                        this.f749e[i7] = i6;
                        iA = iA2;
                    } else {
                        a(outputStream);
                        iA = iA2;
                    }
                }
            } else {
                b(iA, outputStream);
                b(this.l, outputStream);
                return;
            }
        }
    }

    void b(OutputStream outputStream) throws IOException {
        outputStream.write(this.u);
        this.v = this.r * this.s;
        this.w = 0;
        a(this.u + 1, outputStream);
        outputStream.write(0);
    }

    void c(OutputStream outputStream) throws IOException {
        if (this.p > 0) {
            outputStream.write(this.p);
            outputStream.write(this.q, 0, this.p);
            this.p = 0;
        }
    }

    final int b(int i) {
        return (1 << i) - 1;
    }

    private int a() {
        if (this.v == 0) {
            return -1;
        }
        this.v--;
        byte[] bArr = this.t;
        int i = this.w;
        this.w = i + 1;
        return bArr[i] & UnsignedBytes.MAX_VALUE;
    }

    void b(int i, OutputStream outputStream) throws IOException {
        this.m &= this.o[this.n];
        if (this.n > 0) {
            this.m |= i << this.n;
        } else {
            this.m = i;
        }
        this.n += this.f745a;
        while (this.n >= 8) {
            a((byte) (this.m & 255), outputStream);
            this.m >>= 8;
            this.n -= 8;
        }
        if (this.h > this.f747c || this.i) {
            if (this.i) {
                int i2 = this.j;
                this.f745a = i2;
                this.f747c = b(i2);
                this.i = false;
            } else {
                this.f745a++;
                if (this.f745a == this.f746b) {
                    this.f747c = this.f748d;
                } else {
                    this.f747c = b(this.f745a);
                }
            }
        }
        if (i == this.l) {
            while (this.n > 0) {
                a((byte) (this.m & 255), outputStream);
                this.m >>= 8;
                this.n -= 8;
            }
            c(outputStream);
        }
    }
}
