package com.facebook.e;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: IncreasingQualityDataSourceSupplier.java */
/* JADX INFO: loaded from: classes2.dex */
class p<T> implements i<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ o f2230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2231b;

    public p(o oVar, int i) {
        this.f2230a = oVar;
        this.f2231b = i;
    }

    @Override // com.facebook.e.i
    public void a(f<T> fVar) {
        if (fVar.c()) {
            this.f2230a.a(this.f2231b, fVar);
        } else if (fVar.b()) {
            this.f2230a.b(this.f2231b, fVar);
        }
    }

    @Override // com.facebook.e.i
    public void b(f<T> fVar) {
        this.f2230a.b(this.f2231b, fVar);
    }

    @Override // com.facebook.e.i
    public void c(f<T> fVar) {
    }

    @Override // com.facebook.e.i
    public void d(f<T> fVar) {
        if (this.f2231b == 0) {
            this.f2230a.a(fVar.g());
        }
    }
}
