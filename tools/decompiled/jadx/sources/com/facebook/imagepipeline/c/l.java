package com.facebook.imagepipeline.c;

import java.util.LinkedHashMap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: CountingLruMap.java */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class l<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final am<V> f2440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final LinkedHashMap<K, V> f2441b = new LinkedHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f2442c = 0;

    public l(am<V> amVar) {
        this.f2440a = amVar;
    }

    public synchronized int a() {
        return this.f2441b.size();
    }

    public synchronized int b() {
        return this.f2442c;
    }

    @Nullable
    public synchronized K c() {
        return this.f2441b.isEmpty() ? null : this.f2441b.keySet().iterator().next();
    }

    @Nullable
    public synchronized V a(K k) {
        return this.f2441b.get(k);
    }

    @Nullable
    public synchronized V a(K k, V v) {
        V vRemove;
        vRemove = this.f2441b.remove(k);
        this.f2442c -= c(vRemove);
        this.f2441b.put(k, v);
        this.f2442c += c(v);
        return vRemove;
    }

    @Nullable
    public synchronized V b(K k) {
        V vRemove;
        vRemove = this.f2441b.remove(k);
        this.f2442c -= c(vRemove);
        return vRemove;
    }

    private int c(V v) {
        if (v == null) {
            return 0;
        }
        return this.f2440a.a(v);
    }
}
