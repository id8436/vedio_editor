package com.i.a.b;

import android.graphics.Bitmap;
import android.os.Handler;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: LoadAndDisplayImageTask.java */
/* JADX INFO: loaded from: classes3.dex */
final class r implements com.i.a.c.d, Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f3377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.i.a.b.e.a f3378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final d f3379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final com.i.a.b.f.a f3380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final com.i.a.b.f.b f3381e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o f3382f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final q f3383g;
    private final Handler h;
    private final j i;
    private final com.i.a.b.d.c j;
    private final com.i.a.b.d.c k;
    private final com.i.a.b.d.c l;
    private final com.i.a.b.b.d m;
    private final String n;
    private final com.i.a.b.a.f o;
    private final boolean p;
    private com.i.a.b.a.g q = com.i.a.b.a.g.NETWORK;

    public r(o oVar, q qVar, Handler handler) {
        this.f3382f = oVar;
        this.f3383g = qVar;
        this.h = handler;
        this.i = oVar.f3361a;
        this.j = this.i.p;
        this.k = this.i.s;
        this.l = this.i.t;
        this.m = this.i.q;
        this.f3377a = qVar.f3370a;
        this.n = qVar.f3371b;
        this.f3378b = qVar.f3372c;
        this.o = qVar.f3373d;
        this.f3379c = qVar.f3374e;
        this.f3380d = qVar.f3375f;
        this.f3381e = qVar.f3376g;
        this.p = this.f3379c.s();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!b() && !c()) {
            ReentrantLock reentrantLock = this.f3383g.h;
            com.i.a.c.e.a("Start display image task [%s]", this.n);
            if (reentrantLock.isLocked()) {
                com.i.a.c.e.a("Image already is loading. Waiting... [%s]", this.n);
            }
            reentrantLock.lock();
            try {
                i();
                Bitmap bitmapA = this.i.n.a(this.n);
                if (bitmapA == null || bitmapA.isRecycled()) {
                    bitmapA = d();
                    if (bitmapA != null) {
                        i();
                        o();
                        if (this.f3379c.d()) {
                            com.i.a.c.e.a("PreProcess image before caching in memory [%s]", this.n);
                            bitmapA = this.f3379c.o().a(bitmapA);
                            if (bitmapA == null) {
                                com.i.a.c.e.d("Pre-processor returned null [%s]", this.n);
                            }
                        }
                        if (bitmapA != null && this.f3379c.h()) {
                            com.i.a.c.e.a("Cache image in memory [%s]", this.n);
                            this.i.n.a(this.n, bitmapA);
                        }
                    } else {
                        return;
                    }
                } else {
                    this.q = com.i.a.b.a.g.MEMORY_CACHE;
                    com.i.a.c.e.a("...Get cached bitmap from memory after waiting. [%s]", this.n);
                }
                if (bitmapA != null && this.f3379c.e()) {
                    com.i.a.c.e.a("PostProcess image before displaying [%s]", this.n);
                    bitmapA = this.f3379c.p().a(bitmapA);
                    if (bitmapA == null) {
                        com.i.a.c.e.d("Post-processor returned null [%s]", this.n);
                    }
                }
                i();
                o();
                reentrantLock.unlock();
                a(new c(bitmapA, this.f3383g, this.f3382f, this.q), this.p, this.h, this.f3382f);
            } catch (v e2) {
                g();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    private boolean b() {
        AtomicBoolean atomicBooleanA = this.f3382f.a();
        if (atomicBooleanA.get()) {
            synchronized (this.f3382f.b()) {
                if (atomicBooleanA.get()) {
                    com.i.a.c.e.a("ImageLoader is paused. Waiting...  [%s]", this.n);
                    try {
                        this.f3382f.b().wait();
                        com.i.a.c.e.a(".. Resume loading [%s]", this.n);
                    } catch (InterruptedException e2) {
                        com.i.a.c.e.d("Task was interrupted [%s]", this.n);
                        return true;
                    }
                }
            }
        }
        return j();
    }

    private boolean c() {
        if (!this.f3379c.f()) {
            return false;
        }
        com.i.a.c.e.a("Delay %d ms before loading...  [%s]", Integer.valueOf(this.f3379c.l()), this.n);
        try {
            Thread.sleep(this.f3379c.l());
            return j();
        } catch (InterruptedException e2) {
            com.i.a.c.e.d("Task was interrupted [%s]", this.n);
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0044 A[Catch: v -> 0x00a0, Throwable -> 0x00c9, OutOfMemoryError -> 0x00cb, IOException -> 0x00cd, IllegalStateException -> 0x00cf, TryCatch #2 {v -> 0x00a0, blocks: (B:3:0x0001, B:5:0x000d, B:7:0x0013, B:9:0x0038, B:11:0x003e, B:13:0x0044, B:15:0x0060, B:17:0x0066, B:19:0x0072, B:20:0x007c, B:22:0x0085, B:24:0x008b, B:26:0x0091), top: B:51:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap d() throws com.i.a.b.v {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.i.a.b.r.d():android.graphics.Bitmap");
    }

    private Bitmap a(String str) throws IOException {
        return this.m.a(new com.i.a.b.b.e(this.n, str, this.f3377a, this.o, this.f3378b.c(), h(), this.f3379c));
    }

    private boolean e() throws v {
        com.i.a.c.e.a("Cache image on disk [%s]", this.n);
        try {
            boolean zF = f();
            if (zF) {
                int i = this.i.f3347d;
                int i2 = this.i.f3348e;
                if (i > 0 || i2 > 0) {
                    com.i.a.c.e.a("Resize image in disk cache [%s]", this.n);
                    b(i, i2);
                    return zF;
                }
                return zF;
            }
            return zF;
        } catch (IOException e2) {
            com.i.a.c.e.a(e2);
            return false;
        }
    }

    private boolean f() throws IOException {
        return this.i.o.a(this.f3377a, h().a(this.f3377a, this.f3379c.n()), this);
    }

    private boolean b(int i, int i2) throws IOException {
        File fileA = this.i.o.a(this.f3377a);
        if (fileA != null && fileA.exists()) {
            Bitmap bitmapA = this.m.a(new com.i.a.b.b.e(this.n, com.i.a.b.d.d.FILE.b(fileA.getAbsolutePath()), this.f3377a, new com.i.a.b.a.f(i, i2), com.i.a.b.a.i.FIT_INSIDE, h(), new f().a(this.f3379c).a(com.i.a.b.a.e.IN_SAMPLE_INT).a()));
            if (bitmapA != null && this.i.f3349f != null) {
                com.i.a.c.e.a("Process image before cache on disk [%s]", this.n);
                bitmapA = this.i.f3349f.a(bitmapA);
                if (bitmapA == null) {
                    com.i.a.c.e.d("Bitmap processor for disk cache returned null [%s]", this.n);
                }
            }
            Bitmap bitmap = bitmapA;
            if (bitmap != null) {
                boolean zA = this.i.o.a(this.f3377a, bitmap);
                bitmap.recycle();
                return zA;
            }
        }
        return false;
    }

    @Override // com.i.a.c.d
    public boolean a(int i, int i2) {
        return c(i, i2);
    }

    private boolean c(int i, int i2) {
        if (this.p || p() || j()) {
            return false;
        }
        if (this.f3381e != null) {
            a(new s(this, i, i2), false, this.h, this.f3382f);
        }
        return true;
    }

    private void a(com.i.a.b.a.c cVar, Throwable th) {
        if (!this.p && !p() && !j()) {
            a(new t(this, cVar, th), false, this.h, this.f3382f);
        }
    }

    private void g() {
        if (!this.p && !p()) {
            a(new u(this), false, this.h, this.f3382f);
        }
    }

    private com.i.a.b.d.c h() {
        if (this.f3382f.c()) {
            return this.k;
        }
        if (this.f3382f.d()) {
            return this.l;
        }
        return this.j;
    }

    private void i() throws v {
        k();
        m();
    }

    private boolean j() {
        return l() || n();
    }

    private void k() throws v {
        if (l()) {
            throw new v(this);
        }
    }

    private boolean l() {
        if (!this.f3378b.e()) {
            return false;
        }
        com.i.a.c.e.a("ImageAware was collected by GC. Task is cancelled. [%s]", this.n);
        return true;
    }

    private void m() throws v {
        if (n()) {
            throw new v(this);
        }
    }

    private boolean n() {
        if (!(!this.n.equals(this.f3382f.a(this.f3378b)))) {
            return false;
        }
        com.i.a.c.e.a("ImageAware is reused for another image. Task is cancelled. [%s]", this.n);
        return true;
    }

    private void o() throws v {
        if (p()) {
            throw new v(this);
        }
    }

    private boolean p() {
        if (!Thread.interrupted()) {
            return false;
        }
        com.i.a.c.e.a("Task was interrupted [%s]", this.n);
        return true;
    }

    String a() {
        return this.f3377a;
    }

    static void a(Runnable runnable, boolean z, Handler handler, o oVar) {
        if (z) {
            runnable.run();
        } else if (handler == null) {
            oVar.a(runnable);
        } else {
            handler.post(runnable);
        }
    }
}
