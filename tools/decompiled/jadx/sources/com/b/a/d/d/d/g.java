package com.b.a.d.d.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* JADX INFO: compiled from: GifFrameLoader.java */
/* JADX INFO: loaded from: classes2.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f1054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.b.a f1055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f1056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1058e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.b.a.e<com.b.a.b.a, com.b.a.b.a, Bitmap, Bitmap> f1059f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private i f1060g;
    private boolean h;

    public g(Context context, j jVar, com.b.a.b.a aVar, int i, int i2) {
        this(jVar, aVar, null, a(context, aVar, i, i2, com.b.a.h.a(context).a()));
    }

    g(j jVar, com.b.a.b.a aVar, Handler handler, com.b.a.e<com.b.a.b.a, com.b.a.b.a, Bitmap, Bitmap> eVar) {
        this.f1057d = false;
        this.f1058e = false;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new k(this)) : handler;
        this.f1054a = jVar;
        this.f1055b = aVar;
        this.f1056c = handler;
        this.f1059f = eVar;
    }

    public void a(com.b.a.d.g<Bitmap> gVar) {
        if (gVar == null) {
            throw new NullPointerException("Transformation must not be null");
        }
        this.f1059f = this.f1059f.b(gVar);
    }

    public void a() {
        if (!this.f1057d) {
            this.f1057d = true;
            this.h = false;
            e();
        }
    }

    public void b() {
        this.f1057d = false;
    }

    public void c() {
        b();
        if (this.f1060g != null) {
            com.b.a.h.a(this.f1060g);
            this.f1060g = null;
        }
        this.h = true;
    }

    public Bitmap d() {
        if (this.f1060g != null) {
            return this.f1060g.a();
        }
        return null;
    }

    private void e() {
        if (this.f1057d && !this.f1058e) {
            this.f1058e = true;
            long jUptimeMillis = SystemClock.uptimeMillis() + ((long) this.f1055b.b());
            this.f1055b.a();
            this.f1059f.b(new l()).a(new i(this.f1056c, this.f1055b.d(), jUptimeMillis));
        }
    }

    void a(i iVar) {
        if (this.h) {
            this.f1056c.obtainMessage(2, iVar).sendToTarget();
            return;
        }
        i iVar2 = this.f1060g;
        this.f1060g = iVar;
        this.f1054a.b(iVar.f1062b);
        if (iVar2 != null) {
            this.f1056c.obtainMessage(2, iVar2).sendToTarget();
        }
        this.f1058e = false;
        e();
    }

    private static com.b.a.e<com.b.a.b.a, com.b.a.b.a, Bitmap, Bitmap> a(Context context, com.b.a.b.a aVar, int i, int i2, com.b.a.d.b.a.e eVar) {
        o oVar = new o(eVar);
        m mVar = new m();
        return com.b.a.h.b(context).a(mVar, com.b.a.b.a.class).a(aVar).a(Bitmap.class).b(com.b.a.d.d.a.b()).b((com.b.a.d.e) oVar).b(true).b(com.b.a.d.b.e.NONE).b(i, i2);
    }
}
