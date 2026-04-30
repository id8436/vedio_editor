package com.facebook.e;

/* JADX INFO: compiled from: AbstractDataSource.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f2213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f2214b;

    c(a aVar, i iVar) {
        this.f2214b = aVar;
        this.f2213a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2213a.d(this.f2214b);
    }
}
