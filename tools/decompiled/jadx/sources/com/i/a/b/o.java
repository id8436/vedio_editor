package com.i.a.b;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: ImageLoaderEngine.java */
/* JADX INFO: loaded from: classes3.dex */
class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final j f3361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Executor f3362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Executor f3363c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Integer, String> f3365e = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<String, ReentrantLock> f3366f = new WeakHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicBoolean f3367g = new AtomicBoolean(false);
    private final AtomicBoolean h = new AtomicBoolean(false);
    private final AtomicBoolean i = new AtomicBoolean(false);
    private final Object j = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Executor f3364d = a.a();

    o(j jVar) {
        this.f3361a = jVar;
        this.f3362b = jVar.f3350g;
        this.f3363c = jVar.h;
    }

    void a(r rVar) {
        this.f3364d.execute(new p(this, rVar));
    }

    void a(w wVar) {
        e();
        this.f3363c.execute(wVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (!this.f3361a.i && ((ExecutorService) this.f3362b).isShutdown()) {
            this.f3362b = f();
        }
        if (!this.f3361a.j && ((ExecutorService) this.f3363c).isShutdown()) {
            this.f3363c = f();
        }
    }

    private Executor f() {
        return a.a(this.f3361a.k, this.f3361a.l, this.f3361a.m);
    }

    String a(com.i.a.b.e.a aVar) {
        return this.f3365e.get(Integer.valueOf(aVar.f()));
    }

    void a(com.i.a.b.e.a aVar, String str) {
        this.f3365e.put(Integer.valueOf(aVar.f()), str);
    }

    void b(com.i.a.b.e.a aVar) {
        this.f3365e.remove(Integer.valueOf(aVar.f()));
    }

    void a(Runnable runnable) {
        this.f3364d.execute(runnable);
    }

    ReentrantLock a(String str) {
        ReentrantLock reentrantLock = this.f3366f.get(str);
        if (reentrantLock == null) {
            ReentrantLock reentrantLock2 = new ReentrantLock();
            this.f3366f.put(str, reentrantLock2);
            return reentrantLock2;
        }
        return reentrantLock;
    }

    AtomicBoolean a() {
        return this.f3367g;
    }

    Object b() {
        return this.j;
    }

    boolean c() {
        return this.h.get();
    }

    boolean d() {
        return this.i.get();
    }
}
