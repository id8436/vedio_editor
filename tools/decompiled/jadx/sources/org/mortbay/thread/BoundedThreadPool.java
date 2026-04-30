package org.mortbay.thread;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class BoundedThreadPool extends AbstractLifeCycle implements Serializable, ThreadPool {
    private static int __id;
    private boolean _daemon;
    private int _id;
    private List _idle;
    private long _lastShrink;
    private String _name;
    private List _queue;
    private Set _threads;
    private final Object _lock = new Object();
    private final Object _joinLock = new Object();
    private int _maxIdleTimeMs = 60000;
    private int _maxThreads = 255;
    private int _minThreads = 1;
    private boolean _warned = false;
    int _lowThreads = 0;
    int _priority = 5;

    public BoundedThreadPool() {
        StringBuffer stringBufferAppend = new StringBuffer().append("btpool");
        int i = __id;
        __id = i + 1;
        this._name = stringBufferAppend.append(i).toString();
    }

    @Override // org.mortbay.thread.ThreadPool
    public boolean dispatch(Runnable runnable) {
        synchronized (this._lock) {
            if (!isRunning() || runnable == null) {
                return false;
            }
            int size = this._idle.size();
            if (size > 0) {
                ((PoolThread) this._idle.remove(size - 1)).dispatch(runnable);
            } else if (this._threads.size() < this._maxThreads) {
                newThread(runnable);
            } else {
                if (!this._warned) {
                    this._warned = true;
                    Log.debug("Out of threads for {}", this);
                }
                this._queue.add(runnable);
            }
            return true;
        }
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
        int size;
        synchronized (this._lock) {
            size = this._queue.size();
        }
        return size;
    }

    public boolean isDaemon() {
        return this._daemon;
    }

    @Override // org.mortbay.thread.ThreadPool
    public boolean isLowOnThreads() {
        boolean z;
        synchronized (this._lock) {
            z = this._queue.size() > this._lowThreads;
        }
        return z;
    }

    @Override // org.mortbay.thread.ThreadPool
    public void join() throws InterruptedException {
        synchronized (this._joinLock) {
            while (isRunning()) {
                this._joinLock.wait();
            }
        }
        while (isStopping()) {
            Thread.sleep(10L);
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
        synchronized (this._lock) {
            while (isStarted() && this._threads.size() < this._minThreads) {
                newThread(null);
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
        this._queue = new LinkedList();
        for (int i = 0; i < this._minThreads; i++) {
            newThread(null);
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        super.doStop();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 100) {
                break;
            }
            synchronized (this._lock) {
                Iterator it = this._threads.iterator();
                while (it.hasNext()) {
                    ((Thread) it.next()).interrupt();
                }
            }
            Thread.yield();
            if (this._threads.size() == 0) {
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

    protected PoolThread newThread(Runnable runnable) {
        PoolThread poolThread;
        synchronized (this._lock) {
            poolThread = new PoolThread(this, runnable);
            this._threads.add(poolThread);
            StringBuffer stringBufferAppend = new StringBuffer().append(this._name).append("-");
            int i = this._id;
            this._id = i + 1;
            poolThread.setName(stringBufferAppend.append(i).toString());
            poolThread.start();
        }
        return poolThread;
    }

    protected void stopJob(Thread thread, Object obj) {
        thread.interrupt();
    }

    public class PoolThread extends Thread {
        Runnable _job;
        private final BoundedThreadPool this$0;

        PoolThread(BoundedThreadPool boundedThreadPool) {
            this.this$0 = boundedThreadPool;
            this._job = null;
            setDaemon(boundedThreadPool._daemon);
            setPriority(boundedThreadPool._priority);
        }

        PoolThread(BoundedThreadPool boundedThreadPool, Runnable runnable) {
            this.this$0 = boundedThreadPool;
            this._job = null;
            setDaemon(boundedThreadPool._daemon);
            setPriority(boundedThreadPool._priority);
            this._job = runnable;
        }

        /* JADX WARN: Code restructure failed: missing block: B:131:0x017f, code lost:
        
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:132:0x0180, code lost:
        
            r1 = r0;
            r0 = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:173:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:174:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00b1, code lost:
        
            r11.this$0._lastShrink = r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00b7, code lost:
        
            r1 = r11.this$0._lock;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00bd, code lost:
        
            monitor-enter(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00be, code lost:
        
            r11.this$0._threads.remove(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00c7, code lost:
        
            monitor-exit(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00c8, code lost:
        
            monitor-enter(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00c9, code lost:
        
            r0 = r11._job;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00cb, code lost:
        
            monitor-exit(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00cc, code lost:
        
            if (r0 == null) goto L173;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00d4, code lost:
        
            if (r11.this$0.isRunning() == false) goto L174;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00d6, code lost:
        
            r1 = r11.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00d8, code lost:
        
            r1.dispatch(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00db, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00e6, code lost:
        
            monitor-enter(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00e9, code lost:
        
            if (r11._job != null) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00eb, code lost:
        
            wait(r11.this$0.getMaxIdleTimeMs());
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00f5, code lost:
        
            r0 = r11._job;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00f8, code lost:
        
            r11._job = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00fa, code lost:
        
            monitor-exit(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00fb, code lost:
        
            r1 = r11.this$0._lock;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x0101, code lost:
        
            monitor-enter(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0102, code lost:
        
            r11.this$0._idle.remove(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x010b, code lost:
        
            monitor-exit(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0112, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0113, code lost:
        
            monitor-exit(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0114, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0115, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0116, code lost:
        
            r0 = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0119, code lost:
        
            org.mortbay.log.Log.ignore(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0122, code lost:
        
            monitor-enter(r11.this$0._lock);
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0123, code lost:
        
            r11.this$0._idle.remove(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x0131, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0138, code lost:
        
            monitor-enter(r11.this$0._lock);
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x0139, code lost:
        
            r11.this$0._idle.remove(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0143, code lost:
        
            throw r0;
         */
        /* JADX WARN: Removed duplicated region for block: B:133:0x0023 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 388
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mortbay.thread.BoundedThreadPool.PoolThread.run():void");
        }

        void dispatch(Runnable runnable) {
            synchronized (this) {
                if (this._job != null || runnable == null) {
                    throw new IllegalStateException();
                }
                this._job = runnable;
                notify();
            }
        }
    }
}
