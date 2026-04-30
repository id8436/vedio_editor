package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes3.dex */
final class SerializingExecutor implements Executor {
    private static final Logger log = Logger.getLogger(SerializingExecutor.class.getName());
    private final Executor executor;

    @GuardedBy("internalLock")
    private final Queue<Runnable> waitQueue = new LinkedList();

    @GuardedBy("internalLock")
    private boolean isThreadScheduled = false;
    private final TaskRunner taskRunner = new TaskRunner();
    private final Object internalLock = new Object() { // from class: com.google.common.util.concurrent.SerializingExecutor.1
        public String toString() {
            return "SerializingExecutor lock: " + super.toString();
        }
    };

    public SerializingExecutor(Executor executor) {
        Preconditions.checkNotNull(executor, "'executor' must not be null.");
        this.executor = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        boolean z = true;
        Preconditions.checkNotNull(runnable, "'r' must not be null.");
        synchronized (this.internalLock) {
            this.waitQueue.add(runnable);
            if (this.isThreadScheduled) {
                z = false;
            } else {
                this.isThreadScheduled = true;
            }
        }
        if (z) {
            try {
                this.executor.execute(this.taskRunner);
            } catch (Throwable th) {
                synchronized (this.internalLock) {
                    this.isThreadScheduled = false;
                    throw th;
                }
            }
        }
    }

    class TaskRunner implements Runnable {
        private TaskRunner() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
        
            r0.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        
            com.google.common.util.concurrent.SerializingExecutor.log.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r0, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
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
                com.google.common.util.concurrent.SerializingExecutor r0 = com.google.common.util.concurrent.SerializingExecutor.this     // Catch: java.lang.Throwable -> L4c
                boolean r0 = com.google.common.util.concurrent.SerializingExecutor.access$100(r0)     // Catch: java.lang.Throwable -> L4c
                com.google.common.base.Preconditions.checkState(r0)     // Catch: java.lang.Throwable -> L4c
                com.google.common.util.concurrent.SerializingExecutor r0 = com.google.common.util.concurrent.SerializingExecutor.this     // Catch: java.lang.Throwable -> L4c
                java.lang.Object r3 = com.google.common.util.concurrent.SerializingExecutor.access$200(r0)     // Catch: java.lang.Throwable -> L4c
                monitor-enter(r3)     // Catch: java.lang.Throwable -> L4c
                com.google.common.util.concurrent.SerializingExecutor r0 = com.google.common.util.concurrent.SerializingExecutor.this     // Catch: java.lang.Throwable -> L5e
                java.util.Queue r0 = com.google.common.util.concurrent.SerializingExecutor.access$300(r0)     // Catch: java.lang.Throwable -> L5e
                java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L5e
                java.lang.Runnable r0 = (java.lang.Runnable) r0     // Catch: java.lang.Throwable -> L5e
                if (r0 != 0) goto L28
                com.google.common.util.concurrent.SerializingExecutor r0 = com.google.common.util.concurrent.SerializingExecutor.this     // Catch: java.lang.Throwable -> L5e
                r4 = 0
                com.google.common.util.concurrent.SerializingExecutor.access$102(r0, r4)     // Catch: java.lang.Throwable -> L5e
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L68
                return
            L28:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L5e
                r0.run()     // Catch: java.lang.RuntimeException -> L2d java.lang.Throwable -> L4c
                goto L2
            L2d:
                r3 = move-exception
                java.util.logging.Logger r4 = com.google.common.util.concurrent.SerializingExecutor.access$400()     // Catch: java.lang.Throwable -> L4c
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L4c
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c
                r6.<init>()     // Catch: java.lang.Throwable -> L4c
                java.lang.String r7 = "Exception while executing runnable "
                java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Throwable -> L4c
                java.lang.StringBuilder r0 = r6.append(r0)     // Catch: java.lang.Throwable -> L4c
                java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L4c
                r4.log(r5, r0, r3)     // Catch: java.lang.Throwable -> L4c
                goto L2
            L4c:
                r0 = move-exception
            L4d:
                if (r2 == 0) goto L5d
                com.google.common.util.concurrent.SerializingExecutor r1 = com.google.common.util.concurrent.SerializingExecutor.this
                java.lang.Object r1 = com.google.common.util.concurrent.SerializingExecutor.access$200(r1)
                monitor-enter(r1)
                com.google.common.util.concurrent.SerializingExecutor r2 = com.google.common.util.concurrent.SerializingExecutor.this     // Catch: java.lang.Throwable -> L65
                r3 = 0
                com.google.common.util.concurrent.SerializingExecutor.access$102(r2, r3)     // Catch: java.lang.Throwable -> L65
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L65
            L5d:
                throw r0
            L5e:
                r0 = move-exception
                r1 = r2
            L60:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L68
                throw r0     // Catch: java.lang.Throwable -> L62
            L62:
                r0 = move-exception
                r2 = r1
                goto L4d
            L65:
                r0 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L65
                throw r0
            L68:
                r0 = move-exception
                goto L60
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.SerializingExecutor.TaskRunner.run():void");
        }
    }
}
