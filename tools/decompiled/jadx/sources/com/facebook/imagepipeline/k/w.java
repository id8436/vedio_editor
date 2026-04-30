package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: DelegatingConsumer.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class w<I, O> extends d<I> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o<O> f2832a;

    public w(o<O> oVar) {
        this.f2832a = oVar;
    }

    public o<O> d() {
        return this.f2832a;
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a(Throwable th) {
        this.f2832a.b(th);
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a() {
        this.f2832a.b();
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a(float f2) {
        this.f2832a.b(f2);
    }
}
