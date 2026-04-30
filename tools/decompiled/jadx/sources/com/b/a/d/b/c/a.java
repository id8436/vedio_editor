package com.b.a.d.b.c;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f842b;

    public a(int i) {
        this(i, f.f848b);
    }

    public a(int i, f fVar) {
        this(i, i, 0L, TimeUnit.MILLISECONDS, new c(), fVar);
    }

    public a(int i, int i2, long j, TimeUnit timeUnit, ThreadFactory threadFactory, f fVar) {
        super(i, i2, j, timeUnit, new PriorityBlockingQueue(), threadFactory);
        this.f841a = new AtomicInteger();
        this.f842b = fVar;
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new e(runnable, t, this.f841a.getAndIncrement());
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (th == null && (runnable instanceof Future)) {
            Future future = (Future) runnable;
            if (future.isDone() && !future.isCancelled()) {
                try {
                    future.get();
                } catch (InterruptedException e2) {
                    this.f842b.a(e2);
                } catch (ExecutionException e3) {
                    this.f842b.a(e3);
                }
            }
        }
    }
}
