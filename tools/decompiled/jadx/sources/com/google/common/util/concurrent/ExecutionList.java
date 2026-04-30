package com.google.common.util.concurrent;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes3.dex */
public final class ExecutionList {

    @VisibleForTesting
    static final Logger log = Logger.getLogger(ExecutionList.class.getName());

    @GuardedBy("this")
    private boolean executed;

    @GuardedBy("this")
    private RunnableExecutorPair runnables;

    public void add(Runnable runnable, Executor executor) {
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        synchronized (this) {
            if (!this.executed) {
                this.runnables = new RunnableExecutorPair(runnable, executor, this.runnables);
            } else {
                executeListener(runnable, executor);
            }
        }
    }

    public void execute() {
        RunnableExecutorPair runnableExecutorPair = null;
        synchronized (this) {
            if (!this.executed) {
                this.executed = true;
                RunnableExecutorPair runnableExecutorPair2 = this.runnables;
                this.runnables = null;
                while (runnableExecutorPair2 != null) {
                    RunnableExecutorPair runnableExecutorPair3 = runnableExecutorPair2.next;
                    runnableExecutorPair2.next = runnableExecutorPair;
                    runnableExecutorPair = runnableExecutorPair2;
                    runnableExecutorPair2 = runnableExecutorPair3;
                }
                while (runnableExecutorPair != null) {
                    executeListener(runnableExecutorPair.runnable, runnableExecutorPair.executor);
                    runnableExecutorPair = runnableExecutorPair.next;
                }
            }
        }
    }

    private static void executeListener(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            log.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    final class RunnableExecutorPair {
        final Executor executor;

        @Nullable
        RunnableExecutorPair next;
        final Runnable runnable;

        RunnableExecutorPair(Runnable runnable, Executor executor, RunnableExecutorPair runnableExecutorPair) {
            this.runnable = runnable;
            this.executor = executor;
            this.next = runnableExecutorPair;
        }
    }
}
