package com.facebook;

/* JADX INFO: compiled from: ProgressOutputStream.java */
/* JADX INFO: loaded from: classes2.dex */
class bc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f1819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ bb f1820b;

    bc(bb bbVar, ar arVar) {
        this.f1820b = bbVar;
        this.f1819a = arVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1819a.a(this.f1820b.f1813b, this.f1820b.f1815d, this.f1820b.f1817f);
    }
}
