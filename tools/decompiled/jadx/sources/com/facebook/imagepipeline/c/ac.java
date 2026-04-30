package com.facebook.imagepipeline.c;

/* JADX INFO: compiled from: InstrumentedMemoryCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class ac<K, V> implements ad<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ad<K, V> f2396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final af f2397b;

    public ac(ad<K, V> adVar, af afVar) {
        this.f2396a = adVar;
        this.f2397b = afVar;
    }

    @Override // com.facebook.imagepipeline.c.ad
    public com.facebook.d.h.a<V> a(K k) {
        com.facebook.d.h.a<V> aVarA = this.f2396a.a(k);
        if (aVarA == null) {
            this.f2397b.a();
        } else {
            this.f2397b.a(k);
        }
        return aVarA;
    }

    @Override // com.facebook.imagepipeline.c.ad
    public com.facebook.d.h.a<V> a(K k, com.facebook.d.h.a<V> aVar) {
        this.f2397b.b();
        return this.f2396a.a(k, aVar);
    }
}
