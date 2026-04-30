package com.facebook.drawee.b;

/* JADX INFO: compiled from: RetryManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2046c;

    public f() {
        a();
    }

    public void a() {
        this.f2044a = false;
        this.f2045b = 4;
        b();
    }

    public void b() {
        this.f2046c = 0;
    }

    public void a(boolean z) {
        this.f2044a = z;
    }

    public boolean c() {
        return this.f2044a && this.f2046c < this.f2045b;
    }

    public void d() {
        this.f2046c++;
    }
}
