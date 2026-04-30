package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public final class Monitor {

    @GuardedBy("lock")
    private Guard activeGuards;
    private final boolean fair;
    private final ReentrantLock lock;

    @Beta
    public abstract class Guard {
        final Condition condition;
        final Monitor monitor;

        @GuardedBy("monitor.lock")
        Guard next;

        @GuardedBy("monitor.lock")
        int waiterCount = 0;

        public abstract boolean isSatisfied();

        protected Guard(Monitor monitor) {
            this.monitor = (Monitor) Preconditions.checkNotNull(monitor, "monitor");
            this.condition = monitor.lock.newCondition();
        }
    }

    public Monitor() {
        this(false);
    }

    public Monitor(boolean z) {
        this.activeGuards = null;
        this.fair = z;
        this.lock = new ReentrantLock(z);
    }

    public void enter() {
        this.lock.lock();
    }

    public void enterInterruptibly() throws InterruptedException {
        this.lock.lockInterruptibly();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enter(long r10, java.util.concurrent.TimeUnit r12) throws java.lang.Throwable {
        /*
            r9 = this;
            r0 = 1
            long r2 = r12.toNanos(r10)
            java.util.concurrent.locks.ReentrantLock r4 = r9.lock
            boolean r1 = r9.fair
            if (r1 != 0) goto L12
            boolean r1 = r4.tryLock()
            if (r1 == 0) goto L12
        L11:
            return r0
        L12:
            long r6 = java.lang.System.nanoTime()
            long r6 = r6 + r2
            boolean r1 = java.lang.Thread.interrupted()
        L1b:
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.InterruptedException -> L2b java.lang.Throwable -> L34
            boolean r0 = r4.tryLock(r2, r5)     // Catch: java.lang.InterruptedException -> L2b java.lang.Throwable -> L34
            if (r1 == 0) goto L11
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
            goto L11
        L2b:
            r1 = move-exception
            long r2 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L3f
            long r2 = r6 - r2
            r1 = r0
            goto L1b
        L34:
            r0 = move-exception
        L35:
            if (r1 == 0) goto L3e
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L3e:
            throw r0
        L3f:
            r1 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enter(long, java.util.concurrent.TimeUnit):boolean");
    }

    public boolean enterInterruptibly(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.lock.tryLock(j, timeUnit);
    }

    public boolean tryEnter() {
        return this.lock.tryLock();
    }

    public void enterWhen(Guard guard) throws InterruptedException {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lockInterruptibly();
        try {
            if (!guard.isSatisfied()) {
                await(guard, zIsHeldByCurrentThread);
            }
        } catch (Throwable th) {
            leave();
            throw th;
        }
    }

    public void enterWhenUninterruptibly(Guard guard) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lock();
        try {
            if (!guard.isSatisfied()) {
                awaitUninterruptibly(guard, zIsHeldByCurrentThread);
            }
        } catch (Throwable th) {
            leave();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enterWhen(com.google.common.util.concurrent.Monitor.Guard r9, long r10, java.util.concurrent.TimeUnit r12) throws java.lang.InterruptedException {
        /*
            r8 = this;
            r2 = 0
            long r0 = r12.toNanos(r10)
            com.google.common.util.concurrent.Monitor r3 = r9.monitor
            if (r3 == r8) goto Lf
            java.lang.IllegalMonitorStateException r0 = new java.lang.IllegalMonitorStateException
            r0.<init>()
            throw r0
        Lf:
            java.util.concurrent.locks.ReentrantLock r3 = r8.lock
            boolean r4 = r3.isHeldByCurrentThread()
            boolean r5 = r8.fair
            if (r5 != 0) goto L1f
            boolean r5 = r3.tryLock()
            if (r5 != 0) goto L30
        L1f:
            long r6 = java.lang.System.nanoTime()
            long r0 = r0 + r6
            boolean r5 = r3.tryLock(r10, r12)
            if (r5 != 0) goto L2b
        L2a:
            return r2
        L2b:
            long r6 = java.lang.System.nanoTime()
            long r0 = r0 - r6
        L30:
            boolean r5 = r9.isSatisfied()     // Catch: java.lang.Throwable -> L46
            if (r5 != 0) goto L3c
            boolean r0 = r8.awaitNanos(r9, r0, r4)     // Catch: java.lang.Throwable -> L46
            if (r0 == 0) goto L44
        L3c:
            r0 = 1
        L3d:
            if (r0 != 0) goto L42
            r3.unlock()
        L42:
            r2 = r0
            goto L2a
        L44:
            r0 = r2
            goto L3d
        L46:
            r0 = move-exception
            if (r4 != 0) goto L4c
            r8.signalNextWaiter()     // Catch: java.lang.Throwable -> L50
        L4c:
            r3.unlock()
            throw r0
        L50:
            r0 = move-exception
            r3.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enterWhen(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0058, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0052 A[Catch: InterruptedException -> 0x0070, all -> 0x007a, TRY_LEAVE, TryCatch #0 {InterruptedException -> 0x0070, blocks: (B:23:0x004c, B:25:0x0052), top: B:51:0x004c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005b A[Catch: all -> 0x007f, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x007f, blocks: (B:29:0x005b, B:40:0x007b, B:41:0x007e, B:12:0x002c, B:23:0x004c, B:25:0x0052, B:37:0x0073), top: B:56:0x002c, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0058 A[EDGE_INSN: B:60:0x0058->B:27:0x0058 BREAK  A[LOOP:0: B:51:0x004c->B:38:0x0077], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enterWhenUninterruptibly(com.google.common.util.concurrent.Monitor.Guard r11, long r12, java.util.concurrent.TimeUnit r14) throws java.lang.Throwable {
        /*
            r10 = this;
            long r2 = r14.toNanos(r12)
            com.google.common.util.concurrent.Monitor r0 = r11.monitor
            if (r0 == r10) goto Le
            java.lang.IllegalMonitorStateException r0 = new java.lang.IllegalMonitorStateException
            r0.<init>()
            throw r0
        Le:
            java.util.concurrent.locks.ReentrantLock r5 = r10.lock
            long r0 = java.lang.System.nanoTime()
            long r6 = r0 + r2
            boolean r4 = r5.isHeldByCurrentThread()
            boolean r0 = java.lang.Thread.interrupted()
            boolean r1 = r10.fair     // Catch: java.lang.Throwable -> L8a
            if (r1 != 0) goto L28
            boolean r1 = r5.tryLock()     // Catch: java.lang.Throwable -> L8a
            if (r1 != 0) goto L4a
        L28:
            r1 = 0
            r9 = r1
            r1 = r0
            r0 = r9
        L2c:
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.InterruptedException -> L68 java.lang.Throwable -> L7f
            boolean r0 = r5.tryLock(r2, r8)     // Catch: java.lang.InterruptedException -> L68 java.lang.Throwable -> L7f
            if (r0 != 0) goto L3f
            r0 = 0
            if (r1 == 0) goto L3e
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L3e:
            return r0
        L3f:
            r9 = r0
            r0 = r1
            r1 = r9
        L42:
            long r2 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L8f
            long r2 = r6 - r2
            if (r1 == 0) goto L94
        L4a:
            r1 = r0
            r0 = r4
        L4c:
            boolean r4 = r11.isSatisfied()     // Catch: java.lang.InterruptedException -> L70 java.lang.Throwable -> L7a
            if (r4 != 0) goto L58
            boolean r0 = r10.awaitNanos(r11, r2, r0)     // Catch: java.lang.InterruptedException -> L70 java.lang.Throwable -> L7a
            if (r0 == 0) goto L6e
        L58:
            r0 = 1
        L59:
            if (r0 != 0) goto L5e
            r5.unlock()     // Catch: java.lang.Throwable -> L7f
        L5e:
            if (r1 == 0) goto L3e
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
            goto L3e
        L68:
            r1 = move-exception
            r1 = 1
            r9 = r0
            r0 = r1
            r1 = r9
            goto L42
        L6e:
            r0 = 0
            goto L59
        L70:
            r0 = move-exception
            r1 = 1
            r0 = 0
            long r2 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L7a
            long r2 = r6 - r2
            goto L4c
        L7a:
            r0 = move-exception
            r5.unlock()     // Catch: java.lang.Throwable -> L7f
            throw r0     // Catch: java.lang.Throwable -> L7f
        L7f:
            r0 = move-exception
        L80:
            if (r1 == 0) goto L89
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L89:
            throw r0
        L8a:
            r1 = move-exception
            r9 = r1
            r1 = r0
            r0 = r9
            goto L80
        L8f:
            r1 = move-exception
            r9 = r1
            r1 = r0
            r0 = r9
            goto L80
        L94:
            r9 = r1
            r1 = r0
            r0 = r9
            goto L2c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enterWhenUninterruptibly(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public boolean enterIf(Guard guard) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            if (!zIsSatisfied) {
            }
            return zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean enterIfInterruptibly(Guard guard) throws InterruptedException {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lockInterruptibly();
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            if (!zIsSatisfied) {
            }
            return zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean enterIf(Guard guard, long j, TimeUnit timeUnit) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        if (!enter(j, timeUnit)) {
            return false;
        }
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            return !zIsSatisfied ? zIsSatisfied : zIsSatisfied;
        } finally {
            this.lock.unlock();
        }
    }

    public boolean enterIfInterruptibly(Guard guard, long j, TimeUnit timeUnit) throws InterruptedException {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        if (!reentrantLock.tryLock(j, timeUnit)) {
            return false;
        }
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            return !zIsSatisfied ? zIsSatisfied : zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean tryEnterIf(Guard guard) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        if (!reentrantLock.tryLock()) {
            return false;
        }
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            return !zIsSatisfied ? zIsSatisfied : zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void waitFor(Guard guard) throws InterruptedException {
        if (!((guard.monitor == this) & this.lock.isHeldByCurrentThread())) {
            throw new IllegalMonitorStateException();
        }
        if (!guard.isSatisfied()) {
            await(guard, true);
        }
    }

    public void waitForUninterruptibly(Guard guard) {
        if (!((guard.monitor == this) & this.lock.isHeldByCurrentThread())) {
            throw new IllegalMonitorStateException();
        }
        if (!guard.isSatisfied()) {
            awaitUninterruptibly(guard, true);
        }
    }

    public boolean waitFor(Guard guard, long j, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j);
        if (!(guard.monitor == this) || !this.lock.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        return guard.isSatisfied() || awaitNanos(guard, nanos, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean waitForUninterruptibly(com.google.common.util.concurrent.Monitor.Guard r9, long r10, java.util.concurrent.TimeUnit r12) throws java.lang.Throwable {
        /*
            r8 = this;
            r2 = 0
            r1 = 1
            long r4 = r12.toNanos(r10)
            com.google.common.util.concurrent.Monitor r0 = r9.monitor
            if (r0 != r8) goto L1a
            r0 = r1
        Lb:
            java.util.concurrent.locks.ReentrantLock r3 = r8.lock
            boolean r3 = r3.isHeldByCurrentThread()
            r0 = r0 & r3
            if (r0 != 0) goto L1c
            java.lang.IllegalMonitorStateException r0 = new java.lang.IllegalMonitorStateException
            r0.<init>()
            throw r0
        L1a:
            r0 = r2
            goto Lb
        L1c:
            boolean r0 = r9.isSatisfied()
            if (r0 == 0) goto L23
        L22:
            return r1
        L23:
            long r6 = java.lang.System.nanoTime()
            long r6 = r6 + r4
            boolean r3 = java.lang.Thread.interrupted()
            r0 = r1
        L2d:
            boolean r1 = r8.awaitNanos(r9, r4, r0)     // Catch: java.lang.InterruptedException -> L3b java.lang.Throwable -> L53
            if (r3 == 0) goto L22
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L22
        L3b:
            r0 = move-exception
            boolean r0 = r9.isSatisfied()     // Catch: java.lang.Throwable -> L5f
            if (r0 == 0) goto L4a
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L22
        L4a:
            long r4 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L5f
            long r4 = r6 - r4
            r3 = r1
            r0 = r2
            goto L2d
        L53:
            r0 = move-exception
            r1 = r3
        L55:
            if (r1 == 0) goto L5e
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L5e:
            throw r0
        L5f:
            r0 = move-exception
            goto L55
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.waitForUninterruptibly(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public void leave() {
        ReentrantLock reentrantLock = this.lock;
        try {
            if (reentrantLock.getHoldCount() == 1) {
                signalNextWaiter();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean isFair() {
        return this.fair;
    }

    public boolean isOccupied() {
        return this.lock.isLocked();
    }

    public boolean isOccupiedByCurrentThread() {
        return this.lock.isHeldByCurrentThread();
    }

    public int getOccupiedDepth() {
        return this.lock.getHoldCount();
    }

    public int getQueueLength() {
        return this.lock.getQueueLength();
    }

    public boolean hasQueuedThreads() {
        return this.lock.hasQueuedThreads();
    }

    public boolean hasQueuedThread(Thread thread) {
        return this.lock.hasQueuedThread(thread);
    }

    public boolean hasWaiters(Guard guard) {
        return getWaitQueueLength(guard) > 0;
    }

    public int getWaitQueueLength(Guard guard) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        this.lock.lock();
        try {
            return guard.waiterCount;
        } finally {
            this.lock.unlock();
        }
    }

    @GuardedBy("lock")
    private void signalNextWaiter() {
        for (Guard guard = this.activeGuards; guard != null; guard = guard.next) {
            if (isSatisfied(guard)) {
                guard.condition.signal();
                return;
            }
        }
    }

    @GuardedBy("lock")
    private boolean isSatisfied(Guard guard) {
        try {
            return guard.isSatisfied();
        } catch (Throwable th) {
            signalAllWaiters();
            throw Throwables.propagate(th);
        }
    }

    @GuardedBy("lock")
    private void signalAllWaiters() {
        for (Guard guard = this.activeGuards; guard != null; guard = guard.next) {
            guard.condition.signalAll();
        }
    }

    @GuardedBy("lock")
    private void beginWaitingFor(Guard guard) {
        int i = guard.waiterCount;
        guard.waiterCount = i + 1;
        if (i == 0) {
            guard.next = this.activeGuards;
            this.activeGuards = guard;
        }
    }

    @GuardedBy("lock")
    private void endWaitingFor(Guard guard) {
        int i = guard.waiterCount - 1;
        guard.waiterCount = i;
        if (i == 0) {
            Guard guard2 = this.activeGuards;
            Guard guard3 = null;
            while (guard2 != guard) {
                Guard guard4 = guard2;
                guard2 = guard2.next;
                guard3 = guard4;
            }
            if (guard3 == null) {
                this.activeGuards = guard2.next;
            } else {
                guard3.next = guard2.next;
            }
            guard2.next = null;
        }
    }

    @GuardedBy("lock")
    private void await(Guard guard, boolean z) throws InterruptedException {
        if (z) {
            signalNextWaiter();
        }
        beginWaitingFor(guard);
        do {
            try {
                guard.condition.await();
            } finally {
                endWaitingFor(guard);
            }
        } while (!guard.isSatisfied());
    }

    @GuardedBy("lock")
    private void awaitUninterruptibly(Guard guard, boolean z) {
        if (z) {
            signalNextWaiter();
        }
        beginWaitingFor(guard);
        do {
            try {
                guard.condition.awaitUninterruptibly();
            } finally {
                endWaitingFor(guard);
            }
        } while (!guard.isSatisfied());
    }

    @GuardedBy("lock")
    private boolean awaitNanos(Guard guard, long j, boolean z) throws InterruptedException {
        if (z) {
            signalNextWaiter();
        }
        beginWaitingFor(guard);
        while (j >= 0) {
            try {
                j = guard.condition.awaitNanos(j);
                if (guard.isSatisfied()) {
                    return true;
                }
            } finally {
                endWaitingFor(guard);
            }
        }
        return false;
    }
}
