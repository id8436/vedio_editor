package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpClientConnection;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.concurrent.Cancellable;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.conn.HttpClientConnectionManager;

/* JADX INFO: loaded from: classes3.dex */
@ThreadSafe
class ConnectionHolder implements Closeable, Cancellable, ConnectionReleaseTrigger {
    private static final String TAG = "HttpClient";
    private final HttpClientConnection managedConn;
    private final HttpClientConnectionManager manager;
    private volatile boolean released;
    private volatile boolean reusable;
    private volatile Object state;
    private volatile TimeUnit tunit;
    private volatile long validDuration;

    public ConnectionHolder(HttpClientConnectionManager httpClientConnectionManager, HttpClientConnection httpClientConnection) {
        this.manager = httpClientConnectionManager;
        this.managedConn = httpClientConnection;
    }

    public boolean isReusable() {
        return this.reusable;
    }

    public void markReusable() {
        this.reusable = true;
    }

    public void markNonReusable() {
        this.reusable = false;
    }

    public void setState(Object obj) {
        this.state = obj;
    }

    public void setValidFor(long j, TimeUnit timeUnit) {
        synchronized (this.managedConn) {
            this.validDuration = j;
            this.tunit = timeUnit;
        }
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() {
        synchronized (this.managedConn) {
            if (!this.released) {
                this.released = true;
                if (this.reusable) {
                    this.manager.releaseConnection(this.managedConn, this.state, this.validDuration, this.tunit);
                } else {
                    try {
                        try {
                            this.managedConn.close();
                            if (Log.isLoggable(TAG, 3)) {
                                Log.d(TAG, "Connection discarded");
                            }
                        } catch (IOException e2) {
                            if (Log.isLoggable(TAG, 3)) {
                                Log.d(TAG, e2.getMessage(), e2);
                            }
                            this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
                        }
                    } finally {
                        this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
                    }
                }
            }
        }
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() {
        synchronized (this.managedConn) {
            if (!this.released) {
                this.released = true;
                try {
                    try {
                        this.managedConn.shutdown();
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Connection discarded");
                        }
                    } catch (IOException e2) {
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, e2.getMessage(), e2);
                        }
                        this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
                    }
                } finally {
                    this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
                }
            }
        }
    }

    @Override // org.apache.http.concurrent.Cancellable
    public boolean cancel() {
        boolean z = this.released;
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Cancelling request execution");
        }
        abortConnection();
        return !z;
    }

    public boolean isReleased() {
        return this.released;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        abortConnection();
    }
}
