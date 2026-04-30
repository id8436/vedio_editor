package c.a.a.a.a.c;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: PriorityThreadPoolExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public class w extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f234a = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f235b = f234a + 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f236c = (f234a * 2) + 1;

    <T extends Runnable & l & y & u> w(int i, int i2, long j, TimeUnit timeUnit, m<T> mVar, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, mVar, threadFactory);
        prestartAllCoreThreads();
    }

    public static <T extends Runnable & l & y & u> w a(int i, int i2) {
        return new w(i, i2, 1L, TimeUnit.SECONDS, new m(), new x(10));
    }

    public static w a() {
        return a(f235b, f236c);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new t(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new t(callable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (v.isProperDelegate(runnable)) {
            super.execute(runnable);
        } else {
            super.execute(newTaskFor(runnable, null));
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        y yVar = (y) runnable;
        yVar.setFinished(true);
        yVar.setError(th);
        getQueue().d();
        super.afterExecute(runnable, th);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public m getQueue() {
        return (m) super.getQueue();
    }
}
