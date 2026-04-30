package org.apache.http.pool;

import java.util.concurrent.TimeUnit;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@ThreadSafe
public abstract class PoolEntry<T, C> {
    private final C conn;
    private final long created;

    @GuardedBy("this")
    private long expiry;
    private final String id;
    private final T route;
    private volatile Object state;

    @GuardedBy("this")
    private long updated;
    private final long validUnit;

    public abstract void close();

    public abstract boolean isClosed();

    public PoolEntry(String str, T t, C c2, long j, TimeUnit timeUnit) {
        Args.notNull(t, "Route");
        Args.notNull(c2, "Connection");
        Args.notNull(timeUnit, "Time unit");
        this.id = str;
        this.route = t;
        this.conn = c2;
        this.created = System.currentTimeMillis();
        if (j > 0) {
            this.validUnit = this.created + timeUnit.toMillis(j);
        } else {
            this.validUnit = Long.MAX_VALUE;
        }
        this.expiry = this.validUnit;
    }

    public PoolEntry(String str, T t, C c2) {
        this(str, t, c2, 0L, TimeUnit.MILLISECONDS);
    }

    public String getId() {
        return this.id;
    }

    public T getRoute() {
        return this.route;
    }

    public C getConnection() {
        return this.conn;
    }

    public long getCreated() {
        return this.created;
    }

    public long getValidUnit() {
        return this.validUnit;
    }

    public Object getState() {
        return this.state;
    }

    public void setState(Object obj) {
        this.state = obj;
    }

    public synchronized long getUpdated() {
        return this.updated;
    }

    public synchronized long getExpiry() {
        return this.expiry;
    }

    public synchronized void updateExpiry(long j, TimeUnit timeUnit) {
        long millis;
        Args.notNull(timeUnit, "Time unit");
        this.updated = System.currentTimeMillis();
        if (j > 0) {
            millis = this.updated + timeUnit.toMillis(j);
        } else {
            millis = Long.MAX_VALUE;
        }
        this.expiry = Math.min(millis, this.validUnit);
    }

    public synchronized boolean isExpired(long j) {
        return j >= this.expiry;
    }

    public String toString() {
        return "[id:" + this.id + "][route:" + this.route + "][state:" + this.state + "]";
    }
}
