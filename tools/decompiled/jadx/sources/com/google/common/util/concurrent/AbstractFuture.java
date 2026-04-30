package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractFuture<V> implements ListenableFuture<V> {
    private final Sync<V> sync = new Sync<>();
    private final ExecutionList executionList = new ExecutionList();

    protected AbstractFuture() {
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.sync.get(timeUnit.toNanos(j));
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        return this.sync.get();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.sync.isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.sync.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        if (!this.sync.cancel(z)) {
            return false;
        }
        this.executionList.execute();
        if (z) {
            interruptTask();
        }
        return true;
    }

    protected void interruptTask() {
    }

    protected final boolean wasInterrupted() {
        return this.sync.wasInterrupted();
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        this.executionList.add(runnable, executor);
    }

    protected boolean set(@Nullable V v) {
        boolean z = this.sync.set(v);
        if (z) {
            this.executionList.execute();
        }
        return z;
    }

    protected boolean setException(Throwable th) {
        boolean exception = this.sync.setException((Throwable) Preconditions.checkNotNull(th));
        if (exception) {
            this.executionList.execute();
        }
        return exception;
    }

    final class Sync<V> extends AbstractQueuedSynchronizer {
        static final int CANCELLED = 4;
        static final int COMPLETED = 2;
        static final int COMPLETING = 1;
        static final int INTERRUPTED = 8;
        static final int RUNNING = 0;
        private static final long serialVersionUID = 0;
        private Throwable exception;
        private V value;

        Sync() {
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        protected int tryAcquireShared(int i) {
            return isDone() ? 1 : -1;
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        protected boolean tryReleaseShared(int i) {
            setState(i);
            return true;
        }

        V get(long j) throws ExecutionException, CancellationException, InterruptedException, TimeoutException {
            if (!tryAcquireSharedNanos(-1, j)) {
                throw new TimeoutException("Timeout waiting for task.");
            }
            return getValue();
        }

        V get() throws ExecutionException, CancellationException, InterruptedException {
            acquireSharedInterruptibly(-1);
            return getValue();
        }

        private V getValue() throws ExecutionException, CancellationException {
            int state = getState();
            switch (state) {
                case 2:
                    if (this.exception != null) {
                        throw new ExecutionException(this.exception);
                    }
                    return this.value;
                case 4:
                case 8:
                    throw AbstractFuture.cancellationExceptionWithCause("Task was cancelled.", this.exception);
                default:
                    throw new IllegalStateException("Error, synchronizer in invalid state: " + state);
            }
        }

        boolean isDone() {
            return (getState() & 14) != 0;
        }

        boolean isCancelled() {
            return (getState() & 12) != 0;
        }

        boolean wasInterrupted() {
            return getState() == 8;
        }

        boolean set(@Nullable V v) {
            return complete(v, null, 2);
        }

        boolean setException(Throwable th) {
            return complete(null, th, 2);
        }

        boolean cancel(boolean z) {
            return complete(null, null, z ? 8 : 4);
        }

        private boolean complete(@Nullable V v, @Nullable Throwable th, int i) {
            boolean zCompareAndSetState = compareAndSetState(0, 1);
            if (zCompareAndSetState) {
                this.value = v;
                if ((i & 12) != 0) {
                    th = new CancellationException("Future.cancel() was called.");
                }
                this.exception = th;
                releaseShared(i);
            } else if (getState() == 1) {
                acquireShared(-1);
            }
            return zCompareAndSetState;
        }
    }

    static final CancellationException cancellationExceptionWithCause(@Nullable String str, @Nullable Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }
}
