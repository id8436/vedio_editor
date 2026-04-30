package com.facebook.c.b;

/* JADX INFO: compiled from: DiskStorageCache.java */
/* JADX INFO: loaded from: classes2.dex */
class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1906a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f1907b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f1908c = -1;

    v() {
    }

    public synchronized boolean a() {
        return this.f1906a;
    }

    public synchronized void b() {
        this.f1906a = false;
        this.f1908c = -1L;
        this.f1907b = -1L;
    }

    public synchronized void a(long j, long j2) {
        this.f1908c = j2;
        this.f1907b = j;
        this.f1906a = true;
    }

    public synchronized void b(long j, long j2) {
        if (this.f1906a) {
            this.f1907b += j;
            this.f1908c += j2;
        }
    }

    public synchronized long c() {
        return this.f1907b;
    }

    public synchronized long d() {
        return this.f1908c;
    }
}
