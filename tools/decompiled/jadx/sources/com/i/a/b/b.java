package com.i.a.b;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: DefaultConfigurationFactory.java */
/* JADX INFO: loaded from: classes3.dex */
class b implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f3284a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadGroup f3285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicInteger f3286c = new AtomicInteger(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3287d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3288e;

    b(int i, String str) {
        this.f3288e = i;
        SecurityManager securityManager = System.getSecurityManager();
        this.f3285b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        this.f3287d = str + f3284a.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f3285b, runnable, this.f3287d + this.f3286c.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        thread.setPriority(this.f3288e);
        return thread;
    }
}
