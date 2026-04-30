package com.i.a.b;

import android.graphics.Bitmap;
import android.os.Handler;

/* JADX INFO: compiled from: ProcessAndDisplayImageTask.java */
/* JADX INFO: loaded from: classes3.dex */
final class w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f3392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bitmap f3393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q f3394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f3395d;

    public w(o oVar, Bitmap bitmap, q qVar, Handler handler) {
        this.f3392a = oVar;
        this.f3393b = bitmap;
        this.f3394c = qVar;
        this.f3395d = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.i.a.c.e.a("PostProcess image before displaying [%s]", this.f3394c.f3371b);
        r.a(new c(this.f3394c.f3374e.p().a(this.f3393b), this.f3394c, this.f3392a, com.i.a.b.a.g.MEMORY_CACHE), this.f3394c.f3374e.s(), this.f3395d, this.f3392a);
    }
}
