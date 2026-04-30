package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: HttpUrlConnectionNetworkFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
class aj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ bz f2613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ ai f2614c;

    aj(ai aiVar, ah ahVar, bz bzVar) {
        this.f2614c = aiVar;
        this.f2612a = ahVar;
        this.f2613b = bzVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2614c.b(this.f2612a, this.f2613b);
    }
}
