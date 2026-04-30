package com.facebook;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: FacebookSdk.java */
/* JADX INFO: loaded from: classes2.dex */
final class x implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f3055a = new AtomicInteger(0);

    x() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "FacebookSdk #" + this.f3055a.incrementAndGet());
    }
}
