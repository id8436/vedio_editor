package com.facebook.a;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
final class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f1703a;

    f(k kVar) {
        this.f1703a = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        a.c(this.f1703a);
    }
}
