package com.facebook.imagepipeline.c;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: compiled from: CountingMemoryCache.java */
/* JADX INFO: loaded from: classes2.dex */
class o<K, V> implements am<r<K, V>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ am f2451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ m f2452b;

    o(m mVar, am amVar) {
        this.f2452b = mVar;
        this.f2451a = amVar;
    }

    @Override // com.facebook.imagepipeline.c.am
    public int a(r<K, V> rVar) {
        return this.f2451a.a(rVar.f2456b.a());
    }
}
