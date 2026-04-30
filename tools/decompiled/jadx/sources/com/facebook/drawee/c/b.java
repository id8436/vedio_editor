package com.facebook.drawee.c;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: AbstractDraweeController.java */
/* JADX INFO: loaded from: classes2.dex */
class b<T> extends com.facebook.e.e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f2055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ a f2056c;

    b(a aVar, String str, boolean z) {
        this.f2056c = aVar;
        this.f2054a = str;
        this.f2055b = z;
    }

    @Override // com.facebook.e.e
    public void e(com.facebook.e.f<T> fVar) {
        boolean zB = fVar.b();
        float fG = fVar.g();
        T tD = fVar.d();
        if (this.f2056c.v != null && (tD instanceof com.facebook.d.h.a)) {
            ((com.facebook.d.h.a) tD).a(this.f2056c.v);
        }
        if (tD != null) {
            this.f2056c.a(this.f2054a, fVar, tD, fG, zB, this.f2055b);
        } else if (zB) {
            this.f2056c.a(this.f2054a, (com.facebook.e.f) fVar, (Throwable) new NullPointerException(), true);
        }
    }

    @Override // com.facebook.e.e
    public void f(com.facebook.e.f<T> fVar) {
        this.f2056c.a(this.f2054a, (com.facebook.e.f) fVar, fVar.f(), true);
    }

    @Override // com.facebook.e.e, com.facebook.e.i
    public void d(com.facebook.e.f<T> fVar) {
        boolean zB = fVar.b();
        this.f2056c.a(this.f2054a, fVar, fVar.g(), zB);
    }
}
