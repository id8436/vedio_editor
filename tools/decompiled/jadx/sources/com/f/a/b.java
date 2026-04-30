package com.f.a;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements Callable<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1642a;

    b(a aVar) {
        this.f1642a = aVar;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        synchronized (this.f1642a) {
            if (this.f1642a.k != null) {
                this.f1642a.k();
                if (this.f1642a.i()) {
                    this.f1642a.h();
                    this.f1642a.m = 0;
                }
            }
        }
        return null;
    }
}
