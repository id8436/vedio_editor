package com.i.a.b;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;

/* JADX INFO: compiled from: ImageLoader.java */
/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f3338a = g.class.getSimpleName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile g f3339e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f3340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o f3341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.i.a.b.f.a f3342d = new com.i.a.b.f.c();

    public static g a() {
        if (f3339e == null) {
            synchronized (g.class) {
                if (f3339e == null) {
                    f3339e = new g();
                }
            }
        }
        return f3339e;
    }

    protected g() {
    }

    public synchronized void a(j jVar) {
        if (jVar == null) {
            throw new IllegalArgumentException("ImageLoader configuration can not be initialized with null");
        }
        if (this.f3340b == null) {
            com.i.a.c.e.a("Initialize ImageLoader with configuration", new Object[0]);
            this.f3341c = new o(jVar);
            this.f3340b = jVar;
        } else {
            com.i.a.c.e.c("Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
        }
    }

    public boolean b() {
        return this.f3340b != null;
    }

    public void a(String str, com.i.a.b.e.a aVar, d dVar, com.i.a.b.f.a aVar2, com.i.a.b.f.b bVar) {
        d();
        if (aVar == null) {
            throw new IllegalArgumentException("Wrong arguments were passed to displayImage() method (ImageView reference must not be null)");
        }
        com.i.a.b.f.a aVar3 = aVar2 == null ? this.f3342d : aVar2;
        d dVar2 = dVar == null ? this.f3340b.r : dVar;
        if (TextUtils.isEmpty(str)) {
            this.f3341c.b(aVar);
            aVar3.onLoadingStarted(str, aVar.d());
            if (dVar2.b()) {
                aVar.a(dVar2.b(this.f3340b.f3344a));
            } else {
                aVar.a((Drawable) null);
            }
            aVar3.onLoadingComplete(str, aVar.d(), null);
            return;
        }
        com.i.a.b.a.f fVarA = com.i.a.c.a.a(aVar, this.f3340b.a());
        String strA = com.i.a.c.f.a(str, fVarA);
        this.f3341c.a(aVar, strA);
        aVar3.onLoadingStarted(str, aVar.d());
        Bitmap bitmapA = this.f3340b.n.a(strA);
        if (bitmapA != null && !bitmapA.isRecycled()) {
            com.i.a.c.e.a("Load image from memory cache [%s]", strA);
            if (dVar2.e()) {
                w wVar = new w(this.f3341c, bitmapA, new q(str, aVar, fVarA, strA, dVar2, aVar3, bVar, this.f3341c.a(str)), a(dVar2));
                if (dVar2.s()) {
                    wVar.run();
                    return;
                } else {
                    this.f3341c.a(wVar);
                    return;
                }
            }
            dVar2.q().display(bitmapA, aVar, com.i.a.b.a.g.MEMORY_CACHE);
            aVar3.onLoadingComplete(str, aVar.d(), bitmapA);
            return;
        }
        if (dVar2.a()) {
            aVar.a(dVar2.a(this.f3340b.f3344a));
        } else if (dVar2.g()) {
            aVar.a((Drawable) null);
        }
        r rVar = new r(this.f3341c, new q(str, aVar, fVarA, strA, dVar2, aVar3, bVar, this.f3341c.a(str)), a(dVar2));
        if (dVar2.s()) {
            rVar.run();
        } else {
            this.f3341c.a(rVar);
        }
    }

    public void a(String str, ImageView imageView) {
        a(str, new com.i.a.b.e.b(imageView), (d) null, (com.i.a.b.f.a) null, (com.i.a.b.f.b) null);
    }

    public void a(String str, ImageView imageView, d dVar) {
        a(str, new com.i.a.b.e.b(imageView), dVar, (com.i.a.b.f.a) null, (com.i.a.b.f.b) null);
    }

    public void a(String str, ImageView imageView, d dVar, com.i.a.b.f.a aVar) {
        a(str, imageView, dVar, aVar, (com.i.a.b.f.b) null);
    }

    public void a(String str, ImageView imageView, d dVar, com.i.a.b.f.a aVar, com.i.a.b.f.b bVar) {
        a(str, new com.i.a.b.e.b(imageView), dVar, aVar, bVar);
    }

    public void a(String str, com.i.a.b.f.a aVar) {
        a(str, (com.i.a.b.a.f) null, (d) null, aVar, (com.i.a.b.f.b) null);
    }

    public void a(String str, com.i.a.b.a.f fVar, d dVar, com.i.a.b.f.a aVar) {
        a(str, fVar, dVar, aVar, (com.i.a.b.f.b) null);
    }

    public void a(String str, com.i.a.b.a.f fVar, d dVar, com.i.a.b.f.a aVar, com.i.a.b.f.b bVar) {
        d();
        if (fVar == null) {
            fVar = this.f3340b.a();
        }
        a(str, new com.i.a.b.e.c(str, fVar, com.i.a.b.a.i.CROP), dVar == null ? this.f3340b.r : dVar, aVar, bVar);
    }

    public Bitmap a(String str, d dVar) {
        return a(str, (com.i.a.b.a.f) null, dVar);
    }

    public Bitmap a(String str, com.i.a.b.a.f fVar, d dVar) {
        if (dVar == null) {
            dVar = this.f3340b.r;
        }
        d dVarA = new f().a(dVar).d(true).a();
        i iVar = new i();
        a(str, fVar, dVarA, iVar);
        return iVar.a();
    }

    private void d() {
        if (this.f3340b == null) {
            throw new IllegalStateException("ImageLoader must be init with configuration before using");
        }
    }

    public com.i.a.a.b.a c() {
        d();
        return this.f3340b.n;
    }

    public void a(ImageView imageView) {
        this.f3341c.b(new com.i.a.b.e.b(imageView));
    }

    private static Handler a(d dVar) {
        Handler handlerR = dVar.r();
        if (dVar.s()) {
            return null;
        }
        if (handlerR == null && Looper.myLooper() == Looper.getMainLooper()) {
            return new Handler();
        }
        return handlerR;
    }
}
