package com.facebook.imagepipeline.c;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: compiled from: CountingMemoryCache.java */
/* JADX INFO: loaded from: classes2.dex */
class p<V> implements com.facebook.d.h.i<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ r f2453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ m f2454b;

    p(m mVar, r rVar) {
        this.f2454b = mVar;
        this.f2453a = rVar;
    }

    @Override // com.facebook.d.h.i
    public void a(V v) {
        this.f2454b.b(this.f2453a);
    }
}
