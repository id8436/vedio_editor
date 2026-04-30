package com.github.chrisbanes.photoview;

/* JADX INFO: compiled from: PhotoViewAttacher.java */
/* JADX INFO: loaded from: classes2.dex */
class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f3161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f3162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f3163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f3164d = System.currentTimeMillis();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f3165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f3166f;

    public q(l lVar, float f2, float f3, float f4, float f5) {
        this.f3161a = lVar;
        this.f3162b = f4;
        this.f3163c = f5;
        this.f3165e = f2;
        this.f3166f = f3;
    }

    @Override // java.lang.Runnable
    public void run() {
        float fA = a();
        this.f3161a.I.a((this.f3165e + ((this.f3166f - this.f3165e) * fA)) / this.f3161a.e(), this.f3162b, this.f3163c);
        if (fA < 1.0f) {
            a.a(this.f3161a.m, this);
        }
    }

    private float a() {
        return this.f3161a.f3155f.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.f3164d) * 1.0f) / this.f3161a.f3156g));
    }
}
