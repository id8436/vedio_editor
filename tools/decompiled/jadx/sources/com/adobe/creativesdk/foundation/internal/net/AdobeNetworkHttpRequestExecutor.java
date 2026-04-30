package com.adobe.creativesdk.foundation.internal.net;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkHttpRequestExecutor extends ThreadPoolExecutor {
    private boolean _isPaused;
    private ReentrantLock pauseLock;
    private Condition unpaused;

    public AdobeNetworkHttpRequestExecutor(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        super(i, i2, j, timeUnit, blockingQueue);
        this._isPaused = false;
        this.pauseLock = new ReentrantLock();
        this.unpaused = this.pauseLock.newCondition();
        if (j > 0) {
            allowCoreThreadTimeOut(true);
        }
    }

    public <T> Future<T> submit(Callable<T> callable, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        AdobePriorityFutureTask adobePriorityFutureTask = new AdobePriorityFutureTask(callable, adobeNetworkRequestPriority);
        execute(adobePriorityFutureTask);
        return adobePriorityFutureTask;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        this.pauseLock.lock();
        while (this._isPaused) {
            try {
                this.unpaused.await();
            } catch (InterruptedException e2) {
                thread.interrupt();
                return;
            } finally {
                this.pauseLock.unlock();
            }
        }
    }

    public void pause() {
        this.pauseLock.lock();
        try {
            this._isPaused = true;
        } finally {
            this.pauseLock.unlock();
        }
    }

    public void resume() {
        this.pauseLock.lock();
        try {
            this._isPaused = false;
            this.unpaused.signalAll();
        } finally {
            this.pauseLock.unlock();
        }
    }

    public boolean isPaused() {
        return this._isPaused;
    }
}
