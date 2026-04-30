package com.b.a.d.b.c;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f843a = 0;

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        d dVar = new d(this, runnable, "fifo-pool-thread-" + this.f843a);
        this.f843a++;
        return dVar;
    }
}
