package com.behance.sdk.executors;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSerialExecutor implements Executor {
    private static final int CORE_POOL_SIZE = 1;
    private static final int KEEP_ALIVE = 1;
    private static final int MAXIMUM_POOL_SIZE = 1;
    Runnable mActive;
    final ArrayDeque<Runnable> mTasks = new ArrayDeque<>();
    private BlockingQueue<Runnable> poolWorkQueue = new LinkedBlockingQueue(128);
    private ThreadFactory threadFactory;
    private Executor threadPoolExecutor;

    public BehanceSDKSerialExecutor(final String str) {
        this.threadFactory = new ThreadFactory() { // from class: com.behance.sdk.executors.BehanceSDKSerialExecutor.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, str + " #" + this.mCount.getAndIncrement());
            }
        };
        this.threadPoolExecutor = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, this.poolWorkQueue, this.threadFactory);
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(final Runnable runnable) {
        this.mTasks.offer(new Runnable() { // from class: com.behance.sdk.executors.BehanceSDKSerialExecutor.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } finally {
                    BehanceSDKSerialExecutor.this.scheduleNext();
                }
            }
        });
        if (this.mActive == null) {
            scheduleNext();
        }
    }

    protected synchronized void scheduleNext() {
        Runnable runnablePoll = this.mTasks.poll();
        this.mActive = runnablePoll;
        if (runnablePoll != null) {
            this.threadPoolExecutor.execute(this.mActive);
        }
    }
}
