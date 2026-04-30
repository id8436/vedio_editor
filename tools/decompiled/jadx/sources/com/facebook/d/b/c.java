package com.facebook.d.b;

import android.os.Handler;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: HandlerExecutorServiceImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends AbstractExecutorService implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f1928a;

    public c(Handler handler) {
        this.f1928a = handler;
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f1928a.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public <T> d<T> newTaskFor(Runnable runnable, T t) {
        return new d<>(this.f1928a, runnable, t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public <T> d<T> newTaskFor(Callable<T> callable) {
        return new d<>(this.f1928a, callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ScheduledFuture<?> submit(Runnable runnable) {
        return submit(runnable, (Void) null);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public <T> ScheduledFuture<T> submit(Runnable runnable, @Nullable T t) {
        if (runnable == null) {
            throw new NullPointerException();
        }
        d<T> dVarNewTaskFor = newTaskFor(runnable, t);
        execute(dVarNewTaskFor);
        return dVarNewTaskFor;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public <T> ScheduledFuture<T> submit(Callable<T> callable) {
        if (callable == null) {
            throw new NullPointerException();
        }
        d<T> dVarNewTaskFor = newTaskFor(callable);
        execute(dVarNewTaskFor);
        return dVarNewTaskFor;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        d dVarNewTaskFor = newTaskFor(runnable, null);
        this.f1928a.postDelayed(dVarNewTaskFor, timeUnit.toMillis(j));
        return dVarNewTaskFor;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
        d dVarNewTaskFor = newTaskFor(callable);
        this.f1928a.postDelayed(dVarNewTaskFor, timeUnit.toMillis(j));
        return dVarNewTaskFor;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    public boolean a() {
        return Thread.currentThread() == this.f1928a.getLooper().getThread();
    }
}
