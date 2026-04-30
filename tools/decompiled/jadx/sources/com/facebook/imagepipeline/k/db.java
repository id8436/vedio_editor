package com.facebook.imagepipeline.k;

import android.util.Pair;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: ThrottlingProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class db<T> extends w<T, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cz f2775a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private db(cz czVar, o<T> oVar) {
        super(oVar);
        this.f2775a = czVar;
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a(T t, boolean z) {
        d().b(t, z);
        if (z) {
            c();
        }
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    protected void a(Throwable th) {
        d().b(th);
        c();
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    protected void a() {
        d().b();
        c();
    }

    private void c() {
        Pair pair;
        synchronized (this.f2775a) {
            pair = (Pair) this.f2775a.f2772d.poll();
            if (pair == null) {
                cz.b(this.f2775a);
            }
        }
        if (pair != null) {
            this.f2775a.f2773e.execute(new dc(this, pair));
        }
    }
}
