package org.apache.http.client.methods;

import java.io.IOException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.HttpRequest;
import org.apache.http.client.utils.CloneUtilsHC4;
import org.apache.http.concurrent.Cancellable;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.message.HeaderGroup;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractExecutionAwareRequest extends AbstractHttpMessage implements Cloneable, HttpRequest, AbortableHttpRequest, HttpExecutionAware {
    private Lock abortLock = new ReentrantLock();
    private volatile boolean aborted;
    private volatile Cancellable cancellable;

    protected AbstractExecutionAwareRequest() {
    }

    @Override // org.apache.http.client.methods.AbortableHttpRequest
    @Deprecated
    public void setConnectionRequest(final ClientConnectionRequest clientConnectionRequest) {
        if (!this.aborted) {
            this.abortLock.lock();
            try {
                this.cancellable = new Cancellable() { // from class: org.apache.http.client.methods.AbstractExecutionAwareRequest.1
                    @Override // org.apache.http.concurrent.Cancellable
                    public boolean cancel() {
                        clientConnectionRequest.abortRequest();
                        return true;
                    }
                };
            } finally {
                this.abortLock.unlock();
            }
        }
    }

    @Override // org.apache.http.client.methods.AbortableHttpRequest
    @Deprecated
    public void setReleaseTrigger(final ConnectionReleaseTrigger connectionReleaseTrigger) {
        if (!this.aborted) {
            this.abortLock.lock();
            try {
                this.cancellable = new Cancellable() { // from class: org.apache.http.client.methods.AbstractExecutionAwareRequest.2
                    @Override // org.apache.http.concurrent.Cancellable
                    public boolean cancel() {
                        try {
                            connectionReleaseTrigger.abortConnection();
                            return true;
                        } catch (IOException e2) {
                            return false;
                        }
                    }
                };
            } finally {
                this.abortLock.unlock();
            }
        }
    }

    private void cancelExecution() {
        if (this.cancellable != null) {
            this.cancellable.cancel();
            this.cancellable = null;
        }
    }

    @Override // org.apache.http.client.methods.AbortableHttpRequest
    public void abort() {
        if (!this.aborted) {
            this.abortLock.lock();
            try {
                this.aborted = true;
                cancelExecution();
            } finally {
                this.abortLock.unlock();
            }
        }
    }

    @Override // org.apache.http.client.methods.HttpExecutionAware
    public boolean isAborted() {
        return this.aborted;
    }

    @Override // org.apache.http.client.methods.HttpExecutionAware
    public void setCancellable(Cancellable cancellable) {
        if (!this.aborted) {
            this.abortLock.lock();
            try {
                this.cancellable = cancellable;
            } finally {
                this.abortLock.unlock();
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        AbstractExecutionAwareRequest abstractExecutionAwareRequest = (AbstractExecutionAwareRequest) super.clone();
        abstractExecutionAwareRequest.headergroup = (HeaderGroup) CloneUtilsHC4.cloneObject(this.headergroup);
        abstractExecutionAwareRequest.params = (HttpParams) CloneUtilsHC4.cloneObject(this.params);
        abstractExecutionAwareRequest.abortLock = new ReentrantLock();
        abstractExecutionAwareRequest.cancellable = null;
        abstractExecutionAwareRequest.aborted = false;
        return abstractExecutionAwareRequest;
    }

    public void completed() {
        this.abortLock.lock();
        try {
            this.cancellable = null;
        } finally {
            this.abortLock.unlock();
        }
    }

    public void reset() {
        this.abortLock.lock();
        try {
            cancelExecution();
            this.aborted = false;
        } finally {
            this.abortLock.unlock();
        }
    }
}
