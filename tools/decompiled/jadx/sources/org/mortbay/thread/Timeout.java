package org.mortbay.thread;

import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class Timeout {
    private long _duration;
    private Task _head;
    private Object _lock;
    private volatile long _now;

    public Timeout() {
        this._now = System.currentTimeMillis();
        this._head = new Task();
        this._lock = new Object();
        this._head._timeout = this;
    }

    public Timeout(Object obj) {
        this._now = System.currentTimeMillis();
        this._head = new Task();
        this._lock = obj;
        this._head._timeout = this;
    }

    public long getDuration() {
        return this._duration;
    }

    public void setDuration(long j) {
        this._duration = j;
    }

    public long setNow() {
        this._now = System.currentTimeMillis();
        return this._now;
    }

    public long getNow() {
        return this._now;
    }

    public void setNow(long j) {
        this._now = j;
    }

    public Task expired() {
        long j = this._now;
        synchronized (this._lock) {
            long j2 = j - this._duration;
            if (this._head._next == this._head) {
                return null;
            }
            Task task = this._head._next;
            if (task._timestamp > j2) {
                return null;
            }
            task.unlink();
            task._expired = true;
            return task;
        }
    }

    public void tick() {
        Task task;
        long j = this._now - this._duration;
        while (true) {
            try {
                synchronized (this._lock) {
                    task = this._head._next;
                    if (task == this._head || task._timestamp > j) {
                        return;
                    }
                    task.unlink();
                    task._expired = true;
                    task.expire();
                }
                task.expired();
            } catch (Throwable th) {
                Log.warn(Log.EXCEPTION, th);
            }
        }
    }

    public void tick(long j) {
        this._now = j;
        tick();
    }

    public void schedule(Task task) {
        schedule(task, 0L);
    }

    public void schedule(Task task, long j) {
        synchronized (this._lock) {
            if (task._timestamp != 0) {
                task.unlink();
                task._timestamp = 0L;
            }
            task._timeout = this;
            task._expired = false;
            task._delay = j;
            task._timestamp = this._now + j;
            Task task2 = this._head._prev;
            while (task2 != this._head && task2._timestamp > task._timestamp) {
                task2 = task2._prev;
            }
            task2.link(task);
        }
    }

    public void cancelAll() {
        synchronized (this._lock) {
            Task task = this._head;
            Task task2 = this._head;
            Task task3 = this._head;
            task2._prev = task3;
            task._next = task3;
        }
    }

    public boolean isEmpty() {
        boolean z;
        synchronized (this._lock) {
            z = this._head._next == this._head;
        }
        return z;
    }

    public long getTimeToNext() {
        long j;
        synchronized (this._lock) {
            if (this._head._next == this._head) {
                j = -1;
            } else {
                long j2 = (this._duration + this._head._next._timestamp) - this._now;
                j = j2 >= 0 ? j2 : 0L;
            }
        }
        return j;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        for (Task task = this._head._next; task != this._head; task = task._next) {
            stringBuffer.append("-->");
            stringBuffer.append(task);
        }
        return stringBuffer.toString();
    }

    public class Task {
        long _delay;
        Timeout _timeout;
        long _timestamp = 0;
        boolean _expired = false;
        Task _prev = this;
        Task _next = this;

        public long getTimestamp() {
            return this._timestamp;
        }

        public long getAge() {
            Timeout timeout = this._timeout;
            if (timeout == null) {
                return 0L;
            }
            long j = timeout._now;
            if (j == 0 || this._timestamp == 0) {
                return 0L;
            }
            return j - this._timestamp;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unlink() {
            this._next._prev = this._prev;
            this._prev._next = this._next;
            this._prev = this;
            this._next = this;
            this._expired = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void link(Task task) {
            Task task2 = this._next;
            this._next._prev = task;
            this._next = task;
            this._next._next = task2;
            this._next._prev = this;
        }

        public void schedule(Timeout timeout) {
            timeout.schedule(this);
        }

        public void schedule(Timeout timeout, long j) {
            timeout.schedule(this, j);
        }

        public void reschedule() {
            Timeout timeout = this._timeout;
            if (timeout != null) {
                timeout.schedule(this, this._delay);
            }
        }

        public void cancel() {
            Timeout timeout = this._timeout;
            if (timeout != null) {
                synchronized (timeout._lock) {
                    unlink();
                    this._timestamp = 0L;
                }
            }
        }

        public boolean isExpired() {
            return this._expired;
        }

        public boolean isScheduled() {
            return this._next != this;
        }

        public void expire() {
        }

        public void expired() {
        }
    }
}
