package com.facebook.i;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: LockOnGetVariable.java */
/* JADX INFO: loaded from: classes2.dex */
class af implements Callable<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Callable f2281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ae f2282b;

    af(ae aeVar, Callable callable) {
        this.f2282b = aeVar;
        this.f2281a = callable;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        try {
            this.f2282b.f2279a = this.f2281a.call();
            this.f2282b.f2280b.countDown();
            return null;
        } catch (Throwable th) {
            this.f2282b.f2280b.countDown();
            throw th;
        }
    }
}
