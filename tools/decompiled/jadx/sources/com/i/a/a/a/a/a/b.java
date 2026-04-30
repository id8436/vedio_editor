package com.i.a.a.a.a.a;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes3.dex */
class b implements Callable<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f3201a;

    b(a aVar) {
        this.f3201a = aVar;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        synchronized (this.f3201a) {
            if (this.f3201a.m != null) {
                this.f3201a.h();
                this.f3201a.i();
                if (this.f3201a.f()) {
                    this.f3201a.e();
                    this.f3201a.o = 0;
                }
            }
        }
        return null;
    }
}
