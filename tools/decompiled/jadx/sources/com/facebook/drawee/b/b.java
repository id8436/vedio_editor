package com.facebook.drawee.b;

import java.util.Iterator;

/* JADX INFO: compiled from: DeferredReleaser.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2033a;

    b(a aVar) {
        this.f2033a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        a.c();
        Iterator it = this.f2033a.f2030b.iterator();
        while (it.hasNext()) {
            ((c) it.next()).d();
        }
        this.f2033a.f2030b.clear();
    }
}
