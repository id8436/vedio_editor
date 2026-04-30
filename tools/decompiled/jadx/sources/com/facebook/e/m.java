package com.facebook.e;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: FirstAvailableDataSourceSupplier.java */
/* JADX INFO: loaded from: classes2.dex */
class m<T> implements i<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f2225a;

    private m(l lVar) {
        this.f2225a = lVar;
    }

    @Override // com.facebook.e.i
    public void b(f<T> fVar) {
        this.f2225a.c(fVar);
    }

    @Override // com.facebook.e.i
    public void c(f<T> fVar) {
    }

    @Override // com.facebook.e.i
    public void a(f<T> fVar) {
        if (fVar.c()) {
            this.f2225a.d(fVar);
        } else if (fVar.b()) {
            this.f2225a.c(fVar);
        }
    }

    @Override // com.facebook.e.i
    public void d(f<T> fVar) {
        this.f2225a.a(Math.max(this.f2225a.g(), fVar.g()));
    }
}
