package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes3.dex */
final class ListenerCallQueue<L> implements Runnable {
    private static final Logger logger = Logger.getLogger(ListenerCallQueue.class.getName());
    private final Executor executor;

    @GuardedBy("this")
    private boolean isThreadScheduled;
    private final L listener;

    @GuardedBy("this")
    private final Queue<Callback<L>> waitQueue = Lists.newLinkedList();

    abstract class Callback<L> {
        private final String methodCall;

        abstract void call(L l);

        Callback(String str) {
            this.methodCall = str;
        }

        void enqueueOn(Iterable<ListenerCallQueue<L>> iterable) {
            Iterator<ListenerCallQueue<L>> it = iterable.iterator();
            while (it.hasNext()) {
                it.next().add(this);
            }
        }
    }

    ListenerCallQueue(L l, Executor executor) {
        this.listener = (L) Preconditions.checkNotNull(l);
        this.executor = (Executor) Preconditions.checkNotNull(executor);
    }

    synchronized void add(Callback<L> callback) {
        this.waitQueue.add(callback);
    }

    void execute() {
        boolean z = true;
        synchronized (this) {
            if (this.isThreadScheduled) {
                z = false;
            } else {
                this.isThreadScheduled = true;
            }
        }
        if (z) {
            try {
                this.executor.execute(this);
            } catch (RuntimeException e2) {
                synchronized (this) {
                    this.isThreadScheduled = false;
                    logger.log(Level.SEVERE, "Exception while running callbacks for " + this.listener + " on " + this.executor, (Throwable) e2);
                    throw e2;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        r0.call(r8.listener);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
    
        com.google.common.util.concurrent.ListenerCallQueue.logger.log(java.util.logging.Level.SEVERE, "Exception while executing callback: " + r8.listener + "." + ((com.google.common.util.concurrent.ListenerCallQueue.Callback) r0).methodCall, (java.lang.Throwable) r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.lang.Throwable {
        /*
            r8 = this;
            r1 = 0
            r2 = 1
        L2:
            monitor-enter(r8)     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r8.isThreadScheduled     // Catch: java.lang.Throwable -> L55
            com.google.common.base.Preconditions.checkState(r0)     // Catch: java.lang.Throwable -> L55
            java.util.Queue<com.google.common.util.concurrent.ListenerCallQueue$Callback<L>> r0 = r8.waitQueue     // Catch: java.lang.Throwable -> L55
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L55
            com.google.common.util.concurrent.ListenerCallQueue$Callback r0 = (com.google.common.util.concurrent.ListenerCallQueue.Callback) r0     // Catch: java.lang.Throwable -> L55
            if (r0 != 0) goto L17
            r0 = 0
            r8.isThreadScheduled = r0     // Catch: java.lang.Throwable -> L55
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L5f
            return
        L17:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L55
            L r3 = r8.listener     // Catch: java.lang.RuntimeException -> L1e java.lang.Throwable -> L4c
            r0.call(r3)     // Catch: java.lang.RuntimeException -> L1e java.lang.Throwable -> L4c
            goto L2
        L1e:
            r3 = move-exception
            java.util.logging.Logger r4 = com.google.common.util.concurrent.ListenerCallQueue.logger     // Catch: java.lang.Throwable -> L4c
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L4c
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c
            r6.<init>()     // Catch: java.lang.Throwable -> L4c
            java.lang.String r7 = "Exception while executing callback: "
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Throwable -> L4c
            L r7 = r8.listener     // Catch: java.lang.Throwable -> L4c
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Throwable -> L4c
            java.lang.String r7 = "."
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Throwable -> L4c
            java.lang.String r0 = com.google.common.util.concurrent.ListenerCallQueue.Callback.access$000(r0)     // Catch: java.lang.Throwable -> L4c
            java.lang.StringBuilder r0 = r6.append(r0)     // Catch: java.lang.Throwable -> L4c
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L4c
            r4.log(r5, r0, r3)     // Catch: java.lang.Throwable -> L4c
            goto L2
        L4c:
            r0 = move-exception
        L4d:
            if (r2 == 0) goto L54
            monitor-enter(r8)
            r1 = 0
            r8.isThreadScheduled = r1     // Catch: java.lang.Throwable -> L5c
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L5c
        L54:
            throw r0
        L55:
            r0 = move-exception
            r1 = r2
        L57:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L5f
            throw r0     // Catch: java.lang.Throwable -> L59
        L59:
            r0 = move-exception
            r2 = r1
            goto L4d
        L5c:
            r0 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L5c
            throw r0
        L5f:
            r0 = move-exception
            goto L57
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.ListenerCallQueue.run():void");
    }
}
