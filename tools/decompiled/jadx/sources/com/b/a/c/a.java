package com.b.a.c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.Log;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: AnimatedGifEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f739b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f741d;
    private OutputStream h;
    private Bitmap i;
    private byte[] j;
    private byte[] k;
    private int l;
    private byte[] m;
    private boolean u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f740c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f742e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f743f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f744g = false;
    private boolean[] n = new boolean[256];
    private int o = 7;
    private int p = -1;
    private boolean q = false;
    private boolean r = true;
    private boolean s = false;
    private int t = 10;

    public void a(int i) {
        this.f743f = Math.round(i / 10.0f);
    }

    public boolean a(Bitmap bitmap) {
        if (bitmap == null || !this.f744g) {
            return false;
        }
        try {
            if (!this.s) {
                a(bitmap.getWidth(), bitmap.getHeight());
            }
            this.i = bitmap;
            c();
            b();
            if (this.r) {
                f();
                h();
                if (this.f742e >= 0) {
                    g();
                }
            }
            d();
            e();
            if (!this.r) {
                h();
            }
            i();
            this.r = false;
            return true;
        } catch (IOException e2) {
            return false;
        }
    }

    public boolean a() {
        boolean z;
        if (!this.f744g) {
            return false;
        }
        this.f744g = false;
        try {
            this.h.write(59);
            this.h.flush();
            if (this.q) {
                this.h.close();
            }
            z = true;
        } catch (IOException e2) {
            z = false;
        }
        this.f741d = 0;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.m = null;
        this.q = false;
        this.r = true;
        return z;
    }

    public void a(int i, int i2) {
        if (!this.f744g || this.r) {
            this.f738a = i;
            this.f739b = i2;
            if (this.f738a < 1) {
                this.f738a = 320;
            }
            if (this.f739b < 1) {
                this.f739b = 240;
            }
            this.s = true;
        }
    }

    public boolean a(OutputStream outputStream) {
        if (outputStream == null) {
            return false;
        }
        boolean z = true;
        this.q = false;
        this.h = outputStream;
        try {
            a("GIF89a");
        } catch (IOException e2) {
            z = false;
        }
        this.f744g = z;
        return z;
    }

    private void b() {
        int length = this.j.length;
        int i = length / 3;
        this.k = new byte[i];
        c cVar = new c(this.j, length, this.t);
        this.m = cVar.d();
        for (int i2 = 0; i2 < this.m.length; i2 += 3) {
            byte b2 = this.m[i2];
            this.m[i2] = this.m[i2 + 2];
            this.m[i2 + 2] = b2;
            this.n[i2 / 3] = false;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = i3 + 1;
            int i6 = i5 + 1;
            i3 = i6 + 1;
            int iA = cVar.a(this.j[i3] & UnsignedBytes.MAX_VALUE, this.j[i5] & UnsignedBytes.MAX_VALUE, this.j[i6] & UnsignedBytes.MAX_VALUE);
            this.n[iA] = true;
            this.k[i4] = (byte) iA;
        }
        this.j = null;
        this.l = 8;
        this.o = 7;
        if (this.f740c != null) {
            this.f741d = b(this.f740c.intValue());
        } else if (this.u) {
            this.f741d = b(0);
        }
    }

    private int b(int i) {
        int i2;
        int i3 = 0;
        if (this.m == null) {
            return -1;
        }
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        int i4 = 16777216;
        int length = this.m.length;
        int i5 = 0;
        while (i3 < length) {
            int i6 = i3 + 1;
            int i7 = iRed - (this.m[i3] & UnsignedBytes.MAX_VALUE);
            int i8 = i6 + 1;
            int i9 = iGreen - (this.m[i6] & UnsignedBytes.MAX_VALUE);
            int i10 = iBlue - (this.m[i8] & UnsignedBytes.MAX_VALUE);
            int i11 = (i7 * i7) + (i9 * i9) + (i10 * i10);
            int i12 = i8 / 3;
            if (!this.n[i12] || i11 >= i4) {
                i11 = i4;
                i2 = i5;
            } else {
                i2 = i12;
            }
            i5 = i2;
            i4 = i11;
            i3 = i8 + 1;
        }
        return i5;
    }

    private void c() {
        int width = this.i.getWidth();
        int height = this.i.getHeight();
        if (width != this.f738a || height != this.f739b) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.f738a, this.f739b, Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, (Paint) null);
            this.i = bitmapCreateBitmap;
        }
        int[] iArr = new int[width * height];
        this.i.getPixels(iArr, 0, width, 0, 0, width, height);
        this.j = new byte[iArr.length * 3];
        this.u = false;
        int i = 0;
        int i2 = 0;
        for (int i3 : iArr) {
            if (i3 == 0) {
                i++;
            }
            int i4 = i2 + 1;
            this.j[i2] = (byte) (i3 & 255);
            int i5 = i4 + 1;
            this.j[i4] = (byte) ((i3 >> 8) & 255);
            i2 = i5 + 1;
            this.j[i5] = (byte) ((i3 >> 16) & 255);
        }
        double length = ((double) (i * 100)) / ((double) iArr.length);
        this.u = length > 4.0d;
        if (Log.isLoggable("AnimatedGifEncoder", 3)) {
            Log.d("AnimatedGifEncoder", "got pixels for frame with " + length + "% transparent pixels");
        }
    }

    private void d() throws IOException {
        int i;
        int i2;
        this.h.write(33);
        this.h.write(249);
        this.h.write(4);
        if (this.f740c != null || this.u) {
            i = 1;
            i2 = 2;
        } else {
            i2 = 0;
            i = 0;
        }
        if (this.p >= 0) {
            i2 = this.p & 7;
        }
        this.h.write((i2 << 2) | 0 | 0 | i);
        c(this.f743f);
        this.h.write(this.f741d);
        this.h.write(0);
    }

    private void e() throws IOException {
        this.h.write(44);
        c(0);
        c(0);
        c(this.f738a);
        c(this.f739b);
        if (this.r) {
            this.h.write(0);
        } else {
            this.h.write(this.o | 128);
        }
    }

    private void f() throws IOException {
        c(this.f738a);
        c(this.f739b);
        this.h.write(this.o | 240);
        this.h.write(0);
        this.h.write(0);
    }

    private void g() throws IOException {
        this.h.write(33);
        this.h.write(255);
        this.h.write(11);
        a("NETSCAPE2.0");
        this.h.write(3);
        this.h.write(1);
        c(this.f742e);
        this.h.write(0);
    }

    private void h() throws IOException {
        this.h.write(this.m, 0, this.m.length);
        int length = 768 - this.m.length;
        for (int i = 0; i < length; i++) {
            this.h.write(0);
        }
    }

    private void i() throws IOException {
        new b(this.f738a, this.f739b, this.k, this.l).b(this.h);
    }

    private void c(int i) throws IOException {
        this.h.write(i & 255);
        this.h.write((i >> 8) & 255);
    }

    private void a(String str) throws IOException {
        for (int i = 0; i < str.length(); i++) {
            this.h.write((byte) str.charAt(i));
        }
    }
}
