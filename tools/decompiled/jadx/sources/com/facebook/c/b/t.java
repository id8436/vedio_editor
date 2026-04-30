package com.facebook.c.b;

/* JADX INFO: compiled from: DiskStorageCache.java */
/* JADX INFO: loaded from: classes2.dex */
class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1903a;

    t(s sVar) {
        this.f1903a = sVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f1903a.s) {
            this.f1903a.c();
        }
        this.f1903a.f1902g.countDown();
    }
}
