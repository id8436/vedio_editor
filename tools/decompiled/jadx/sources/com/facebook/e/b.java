package com.facebook.e;

/* JADX INFO: compiled from: AbstractDataSource.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f2209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ i f2210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ boolean f2211c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ a f2212d;

    b(a aVar, boolean z, i iVar, boolean z2) {
        this.f2212d = aVar;
        this.f2209a = z;
        this.f2210b = iVar;
        this.f2211c = z2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2209a) {
            this.f2210b.b(this.f2212d);
        } else if (this.f2211c) {
            this.f2210b.c(this.f2212d);
        } else {
            this.f2210b.a(this.f2212d);
        }
    }
}
