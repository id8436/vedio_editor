package com.twitter.sdk.android.core.internal;

/* JADX INFO: compiled from: SessionMonitor.java */
/* JADX INFO: loaded from: classes3.dex */
class v implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ t f4096a;

    v(t tVar) {
        this.f4096a = tVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4096a.b();
    }
}
