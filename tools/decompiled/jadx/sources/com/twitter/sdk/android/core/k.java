package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.t;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: PersistedSessionManager.java */
/* JADX INFO: loaded from: classes3.dex */
public class k<T extends t> implements u<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.b.b f4101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.b.e<T> f4102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap<Long, T> f4103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<Long, com.twitter.sdk.android.core.internal.b.d<T>> f4104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.b.d<T> f4105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicReference<T> f4106f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f4107g;
    private volatile boolean h;

    public k(com.twitter.sdk.android.core.internal.b.b bVar, com.twitter.sdk.android.core.internal.b.e<T> eVar, String str, String str2) {
        this(bVar, eVar, new ConcurrentHashMap(1), new ConcurrentHashMap(1), new com.twitter.sdk.android.core.internal.b.d(bVar, eVar, str), str2);
    }

    k(com.twitter.sdk.android.core.internal.b.b bVar, com.twitter.sdk.android.core.internal.b.e<T> eVar, ConcurrentHashMap<Long, T> concurrentHashMap, ConcurrentHashMap<Long, com.twitter.sdk.android.core.internal.b.d<T>> concurrentHashMap2, com.twitter.sdk.android.core.internal.b.d<T> dVar, String str) {
        this.h = true;
        this.f4101a = bVar;
        this.f4102b = eVar;
        this.f4103c = concurrentHashMap;
        this.f4104d = concurrentHashMap2;
        this.f4105e = dVar;
        this.f4106f = new AtomicReference<>();
        this.f4107g = str;
    }

    void a() {
        if (this.h) {
            e();
        }
    }

    private synchronized void e() {
        if (this.h) {
            g();
            f();
            this.h = false;
        }
    }

    private void f() {
        T tB;
        for (Map.Entry<String, ?> entry : this.f4101a.a().getAll().entrySet()) {
            if (a(entry.getKey()) && (tB = this.f4102b.b((String) entry.getValue())) != null) {
                a(tB.b(), tB, false);
            }
        }
    }

    private void g() {
        T tA = this.f4105e.a();
        if (tA != null) {
            a(tA.b(), tA, false);
        }
    }

    boolean a(String str) {
        return str.startsWith(this.f4107g);
    }

    @Override // com.twitter.sdk.android.core.u
    public T b() {
        a();
        return this.f4106f.get();
    }

    @Override // com.twitter.sdk.android.core.u
    public void a(T t) {
        if (t == null) {
            throw new IllegalArgumentException("Session must not be null!");
        }
        a();
        a(t.b(), t, true);
    }

    @Override // com.twitter.sdk.android.core.u
    public void c() {
        a();
        if (this.f4106f.get() != null) {
            c(this.f4106f.get().b());
        }
    }

    @Override // com.twitter.sdk.android.core.u
    public T a(long j) {
        a();
        return this.f4103c.get(Long.valueOf(j));
    }

    @Override // com.twitter.sdk.android.core.u
    public Map<Long, T> d() {
        a();
        return Collections.unmodifiableMap(this.f4103c);
    }

    private void a(long j, T t, boolean z) {
        this.f4103c.put(Long.valueOf(j), t);
        com.twitter.sdk.android.core.internal.b.d<T> dVar = this.f4104d.get(Long.valueOf(j));
        if (dVar == null) {
            dVar = new com.twitter.sdk.android.core.internal.b.d<>(this.f4101a, this.f4102b, b(j));
            this.f4104d.putIfAbsent(Long.valueOf(j), dVar);
        }
        dVar.a(t);
        T t2 = this.f4106f.get();
        if (t2 == null || t2.b() == j || z) {
            synchronized (this) {
                this.f4106f.compareAndSet(t2, t);
                this.f4105e.a(t);
            }
        }
    }

    String b(long j) {
        return this.f4107g + c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR + j;
    }

    @Override // com.twitter.sdk.android.core.u
    public void c(long j) {
        a();
        if (this.f4106f.get() != null && this.f4106f.get().b() == j) {
            synchronized (this) {
                this.f4106f.set(null);
                this.f4105e.b();
            }
        }
        this.f4103c.remove(Long.valueOf(j));
        com.twitter.sdk.android.core.internal.b.d<T> dVarRemove = this.f4104d.remove(Long.valueOf(j));
        if (dVarRemove != null) {
            dVarRemove.b();
        }
    }
}
