package com.i.a.b;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: DisplayBitmapTask.java */
/* JADX INFO: loaded from: classes3.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bitmap f3301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.i.a.b.e.a f3303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.i.a.b.c.a f3305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.i.a.b.f.a f3306f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final o f3307g;
    private final com.i.a.b.a.g h;

    public c(Bitmap bitmap, q qVar, o oVar, com.i.a.b.a.g gVar) {
        this.f3301a = bitmap;
        this.f3302b = qVar.f3370a;
        this.f3303c = qVar.f3372c;
        this.f3304d = qVar.f3371b;
        this.f3305e = qVar.f3374e.q();
        this.f3306f = qVar.f3375f;
        this.f3307g = oVar;
        this.h = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3303c.e()) {
            com.i.a.c.e.a("ImageAware was collected by GC. Task is cancelled. [%s]", this.f3304d);
            this.f3306f.onLoadingCancelled(this.f3302b, this.f3303c.d());
        } else if (a()) {
            com.i.a.c.e.a("ImageAware is reused for another image. Task is cancelled. [%s]", this.f3304d);
            this.f3306f.onLoadingCancelled(this.f3302b, this.f3303c.d());
        } else {
            com.i.a.c.e.a("Display image in ImageAware (loaded from %1$s) [%2$s]", this.h, this.f3304d);
            this.f3305e.display(this.f3301a, this.f3303c, this.h);
            this.f3307g.b(this.f3303c);
            this.f3306f.onLoadingComplete(this.f3302b, this.f3303c.d(), this.f3301a);
        }
    }

    private boolean a() {
        return !this.f3304d.equals(this.f3307g.a(this.f3303c));
    }
}
