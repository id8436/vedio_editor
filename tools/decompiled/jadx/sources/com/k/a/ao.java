package com.k.a;

/* JADX INFO: compiled from: Picasso.java */
/* JADX INFO: loaded from: classes3.dex */
class ao implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Exception f3467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ an f3468b;

    ao(an anVar, Exception exc) {
        this.f3468b = anVar;
        this.f3467a = exc;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new RuntimeException(this.f3467a);
    }
}
