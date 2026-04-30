package com.k.a;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: compiled from: Stats.java */
/* JADX INFO: loaded from: classes3.dex */
class be {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final HandlerThread f3514a = new HandlerThread("Picasso-Stats", 10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final k f3515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Handler f3516c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f3517d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f3518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f3519f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f3520g;
    long h;
    long i;
    long j;
    long k;
    int l;
    int m;
    int n;

    be(k kVar) {
        this.f3515b = kVar;
        this.f3514a.start();
        bm.a(this.f3514a.getLooper());
        this.f3516c = new bf(this.f3514a.getLooper(), this);
    }

    void a(Bitmap bitmap) {
        a(bitmap, 2);
    }

    void b(Bitmap bitmap) {
        a(bitmap, 3);
    }

    void a(long j) {
        this.f3516c.sendMessage(this.f3516c.obtainMessage(4, Long.valueOf(j)));
    }

    void a() {
        this.f3516c.sendEmptyMessage(0);
    }

    void b() {
        this.f3516c.sendEmptyMessage(1);
    }

    void c() {
        this.f3517d++;
    }

    void d() {
        this.f3518e++;
    }

    void a(Long l) {
        this.l++;
        this.f3519f += l.longValue();
        this.i = a(this.l, this.f3519f);
    }

    void b(long j) {
        this.m++;
        this.f3520g += j;
        this.j = a(this.m, this.f3520g);
    }

    void c(long j) {
        this.n++;
        this.h += j;
        this.k = a(this.m, this.h);
    }

    bh e() {
        return new bh(this.f3515b.b(), this.f3515b.a(), this.f3517d, this.f3518e, this.f3519f, this.f3520g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, System.currentTimeMillis());
    }

    private void a(Bitmap bitmap, int i) {
        this.f3516c.sendMessage(this.f3516c.obtainMessage(i, bm.a(bitmap), 0));
    }

    private static long a(int i, long j) {
        return j / ((long) i);
    }
}
