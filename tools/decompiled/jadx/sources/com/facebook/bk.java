package com.facebook;

/* JADX INFO: compiled from: RequestProgress.java */
/* JADX INFO: loaded from: classes2.dex */
class bk implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ al f1827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ long f1828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ long f1829c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ bj f1830d;

    bk(bj bjVar, al alVar, long j, long j2) {
        this.f1830d = bjVar;
        this.f1827a = alVar;
        this.f1828b = j;
        this.f1829c = j2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1827a.a(this.f1828b, this.f1829c);
    }
}
