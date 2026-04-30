package com.twitter.sdk.android.core.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: ExecutorUtils.java */
/* JADX INFO: loaded from: classes3.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f3970a = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f3971b = f3970a + 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f3972c = (f3970a * 2) + 1;

    public static ExecutorService a(String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f3971b, f3972c, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), c(str));
        a(str, threadPoolExecutor);
        return threadPoolExecutor;
    }

    public static ScheduledExecutorService b(String str) {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(c(str));
        a(str, scheduledExecutorServiceNewSingleThreadScheduledExecutor);
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor;
    }

    static ThreadFactory c(String str) {
        return new q(str, new AtomicLong(1L));
    }

    static void a(String str, ExecutorService executorService) {
        a(str, executorService, 1L, TimeUnit.SECONDS);
    }

    static void a(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new r(executorService, j, timeUnit, str), "Twitter Shutdown Hook for " + str));
    }
}
