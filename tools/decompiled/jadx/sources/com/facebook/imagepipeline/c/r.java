package com.facebook.imagepipeline.c;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: CountingMemoryCache.java */
/* JADX INFO: loaded from: classes.dex */
class r<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final K f2455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.facebook.d.h.a<V> f2456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2457c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2458d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final s<K> f2459e;

    private r(K k, com.facebook.d.h.a<V> aVar, @Nullable s<K> sVar) {
        this.f2455a = (K) com.facebook.d.d.k.a(k);
        this.f2456b = (com.facebook.d.h.a) com.facebook.d.d.k.a(com.facebook.d.h.a.b(aVar));
        this.f2459e = sVar;
    }

    static <K, V> r<K, V> a(K k, com.facebook.d.h.a<V> aVar, @Nullable s<K> sVar) {
        return new r<>(k, aVar, sVar);
    }
}
