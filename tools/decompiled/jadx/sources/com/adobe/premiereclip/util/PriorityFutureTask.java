package com.adobe.premiereclip.util;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes2.dex */
public class PriorityFutureTask<V> extends FutureTask<V> implements Comparable<PriorityFutureTask<V>> {
    private long mPriority;

    public PriorityFutureTask(Callable<V> callable, long j) {
        super(callable);
        this.mPriority = j;
    }

    public PriorityFutureTask(Runnable runnable, V v, long j) {
        super(runnable, v);
        this.mPriority = j;
    }

    public long getPriority() {
        return this.mPriority;
    }

    @Override // java.lang.Comparable
    public int compareTo(PriorityFutureTask<V> priorityFutureTask) {
        long priority = getPriority() - priorityFutureTask.getPriority();
        if (priority > 0) {
            return -1;
        }
        if (priority == 0) {
            return 0;
        }
        return 1;
    }
}
