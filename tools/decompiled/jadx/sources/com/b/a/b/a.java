package com.b.a.b;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: GifDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f713a = a.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Bitmap.Config f714b = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f715c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ByteBuffer f717e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private short[] f719g;
    private byte[] h;
    private byte[] i;
    private byte[] j;
    private int[] k;
    private int l;
    private byte[] m;
    private b o;
    private Bitmap p;
    private boolean q;
    private int r;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f716d = new int[256];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final byte[] f718f = new byte[256];
    private d n = new d();

    public a(b bVar) {
        this.o = bVar;
    }

    public void a() {
        this.l = (this.l + 1) % this.n.f729c;
    }

    public int a(int i) {
        if (i < 0 || i >= this.n.f729c) {
            return -1;
        }
        return this.n.f731e.get(i).i;
    }

    public int b() {
        if (this.n.f729c <= 0 || this.l < 0) {
            return -1;
        }
        return a(this.l);
    }

    public int c() {
        return this.n.f729c;
    }

    public int d() {
        return this.l;
    }

    public int e() {
        if (this.n.m == -1) {
            return 1;
        }
        if (this.n.m == 0) {
            return 0;
        }
        return this.n.m + 1;
    }

    public synchronized Bitmap f() {
        Bitmap bitmapA;
        if (this.n.f729c <= 0 || this.l < 0) {
            if (Log.isLoggable(f713a, 3)) {
                Log.d(f713a, "unable to decode frame, frameCount=" + this.n.f729c + " framePointer=" + this.l);
            }
            this.r = 1;
        }
        if (this.r == 1 || this.r == 2) {
            if (Log.isLoggable(f713a, 3)) {
                Log.d(f713a, "Unable to decode frame, status=" + this.r);
            }
            bitmapA = null;
        } else {
            this.r = 0;
            c cVar = this.n.f731e.get(this.l);
            int i = this.l - 1;
            c cVar2 = i >= 0 ? this.n.f731e.get(i) : null;
            this.f715c = cVar.k != null ? cVar.k : this.n.f727a;
            if (this.f715c == null) {
                if (Log.isLoggable(f713a, 3)) {
                    Log.d(f713a, "No Valid Color Table");
                }
                this.r = 1;
                bitmapA = null;
            } else {
                if (cVar.f725f) {
                    System.arraycopy(this.f715c, 0, this.f716d, 0, this.f715c.length);
                    this.f715c = this.f716d;
                    this.f715c[cVar.h] = 0;
                }
                bitmapA = a(cVar, cVar2);
            }
        }
        return bitmapA;
    }

    public void g() {
        this.n = null;
        this.m = null;
        this.j = null;
        this.k = null;
        if (this.p != null) {
            this.o.a(this.p);
        }
        this.p = null;
        this.f717e = null;
    }

    public void a(d dVar, byte[] bArr) {
        this.n = dVar;
        this.m = bArr;
        this.r = 0;
        this.l = -1;
        this.f717e = ByteBuffer.wrap(bArr);
        this.f717e.rewind();
        this.f717e.order(ByteOrder.LITTLE_ENDIAN);
        this.q = false;
        Iterator<c> it = dVar.f731e.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().f726g == 3) {
                this.q = true;
                break;
            }
        }
        this.j = new byte[dVar.f732f * dVar.f733g];
        this.k = new int[dVar.f732f * dVar.f733g];
    }

    private Bitmap a(c cVar, c cVar2) {
        int i;
        int i2 = this.n.f732f;
        int i3 = this.n.f733g;
        int[] iArr = this.k;
        if (cVar2 == null) {
            Arrays.fill(iArr, 0);
        }
        if (cVar2 != null && cVar2.f726g > 0) {
            if (cVar2.f726g == 2) {
                int i4 = 0;
                if (!cVar.f725f) {
                    i4 = this.n.l;
                    if (cVar.k != null && this.n.j == cVar.h) {
                        i4 = 0;
                    }
                }
                int i5 = cVar2.f720a + (cVar2.f721b * i2);
                int i6 = i5 + (cVar2.f723d * i2);
                while (i5 < i6) {
                    int i7 = i5 + cVar2.f722c;
                    for (int i8 = i5; i8 < i7; i8++) {
                        iArr[i8] = i4;
                    }
                    i5 += i2;
                }
            } else if (cVar2.f726g == 3 && this.p != null) {
                this.p.getPixels(iArr, 0, i2, 0, 0, i2, i3);
            }
        }
        a(cVar);
        int i9 = 1;
        int i10 = 8;
        int i11 = 0;
        for (int i12 = 0; i12 < cVar.f723d; i12++) {
            if (cVar.f724e) {
                if (i11 >= cVar.f723d) {
                    i9++;
                    switch (i9) {
                        case 2:
                            i11 = 4;
                            break;
                        case 3:
                            i11 = 2;
                            i10 = 4;
                            break;
                        case 4:
                            i11 = 1;
                            i10 = 2;
                            break;
                    }
                }
                int i13 = i11;
                i11 += i10;
                i = i13;
            } else {
                i = i12;
            }
            int i14 = i + cVar.f721b;
            if (i14 < this.n.f733g) {
                int i15 = this.n.f732f * i14;
                int i16 = i15 + cVar.f720a;
                int i17 = cVar.f722c + i16;
                if (this.n.f732f + i15 < i17) {
                    i17 = this.n.f732f + i15;
                }
                int i18 = cVar.f722c * i12;
                int i19 = i16;
                while (i19 < i17) {
                    int i20 = i18 + 1;
                    int i21 = this.f715c[this.j[i18] & UnsignedBytes.MAX_VALUE];
                    if (i21 != 0) {
                        iArr[i19] = i21;
                    }
                    i19++;
                    i18 = i20;
                }
            }
        }
        if (this.q && (cVar.f726g == 0 || cVar.f726g == 1)) {
            if (this.p == null) {
                this.p = j();
            }
            this.p.setPixels(iArr, 0, i2, 0, 0, i2, i3);
        }
        Bitmap bitmapJ = j();
        bitmapJ.setPixels(iArr, 0, i2, 0, 0, i2, i3);
        return bitmapJ;
    }

    private void a(c cVar) {
        int i;
        if (cVar != null) {
            this.f717e.position(cVar.j);
        }
        int i2 = cVar == null ? this.n.f732f * this.n.f733g : cVar.f722c * cVar.f723d;
        if (this.j == null || this.j.length < i2) {
            this.j = new byte[i2];
        }
        if (this.f719g == null) {
            this.f719g = new short[4096];
        }
        if (this.h == null) {
            this.h = new byte[4096];
        }
        if (this.i == null) {
            this.i = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        int iH = h();
        int i3 = 1 << iH;
        int i4 = i3 + 1;
        int i5 = i3 + 2;
        int i6 = -1;
        int i7 = iH + 1;
        int i8 = (1 << i7) - 1;
        for (int i9 = 0; i9 < i3; i9++) {
            this.f719g[i9] = 0;
            this.h[i9] = (byte) i9;
        }
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = i7;
        int i16 = i8;
        int i17 = i5;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            if (i11 >= i2) {
                break;
            }
            if (i19 == 0) {
                i19 = i();
                if (i19 <= 0) {
                    this.r = 3;
                    break;
                }
                i18 = 0;
            }
            int i21 = i10 + ((this.f718f[i18] & UnsignedBytes.MAX_VALUE) << i14);
            int i22 = i14 + 8;
            int i23 = i18 + 1;
            int i24 = i19 - 1;
            int i25 = i15;
            int i26 = i16;
            int i27 = i13;
            int i28 = i21;
            int i29 = i20;
            int i30 = i17;
            int i31 = i22;
            while (true) {
                if (i31 < i25) {
                    i13 = i27;
                    i16 = i26;
                    i19 = i24;
                    i15 = i25;
                    i18 = i23;
                    int i32 = i31;
                    i17 = i30;
                    i20 = i29;
                    i10 = i28;
                    i14 = i32;
                    break;
                }
                int i33 = i28 & i26;
                int i34 = i28 >> i25;
                i31 -= i25;
                if (i33 == i3) {
                    i25 = iH + 1;
                    i26 = (1 << i25) - 1;
                    i30 = i3 + 2;
                    i28 = i34;
                    i6 = -1;
                } else {
                    if (i33 > i30) {
                        this.r = 3;
                        i13 = i27;
                        i14 = i31;
                        i15 = i25;
                        i17 = i30;
                        i18 = i23;
                        i20 = i29;
                        i10 = i34;
                        i16 = i26;
                        i19 = i24;
                        break;
                    }
                    if (i33 == i4) {
                        i13 = i27;
                        i14 = i31;
                        i15 = i25;
                        i17 = i30;
                        i18 = i23;
                        i20 = i29;
                        i10 = i34;
                        i16 = i26;
                        i19 = i24;
                        break;
                    }
                    if (i6 == -1) {
                        this.i[i12] = this.h[i33];
                        i12++;
                        i27 = i33;
                        i6 = i33;
                        i28 = i34;
                    } else {
                        if (i33 >= i30) {
                            this.i[i12] = (byte) i27;
                            i12++;
                            i = i6;
                        } else {
                            i = i33;
                        }
                        while (i >= i3) {
                            this.i[i12] = this.h[i];
                            i = this.f719g[i];
                            i12++;
                        }
                        i27 = this.h[i] & UnsignedBytes.MAX_VALUE;
                        int i35 = i12 + 1;
                        this.i[i12] = (byte) i27;
                        if (i30 < 4096) {
                            this.f719g[i30] = (short) i6;
                            this.h[i30] = (byte) i27;
                            i30++;
                            if ((i30 & i26) == 0 && i30 < 4096) {
                                i25++;
                                i26 += i30;
                            }
                        }
                        int i36 = i11;
                        while (i35 > 0) {
                            int i37 = i35 - 1;
                            this.j[i29] = this.i[i37];
                            i36++;
                            i29++;
                            i35 = i37;
                        }
                        i11 = i36;
                        i6 = i33;
                        i12 = i35;
                        i28 = i34;
                    }
                }
            }
        }
        for (int i38 = i20; i38 < i2; i38++) {
            this.j[i38] = 0;
        }
    }

    private int h() {
        try {
            return this.f717e.get() & UnsignedBytes.MAX_VALUE;
        } catch (Exception e2) {
            this.r = 1;
            return 0;
        }
    }

    private int i() {
        int iH = h();
        int i = 0;
        if (iH > 0) {
            while (i < iH) {
                int i2 = iH - i;
                try {
                    this.f717e.get(this.f718f, i, i2);
                    i += i2;
                } catch (Exception e2) {
                    Log.w(f713a, "Error Reading Block", e2);
                    this.r = 1;
                }
            }
        }
        return i;
    }

    private Bitmap j() {
        Bitmap bitmapA = this.o.a(this.n.f732f, this.n.f733g, f714b);
        if (bitmapA == null) {
            bitmapA = Bitmap.createBitmap(this.n.f732f, this.n.f733g, f714b);
        }
        a(bitmapA);
        return bitmapA;
    }

    @TargetApi(12)
    private static void a(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 12) {
            bitmap.setHasAlpha(true);
        }
    }
}
