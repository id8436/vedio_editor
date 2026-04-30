package com.facebook.c.b;

import java.io.IOException;

/* JADX INFO: compiled from: SettableCacheEvent.java */
/* JADX INFO: loaded from: classes2.dex */
public class ac implements com.facebook.c.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1854a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ac f1855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f1856c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.facebook.c.a.f f1857d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f1858e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1859f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f1860g;
    private long h;
    private IOException i;
    private com.facebook.c.a.e j;
    private ac k;

    public static ac a() {
        synchronized (f1854a) {
            if (f1855b != null) {
                ac acVar = f1855b;
                f1855b = acVar.k;
                acVar.k = null;
                f1856c--;
                return acVar;
            }
            return new ac();
        }
    }

    private ac() {
    }

    public ac a(com.facebook.c.a.f fVar) {
        this.f1857d = fVar;
        return this;
    }

    public ac a(String str) {
        this.f1858e = str;
        return this;
    }

    public ac a(long j) {
        this.f1859f = j;
        return this;
    }

    public ac b(long j) {
        this.h = j;
        return this;
    }

    public ac c(long j) {
        this.f1860g = j;
        return this;
    }

    public ac a(IOException iOException) {
        this.i = iOException;
        return this;
    }

    public ac a(com.facebook.c.a.e eVar) {
        this.j = eVar;
        return this;
    }

    public void b() {
        synchronized (f1854a) {
            if (f1856c < 5) {
                c();
                f1856c++;
                if (f1855b != null) {
                    this.k = f1855b;
                }
                f1855b = this;
            }
        }
    }

    private void c() {
        this.f1857d = null;
        this.f1858e = null;
        this.f1859f = 0L;
        this.f1860g = 0L;
        this.h = 0L;
        this.i = null;
        this.j = null;
    }
}
