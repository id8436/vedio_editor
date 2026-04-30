package com.b.a.d.b;

import android.os.Looper;

/* JADX INFO: compiled from: EngineResource.java */
/* JADX INFO: loaded from: classes2.dex */
class s<Z> implements z<Z> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<Z> f896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private t f898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.b.a.d.c f899d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f901f;

    s(z<Z> zVar, boolean z) {
        if (zVar == null) {
            throw new NullPointerException("Wrapped resource must not be null");
        }
        this.f896a = zVar;
        this.f897b = z;
    }

    void a(com.b.a.d.c cVar, t tVar) {
        this.f899d = cVar;
        this.f898c = tVar;
    }

    boolean a() {
        return this.f897b;
    }

    @Override // com.b.a.d.b.z
    public Z b() {
        return this.f896a.b();
    }

    @Override // com.b.a.d.b.z
    public int c() {
        return this.f896a.c();
    }

    @Override // com.b.a.d.b.z
    public void d() {
        if (this.f900e > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f901f) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f901f = true;
        this.f896a.d();
    }

    void e() {
        if (this.f901f) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        }
        this.f900e++;
    }

    void f() {
        if (this.f900e <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call release on the main thread");
        }
        int i = this.f900e - 1;
        this.f900e = i;
        if (i == 0) {
            this.f898c.b(this.f899d, this);
        }
    }
}
