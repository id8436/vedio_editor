package com.b.a.a;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements Callable<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f687a;

    b(a aVar) {
        this.f687a = aVar;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        synchronized (this.f687a) {
            if (this.f687a.j != null) {
                this.f687a.g();
                if (this.f687a.e()) {
                    this.f687a.d();
                    this.f687a.l = 0;
                }
            }
        }
        return null;
    }
}
