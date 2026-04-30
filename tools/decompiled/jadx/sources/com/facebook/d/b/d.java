package com.facebook.d.b;

import android.os.Handler;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ScheduledFutureImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class d<V> implements RunnableFuture<V>, ScheduledFuture<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f1929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FutureTask<V> f1930b;

    public d(Handler handler, Callable<V> callable) {
        this.f1929a = handler;
        this.f1930b = new FutureTask<>(callable);
    }

    public d(Handler handler, Runnable runnable, @Nullable V v) {
        this.f1929a = handler;
        this.f1930b = new FutureTask<>(runnable, v);
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(Delayed delayed) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        this.f1930b.run();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f1930b.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f1930b.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f1930b.isDone();
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        return this.f1930b.get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.f1930b.get(j, timeUnit);
    }
}
