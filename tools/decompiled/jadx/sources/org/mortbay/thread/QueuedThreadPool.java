package org.mortbay.thread;

import android.support.v7.widget.helper.ItemTouchHelper;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class QueuedThreadPool extends AbstractLifeCycle implements Serializable, ThreadPool {
    private boolean _daemon;
    private int _id;
    private List _idle;
    private Runnable[] _jobs;
    private final Object _joinLock;
    private long _lastShrink;
    private final Object _lock;
    private int _lowThreads;
    private int _maxIdleTimeMs;
    private int _maxQueued;
    private int _maxStopTimeMs;
    private int _maxThreads;
    private int _minThreads;
    private String _name;
    private int _nextJob;
    private int _nextJobSlot;
    private int _priority;
    private int _queued;
    private int _spawnOrShrinkAt;
    private Set _threads;
    private final Object _threadsLock;
    private boolean _warned;

    /* JADX INFO: renamed from: org.mortbay.thread.QueuedThreadPool$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    static int access$410(QueuedThreadPool queuedThreadPool) {
        int i = queuedThreadPool._queued;
        queuedThreadPool._queued = i - 1;
        return i;
    }

    static int access$608(QueuedThreadPool queuedThreadPool) {
        int i = queuedThreadPool._nextJob;
        queuedThreadPool._nextJob = i + 1;
        return i;
    }

    public QueuedThreadPool() {
        this._lock = new Lock(this, null);
        this._threadsLock = new Lock(this, null);
        this._joinLock = new Lock(this, null);
        this._maxIdleTimeMs = 60000;
        this._maxThreads = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        this._minThreads = 2;
        this._warned = false;
        this._lowThreads = 0;
        this._priority = 5;
        this._spawnOrShrinkAt = 0;
        this._name = new StringBuffer().append("qtp-").append(hashCode()).toString();
    }

    public QueuedThreadPool(int i) {
        this();
        setMaxThreads(i);
    }

    @Override // org.mortbay.thread.ThreadPool
    public boolean dispatch(Runnable runnable) {
        PoolThread poolThread;
        boolean z = false;
        if (!isRunning() || runnable == null) {
            return false;
        }
        synchronized (this._lock) {
            int size = this._idle.size();
            if (size > 0) {
                poolThread = (PoolThread) this._idle.remove(size - 1);
            } else {
                this._queued++;
                if (this._queued > this._maxQueued) {
                    this._maxQueued = this._queued;
                }
                Runnable[] runnableArr = this._jobs;
                int i = this._nextJobSlot;
                this._nextJobSlot = i + 1;
                runnableArr[i] = runnable;
                if (this._nextJobSlot == this._jobs.length) {
                    this._nextJobSlot = 0;
                }
                if (this._nextJobSlot == this._nextJob) {
                    Runnable[] runnableArr2 = new Runnable[this._jobs.length + this._maxThreads];
                    int length = this._jobs.length - this._nextJob;
                    if (length > 0) {
                        System.arraycopy(this._jobs, this._nextJob, runnableArr2, 0, length);
                    }
                    if (this._nextJob != 0) {
                        System.arraycopy(this._jobs, 0, runnableArr2, length, this._nextJobSlot);
                    }
                    this._jobs = runnableArr2;
                    this._nextJob = 0;
                    this._nextJobSlot = this._queued;
                }
                z = this._queued > this._spawnOrShrinkAt;
                poolThread = null;
            }
        }
        if (poolThread != null) {
            poolThread.dispatch(runnable);
            return true;
        }
        if (!z) {
            return true;
        }
        newThread();
        return true;
    }

    @Override // org.mortbay.thread.ThreadPool
    public int getIdleThreads() {
        if (this._idle == null) {
            return 0;
        }
        return this._idle.size();
    }

    public int getLowThreads() {
        return this._lowThreads;
    }

    public int getMaxQueued() {
        return this._maxQueued;
    }

    public int getMaxIdleTimeMs() {
        return this._maxIdleTimeMs;
    }

    public int getMaxThreads() {
        return this._maxThreads;
    }

    public int getMinThreads() {
        return this._minThreads;
    }

    public String getName() {
        return this._name;
    }

    @Override // org.mortbay.thread.ThreadPool
    public int getThreads() {
        return this._threads.size();
    }

    public int getThreadsPriority() {
        return this._priority;
    }

    public int getQueueSize() {
        return this._queued;
    }

    public int getSpawnOrShrinkAt() {
        return this._spawnOrShrinkAt;
    }

    public void setSpawnOrShrinkAt(int i) {
        this._spawnOrShrinkAt = i;
    }

    public int getMaxStopTimeMs() {
        return this._maxStopTimeMs;
    }

    public void setMaxStopTimeMs(int i) {
        this._maxStopTimeMs = i;
    }

    public boolean isDaemon() {
        return this._daemon;
    }

    @Override // org.mortbay.thread.ThreadPool
    public boolean isLowOnThreads() {
        return this._queued > this._lowThreads;
    }

    @Override // org.mortbay.thread.ThreadPool
    public void join() throws InterruptedException {
        synchronized (this._joinLock) {
            while (isRunning()) {
                this._joinLock.wait();
            }
        }
        while (isStopping()) {
            Thread.sleep(100L);
        }
    }

    public void setDaemon(boolean z) {
        this._daemon = z;
    }

    public void setLowThreads(int i) {
        this._lowThreads = i;
    }

    public void setMaxIdleTimeMs(int i) {
        this._maxIdleTimeMs = i;
    }

    public void setMaxThreads(int i) {
        if (isStarted() && i < this._minThreads) {
            throw new IllegalArgumentException("!minThreads<maxThreads");
        }
        this._maxThreads = i;
    }

    public void setMinThreads(int i) {
        if (isStarted() && (i <= 0 || i > this._maxThreads)) {
            throw new IllegalArgumentException("!0<=minThreads<maxThreads");
        }
        this._minThreads = i;
        synchronized (this._threadsLock) {
            while (isStarted() && this._threads.size() < this._minThreads) {
                newThread();
            }
        }
    }

    public void setName(String str) {
        this._name = str;
    }

    public void setThreadsPriority(int i) {
        this._priority = i;
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        if (this._maxThreads < this._minThreads || this._minThreads <= 0) {
            throw new IllegalArgumentException("!0<minThreads<maxThreads");
        }
        this._threads = new HashSet();
        this._idle = new ArrayList();
        this._jobs = new Runnable[this._maxThreads];
        for (int i = 0; i < this._minThreads; i++) {
            newThread();
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        super.doStop();
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 100) {
                break;
            }
            synchronized (this._threadsLock) {
                Iterator it = this._threads.iterator();
                while (it.hasNext()) {
                    ((Thread) it.next()).interrupt();
                }
            }
            Thread.yield();
            if (this._threads.size() == 0 || (this._maxStopTimeMs > 0 && this._maxStopTimeMs < System.currentTimeMillis() - jCurrentTimeMillis)) {
                break;
            }
            try {
                Thread.sleep(i2 * 100);
            } catch (InterruptedException e2) {
            }
            i = i2 + 1;
        }
        if (this._threads.size() > 0) {
            Log.warn(new StringBuffer().append(this._threads.size()).append(" threads could not be stopped").toString());
        }
        synchronized (this._joinLock) {
            this._joinLock.notifyAll();
        }
    }

    protected void newThread() {
        synchronized (this._threadsLock) {
            if (this._threads.size() < this._maxThreads) {
                PoolThread poolThread = new PoolThread(this);
                this._threads.add(poolThread);
                StringBuffer stringBufferAppend = new StringBuffer().append(poolThread.hashCode()).append("@").append(this._name).append("-");
                int i = this._id;
                this._id = i + 1;
                poolThread.setName(stringBufferAppend.append(i).toString());
                poolThread.start();
            } else if (!this._warned) {
                this._warned = true;
                Log.debug("Max threads for {}", this);
            }
        }
    }

    protected void stopJob(Thread thread, Object obj) {
        thread.interrupt();
    }

    public String dump() {
        StringBuffer stringBuffer = new StringBuffer();
        synchronized (this._threadsLock) {
            for (Thread thread : this._threads) {
                stringBuffer.append(thread.getName()).append(" ").append(thread.toString()).append('\n');
            }
        }
        return stringBuffer.toString();
    }

    public boolean stopThread(String str) {
        synchronized (this._threadsLock) {
            for (Thread thread : this._threads) {
                if (str.equals(thread.getName())) {
                    thread.stop();
                    return true;
                }
            }
            return false;
        }
    }

    public boolean interruptThread(String str) {
        synchronized (this._threadsLock) {
            for (Thread thread : this._threads) {
                if (str.equals(thread.getName())) {
                    thread.interrupt();
                    return true;
                }
            }
            return false;
        }
    }

    public class PoolThread extends Thread {
        Runnable _job = null;
        private final QueuedThreadPool this$0;

        PoolThread(QueuedThreadPool queuedThreadPool) {
            this.this$0 = queuedThreadPool;
            setDaemon(queuedThreadPool._daemon);
            setPriority(queuedThreadPool._priority);
        }

        /* JADX WARN: Code restructure failed: missing block: B:173:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x008b, code lost:
        
            r1.dispatch(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x008e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00d2, code lost:
        
            r10.this$0._lastShrink = r4;
            r10.this$0._idle.remove(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00e1, code lost:
        
            r1 = r10.this$0._lock;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00e7, code lost:
        
            monitor-enter(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00e8, code lost:
        
            r10.this$0._idle.remove(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00f1, code lost:
        
            monitor-exit(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00f2, code lost:
        
            r1 = r10.this$0._threadsLock;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00f8, code lost:
        
            monitor-enter(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00f9, code lost:
        
            r10.this$0._threads.remove(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0102, code lost:
        
            monitor-exit(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0103, code lost:
        
            monitor-enter(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0104, code lost:
        
            r0 = r10._job;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0106, code lost:
        
            monitor-exit(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0107, code lost:
        
            if (r0 == null) goto L173;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0109, code lost:
        
            r1 = r10.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0119, code lost:
        
            monitor-enter(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x011c, code lost:
        
            if (r10._job != null) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x011e, code lost:
        
            wait(r10.this$0.getMaxIdleTimeMs());
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x0128, code lost:
        
            r2 = r10._job;
            r10._job = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x012d, code lost:
        
            monitor-exit(r10);
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 434
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mortbay.thread.QueuedThreadPool.PoolThread.run():void");
        }

        void dispatch(Runnable runnable) {
            synchronized (this) {
                this._job = runnable;
                notify();
            }
        }
    }

    class Lock {
        private final QueuedThreadPool this$0;

        private Lock(QueuedThreadPool queuedThreadPool) {
            this.this$0 = queuedThreadPool;
        }

        Lock(QueuedThreadPool queuedThreadPool, AnonymousClass1 anonymousClass1) {
            this(queuedThreadPool);
        }
    }
}
