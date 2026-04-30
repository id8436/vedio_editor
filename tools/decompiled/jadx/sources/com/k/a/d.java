package com.k.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.NetworkInfo;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: BitmapHunter.java */
/* JADX INFO: loaded from: classes3.dex */
class d implements Runnable {
    private static final Object t = new Object();
    private static final ThreadLocal<StringBuilder> u = new e();
    private static final AtomicInteger v = new AtomicInteger();
    private static final bb w = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f3538a = v.incrementAndGet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ak f3539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final r f3540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final k f3541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final be f3542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final String f3543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ax f3544g;
    final int h;
    int i;
    final bb j;
    a k;
    List<a> l;
    Bitmap m;
    Future<?> n;
    aq o;
    Exception p;
    int q;
    int r;
    ar s;

    d(ak akVar, r rVar, k kVar, be beVar, a aVar, bb bbVar) {
        this.f3539b = akVar;
        this.f3540c = rVar;
        this.f3541d = kVar;
        this.f3542e = beVar;
        this.k = aVar;
        this.f3543f = aVar.e();
        this.f3544g = aVar.c();
        this.s = aVar.k();
        this.h = aVar.h();
        this.i = aVar.i();
        this.j = bbVar;
        this.r = bbVar.a();
    }

    static Bitmap a(InputStream inputStream, ax axVar) throws IOException {
        ac acVar = new ac(inputStream);
        long jA = acVar.a(65536);
        BitmapFactory.Options optionsC = bb.c(axVar);
        boolean zA = bb.a(optionsC);
        boolean zC = bm.c(acVar);
        acVar.a(jA);
        if (zC) {
            byte[] bArrB = bm.b(acVar);
            if (zA) {
                BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length, optionsC);
                bb.a(axVar.h, axVar.i, optionsC, axVar);
            }
            return BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length, optionsC);
        }
        if (zA) {
            BitmapFactory.decodeStream(acVar, null, optionsC);
            bb.a(axVar.h, axVar.i, optionsC, axVar);
            acVar.a(jA);
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(acVar, null, optionsC);
        if (bitmapDecodeStream == null) {
            throw new IOException("Failed to decode stream.");
        }
        return bitmapDecodeStream;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            a(this.f3544g);
            if (this.f3539b.l) {
                bm.a("Hunter", "executing", bm.a(this));
            }
            this.m = a();
            if (this.m == null) {
                this.f3540c.c(this);
            } else {
                this.f3540c.a(this);
            }
        } catch (Exception e2) {
            this.p = e2;
            this.f3540c.c(this);
        } catch (OutOfMemoryError e3) {
            StringWriter stringWriter = new StringWriter();
            this.f3542e.e().a(new PrintWriter(stringWriter));
            this.p = new RuntimeException(stringWriter.toString(), e3);
            this.f3540c.c(this);
        } catch (ai e4) {
            this.p = e4;
            this.f3540c.b(this);
        } catch (y e5) {
            if (!e5.f3572a || e5.f3573b != 504) {
                this.p = e5;
            }
            this.f3540c.c(this);
        } catch (IOException e6) {
            this.p = e6;
            this.f3540c.b(this);
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    Bitmap a() throws IOException {
        Bitmap bitmapA = null;
        if (af.a(this.h) && (bitmapA = this.f3541d.a(this.f3543f)) != null) {
            this.f3542e.a();
            this.o = aq.MEMORY;
            if (this.f3539b.l) {
                bm.a("Hunter", "decoded", this.f3544g.a(), "from cache");
            }
        } else {
            this.f3544g.f3489c = this.r == 0 ? ag.OFFLINE.f3447d : this.i;
            bc bcVarA = this.j.a(this.f3544g, this.i);
            if (bcVarA != null) {
                this.o = bcVarA.c();
                this.q = bcVarA.d();
                bitmapA = bcVarA.a();
                if (bitmapA == null) {
                    InputStream inputStreamB = bcVarA.b();
                    try {
                        bitmapA = a(inputStreamB, this.f3544g);
                    } finally {
                        bm.a(inputStreamB);
                    }
                }
            }
            if (bitmapA != null) {
                if (this.f3539b.l) {
                    bm.a("Hunter", "decoded", this.f3544g.a());
                }
                this.f3542e.a(bitmapA);
                if (this.f3544g.e() || this.q != 0) {
                    synchronized (t) {
                        if (this.f3544g.f() || this.q != 0) {
                            bitmapA = a(this.f3544g, bitmapA, this.q);
                            if (this.f3539b.l) {
                                bm.a("Hunter", "transformed", this.f3544g.a());
                            }
                        }
                        if (this.f3544g.g()) {
                            bitmapA = a(this.f3544g.f3493g, bitmapA);
                            if (this.f3539b.l) {
                                bm.a("Hunter", "transformed", this.f3544g.a(), "from custom transformations");
                            }
                        }
                    }
                    if (bitmapA != null) {
                        this.f3542e.b(bitmapA);
                    }
                }
            }
        }
        return bitmapA;
    }

    void a(a aVar) {
        boolean z = this.f3539b.l;
        ax axVar = aVar.f3414b;
        if (this.k == null) {
            this.k = aVar;
            if (z) {
                if (this.l == null || this.l.isEmpty()) {
                    bm.a("Hunter", "joined", axVar.a(), "to empty hunter");
                    return;
                } else {
                    bm.a("Hunter", "joined", axVar.a(), bm.a(this, "to "));
                    return;
                }
            }
            return;
        }
        if (this.l == null) {
            this.l = new ArrayList(3);
        }
        this.l.add(aVar);
        if (z) {
            bm.a("Hunter", "joined", axVar.a(), bm.a(this, "to "));
        }
        ar arVarK = aVar.k();
        if (arVarK.ordinal() > this.s.ordinal()) {
            this.s = arVarK;
        }
    }

    void b(a aVar) {
        boolean zRemove = false;
        if (this.k == aVar) {
            this.k = null;
            zRemove = true;
        } else if (this.l != null) {
            zRemove = this.l.remove(aVar);
        }
        if (zRemove && aVar.k() == this.s) {
            this.s = o();
        }
        if (this.f3539b.l) {
            bm.a("Hunter", "removed", aVar.f3414b.a(), bm.a(this, "from "));
        }
    }

    private ar o() {
        boolean z = true;
        int i = 0;
        ar arVar = ar.LOW;
        boolean z2 = (this.l == null || this.l.isEmpty()) ? false : true;
        if (this.k == null && !z2) {
            z = false;
        }
        if (!z) {
            return arVar;
        }
        ar arVarK = this.k != null ? this.k.k() : arVar;
        if (z2) {
            int size = this.l.size();
            while (i < size) {
                ar arVarK2 = this.l.get(i).k();
                if (arVarK2.ordinal() <= arVarK.ordinal()) {
                    arVarK2 = arVarK;
                }
                i++;
                arVarK = arVarK2;
            }
            return arVarK;
        }
        return arVarK;
    }

    boolean b() {
        if (this.k == null) {
            return (this.l == null || this.l.isEmpty()) && this.n != null && this.n.cancel(false);
        }
        return false;
    }

    boolean c() {
        return this.n != null && this.n.isCancelled();
    }

    boolean a(boolean z, NetworkInfo networkInfo) {
        if (!(this.r > 0)) {
            return false;
        }
        this.r--;
        return this.j.a(z, networkInfo);
    }

    boolean d() {
        return this.j.b();
    }

    Bitmap e() {
        return this.m;
    }

    String f() {
        return this.f3543f;
    }

    int g() {
        return this.h;
    }

    ax h() {
        return this.f3544g;
    }

    a i() {
        return this.k;
    }

    ak j() {
        return this.f3539b;
    }

    List<a> k() {
        return this.l;
    }

    Exception l() {
        return this.p;
    }

    aq m() {
        return this.o;
    }

    ar n() {
        return this.s;
    }

    static void a(ax axVar) {
        String strC = axVar.c();
        StringBuilder sb = u.get();
        sb.ensureCapacity("Picasso-".length() + strC.length());
        sb.replace("Picasso-".length(), sb.length(), strC);
        Thread.currentThread().setName(sb.toString());
    }

    static d a(ak akVar, r rVar, k kVar, be beVar, a aVar) {
        ax axVarC = aVar.c();
        List<bb> listA = akVar.a();
        int size = listA.size();
        for (int i = 0; i < size; i++) {
            bb bbVar = listA.get(i);
            if (bbVar.a(axVarC)) {
                return new d(akVar, rVar, kVar, beVar, aVar, bbVar);
            }
        }
        return new d(akVar, rVar, kVar, beVar, aVar, w);
    }

    static Bitmap a(List<bi> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        Bitmap bitmap2 = bitmap;
        while (i < size) {
            bi biVar = list.get(i);
            try {
                Bitmap bitmapTransform = biVar.transform(bitmap2);
                if (bitmapTransform == null) {
                    StringBuilder sbAppend = new StringBuilder().append("Transformation ").append(biVar.key()).append(" returned null after ").append(i).append(" previous transformation(s).\n\nTransformation list:\n");
                    Iterator<bi> it = list.iterator();
                    while (it.hasNext()) {
                        sbAppend.append(it.next().key()).append('\n');
                    }
                    ak.f3451a.post(new h(sbAppend));
                    return null;
                }
                if (bitmapTransform == bitmap2 && bitmap2.isRecycled()) {
                    ak.f3451a.post(new i(biVar));
                    return null;
                }
                if (bitmapTransform == bitmap2 || bitmap2.isRecycled()) {
                    i++;
                    bitmap2 = bitmapTransform;
                } else {
                    ak.f3451a.post(new j(biVar));
                    return null;
                }
            } catch (RuntimeException e2) {
                ak.f3451a.post(new g(biVar, e2));
                return null;
            }
        }
        return bitmap2;
    }

    static Bitmap a(ax axVar, Bitmap bitmap, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int iCeil;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        boolean z = axVar.l;
        Matrix matrix = new Matrix();
        if (!axVar.f()) {
            i2 = 0;
            i3 = 0;
            i4 = height;
            i5 = width;
        } else {
            int i9 = axVar.h;
            int i10 = axVar.i;
            float f2 = axVar.m;
            if (f2 != 0.0f) {
                if (axVar.p) {
                    matrix.setRotate(f2, axVar.n, axVar.o);
                } else {
                    matrix.setRotate(f2);
                }
            }
            if (axVar.j) {
                float f3 = i9 / width;
                float f4 = i10 / height;
                if (f3 > f4) {
                    iCeil = (int) Math.ceil((f4 / f3) * height);
                    f4 = i10 / iCeil;
                    i6 = 0;
                    i7 = (height - iCeil) / 2;
                    i8 = width;
                } else {
                    int iCeil2 = (int) Math.ceil((f3 / f4) * width);
                    f3 = i9 / iCeil2;
                    i6 = (width - iCeil2) / 2;
                    i7 = 0;
                    i8 = iCeil2;
                    iCeil = height;
                }
                if (a(z, width, height, i9, i10)) {
                    matrix.preScale(f3, f4);
                }
                i5 = i8;
                i3 = i6;
                i4 = iCeil;
                i2 = i7;
            } else if (axVar.k) {
                float f5 = i9 / width;
                float f6 = i10 / height;
                if (f5 >= f6) {
                    f5 = f6;
                }
                if (a(z, width, height, i9, i10)) {
                    matrix.preScale(f5, f5);
                }
                i2 = 0;
                i3 = 0;
                i4 = height;
                i5 = width;
            } else {
                if ((i9 != 0 || i10 != 0) && (i9 != width || i10 != height)) {
                    float f7 = i9 != 0 ? i9 / width : i10 / height;
                    float f8 = i10 != 0 ? i10 / height : i9 / width;
                    if (a(z, width, height, i9, i10)) {
                        matrix.preScale(f7, f8);
                    }
                }
                i2 = 0;
                i3 = 0;
                i4 = height;
                i5 = width;
            }
        }
        if (i != 0) {
            matrix.preRotate(i);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i3, i2, i5, i4, matrix, true);
        if (bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
            return bitmapCreateBitmap;
        }
        return bitmap;
    }

    private static boolean a(boolean z, int i, int i2, int i3, int i4) {
        return !z || i > i3 || i2 > i4;
    }
}
