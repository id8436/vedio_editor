package com.facebook.e;

/* JADX INFO: compiled from: BaseDataSubscriber.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class e<T> implements i<T> {
    protected abstract void e(f<T> fVar);

    protected abstract void f(f<T> fVar);

    @Override // com.facebook.e.i
    public void a(f<T> fVar) {
        boolean zB = fVar.b();
        try {
            e(fVar);
        } finally {
            if (zB) {
                fVar.h();
            }
        }
    }

    @Override // com.facebook.e.i
    public void b(f<T> fVar) {
        try {
            f(fVar);
        } finally {
            fVar.h();
        }
    }

    @Override // com.facebook.e.i
    public void c(f<T> fVar) {
    }

    @Override // com.facebook.e.i
    public void d(f<T> fVar) {
    }
}
