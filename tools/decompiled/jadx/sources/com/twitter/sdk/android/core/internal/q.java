package com.twitter.sdk.android.core.internal;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: ExecutorUtils.java */
/* JADX INFO: loaded from: classes3.dex */
final class q implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f3973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ AtomicLong f3974b;

    q(String str, AtomicLong atomicLong) {
        this.f3973a = str;
        this.f3974b = atomicLong;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
        threadNewThread.setName(this.f3973a + this.f3974b.getAndIncrement());
        return threadNewThread;
    }
}
