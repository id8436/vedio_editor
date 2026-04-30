package org.mortbay.jetty.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import org.mortbay.io.Connection;
import org.mortbay.io.EndPoint;
import org.mortbay.io.nio.SelectChannelEndPoint;
import org.mortbay.io.nio.SelectorManager;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.RetryRequest;
import org.mortbay.log.Log;
import org.mortbay.thread.Timeout;
import org.mortbay.util.ajax.Continuation;

/* JADX INFO: loaded from: classes3.dex */
public class SelectChannelConnector extends AbstractNIOConnector {
    protected transient ServerSocketChannel _acceptChannel;
    private long _lowResourcesConnections;
    private long _lowResourcesMaxIdleTime;
    private SelectorManager _manager = new SelectorManager(this) { // from class: org.mortbay.jetty.nio.SelectChannelConnector.1
        private final SelectChannelConnector this$0;

        {
            this.this$0 = this;
        }

        @Override // org.mortbay.io.nio.SelectorManager
        protected SocketChannel acceptChannel(SelectionKey selectionKey) throws IOException {
            SocketChannel socketChannelAccept = ((ServerSocketChannel) selectionKey.channel()).accept();
            if (socketChannelAccept == null) {
                return null;
            }
            socketChannelAccept.configureBlocking(false);
            this.this$0.configure(socketChannelAccept.socket());
            return socketChannelAccept;
        }

        @Override // org.mortbay.io.nio.SelectorManager
        public boolean dispatch(Runnable runnable) throws IOException {
            return this.this$0.getThreadPool().dispatch(runnable);
        }

        @Override // org.mortbay.io.nio.SelectorManager
        protected void endPointClosed(SelectChannelEndPoint selectChannelEndPoint) {
            this.this$0.connectionClosed((HttpConnection) selectChannelEndPoint.getConnection());
        }

        @Override // org.mortbay.io.nio.SelectorManager
        protected void endPointOpened(SelectChannelEndPoint selectChannelEndPoint) {
            this.this$0.connectionOpened((HttpConnection) selectChannelEndPoint.getConnection());
        }

        @Override // org.mortbay.io.nio.SelectorManager
        protected Connection newConnection(SocketChannel socketChannel, SelectChannelEndPoint selectChannelEndPoint) {
            return this.this$0.newConnection(socketChannel, selectChannelEndPoint);
        }

        @Override // org.mortbay.io.nio.SelectorManager
        protected SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) throws IOException {
            return this.this$0.newEndPoint(socketChannel, selectSet, selectionKey);
        }
    };

    @Override // org.mortbay.jetty.AbstractConnector
    public void accept(int i) throws IOException {
        this._manager.doSelect(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0012 A[Catch: all -> 0x0021, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000e, B:8:0x0012, B:9:0x0017, B:10:0x001a, B:13:0x001d), top: B:17:0x0001, inners: #1 }] */
    @Override // org.mortbay.jetty.Connector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() throws java.io.IOException {
        /*
            r1 = this;
            monitor-enter(r1)
            org.mortbay.io.nio.SelectorManager r0 = r1._manager     // Catch: java.lang.Throwable -> L21
            boolean r0 = r0.isRunning()     // Catch: java.lang.Throwable -> L21
            if (r0 == 0) goto Le
            org.mortbay.io.nio.SelectorManager r0 = r1._manager     // Catch: java.lang.Exception -> L1c java.lang.Throwable -> L21
            r0.stop()     // Catch: java.lang.Exception -> L1c java.lang.Throwable -> L21
        Le:
            java.nio.channels.ServerSocketChannel r0 = r1._acceptChannel     // Catch: java.lang.Throwable -> L21
            if (r0 == 0) goto L17
            java.nio.channels.ServerSocketChannel r0 = r1._acceptChannel     // Catch: java.lang.Throwable -> L21
            r0.close()     // Catch: java.lang.Throwable -> L21
        L17:
            r0 = 0
            r1._acceptChannel = r0     // Catch: java.lang.Throwable -> L21
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L21
            return
        L1c:
            r0 = move-exception
            org.mortbay.log.Log.warn(r0)     // Catch: java.lang.Throwable -> L21
            goto Le
        L21:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L21
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.nio.SelectChannelConnector.close():void");
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void customize(EndPoint endPoint, Request request) throws IOException {
        ConnectorEndPoint connectorEndPoint = (ConnectorEndPoint) endPoint;
        connectorEndPoint.cancelIdle();
        request.setTimeStamp(connectorEndPoint.getSelectSet().getNow());
        super.customize(endPoint, request);
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void persist(EndPoint endPoint) throws IOException {
        ((ConnectorEndPoint) endPoint).scheduleIdle();
        super.persist(endPoint);
    }

    @Override // org.mortbay.jetty.Connector
    public Object getConnection() {
        return this._acceptChannel;
    }

    public boolean getDelaySelectKeyUpdate() {
        return this._manager.isDelaySelectKeyUpdate();
    }

    @Override // org.mortbay.jetty.Connector
    public int getLocalPort() {
        int localPort;
        synchronized (this) {
            localPort = (this._acceptChannel == null || !this._acceptChannel.isOpen()) ? -1 : this._acceptChannel.socket().getLocalPort();
        }
        return localPort;
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public Continuation newContinuation() {
        return new RetryContinuation();
    }

    public void open() throws IOException {
        synchronized (this) {
            if (this._acceptChannel == null) {
                this._acceptChannel = ServerSocketChannel.open();
                this._acceptChannel.socket().setReuseAddress(getReuseAddress());
                this._acceptChannel.socket().bind(getHost() == null ? new InetSocketAddress(getPort()) : new InetSocketAddress(getHost(), getPort()), getAcceptQueueSize());
                this._acceptChannel.configureBlocking(false);
            }
        }
    }

    public void setDelaySelectKeyUpdate(boolean z) {
        this._manager.setDelaySelectKeyUpdate(z);
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void setMaxIdleTime(int i) {
        this._manager.setMaxIdleTime(i);
        super.setMaxIdleTime(i);
    }

    public long getLowResourcesConnections() {
        return this._lowResourcesConnections;
    }

    public void setLowResourcesConnections(long j) {
        this._lowResourcesConnections = j;
    }

    public long getLowResourcesMaxIdleTime() {
        return this._lowResourcesMaxIdleTime;
    }

    public void setLowResourcesMaxIdleTime(long j) {
        this._lowResourcesMaxIdleTime = j;
        super.setLowResourceMaxIdleTime((int) j);
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void setLowResourceMaxIdleTime(int i) {
        this._lowResourcesMaxIdleTime = i;
        super.setLowResourceMaxIdleTime(i);
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.AbstractBuffers, org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        this._manager.setSelectSets(getAcceptors());
        this._manager.setMaxIdleTime(getMaxIdleTime());
        this._manager.setLowResourcesConnections(getLowResourcesConnections());
        this._manager.setLowResourcesMaxIdleTime(getLowResourcesMaxIdleTime());
        this._manager.start();
        open();
        this._manager.register(this._acceptChannel);
        super.doStart();
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        super.doStop();
    }

    protected SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) throws IOException {
        return new ConnectorEndPoint(socketChannel, selectSet, selectionKey);
    }

    protected Connection newConnection(SocketChannel socketChannel, SelectChannelEndPoint selectChannelEndPoint) {
        return new HttpConnection(this, selectChannelEndPoint, getServer());
    }

    public class ConnectorEndPoint extends SelectChannelEndPoint {
        public ConnectorEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) {
            super(socketChannel, selectSet, selectionKey);
            scheduleIdle();
        }

        @Override // org.mortbay.io.nio.SelectChannelEndPoint, org.mortbay.io.nio.ChannelEndPoint, org.mortbay.io.EndPoint
        public void close() throws IOException {
            RetryContinuation retryContinuation;
            if ((getConnection() instanceof HttpConnection) && (retryContinuation = (RetryContinuation) ((HttpConnection) getConnection()).getRequest().getContinuation()) != null && retryContinuation.isPending()) {
                retryContinuation.reset();
            }
            super.close();
        }

        @Override // org.mortbay.io.nio.SelectChannelEndPoint
        public void undispatch() {
            if (getConnection() instanceof HttpConnection) {
                RetryContinuation retryContinuation = (RetryContinuation) ((HttpConnection) getConnection()).getRequest().getContinuation();
                if (retryContinuation != null) {
                    Log.debug("continuation {}", retryContinuation);
                    if (retryContinuation.undispatch()) {
                        super.undispatch();
                        return;
                    }
                    return;
                }
                super.undispatch();
                return;
            }
            super.undispatch();
        }
    }

    public class RetryContinuation extends Timeout.Task implements Runnable, Continuation {
        Object _object;
        RetryRequest _retry;
        long _timeout;
        SelectChannelEndPoint _endPoint = (SelectChannelEndPoint) HttpConnection.getCurrentConnection().getEndPoint();
        boolean _new = true;
        boolean _pending = false;
        boolean _resumed = false;
        boolean _parked = false;

        @Override // org.mortbay.util.ajax.Continuation
        public Object getObject() {
            return this._object;
        }

        public long getTimeout() {
            return this._timeout;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public boolean isNew() {
            return this._new;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public boolean isPending() {
            return this._pending;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public boolean isResumed() {
            return this._resumed;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public void reset() {
            synchronized (this) {
                this._resumed = false;
                this._pending = false;
                this._parked = false;
            }
            synchronized (this._endPoint.getSelectSet()) {
                cancel();
            }
        }

        @Override // org.mortbay.util.ajax.Continuation
        public boolean suspend(long j) {
            boolean z;
            synchronized (this) {
                z = this._resumed;
                this._resumed = false;
                this._new = false;
                if (!this._pending && !z && j >= 0) {
                    this._pending = true;
                    this._parked = false;
                    this._timeout = j;
                    if (this._retry == null) {
                        this._retry = new RetryRequest();
                    }
                    throw this._retry;
                }
                this._resumed = false;
                this._pending = false;
                this._parked = false;
            }
            synchronized (this._endPoint.getSelectSet()) {
                cancel();
            }
            return z;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public void resume() {
            boolean z = false;
            synchronized (this) {
                if (this._pending && !isExpired()) {
                    this._resumed = true;
                    z = this._parked;
                    this._parked = false;
                }
            }
            if (z) {
                SelectorManager.SelectSet selectSet = this._endPoint.getSelectSet();
                synchronized (selectSet) {
                    cancel();
                }
                this._endPoint.scheduleIdle();
                selectSet.addChange(this);
                selectSet.wakeup();
            }
        }

        @Override // org.mortbay.thread.Timeout.Task
        public void expire() {
            boolean z = false;
            synchronized (this) {
                if (this._parked && this._pending && !this._resumed) {
                    z = true;
                }
                this._parked = false;
            }
            if (z) {
                this._endPoint.scheduleIdle();
                this._endPoint.getSelectSet().addChange(this);
                this._endPoint.getSelectSet().wakeup();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this._endPoint.run();
        }

        public boolean undispatch() {
            synchronized (this) {
                if (!this._pending) {
                    return true;
                }
                boolean z = isExpired() || this._resumed;
                this._parked = z ? false : true;
                if (z) {
                    this._endPoint.scheduleIdle();
                    this._endPoint.getSelectSet().addChange(this);
                } else if (this._timeout > 0) {
                    this._endPoint.getSelectSet().scheduleTimeout(this, this._timeout);
                }
                this._endPoint.getSelectSet().wakeup();
                return false;
            }
        }

        @Override // org.mortbay.util.ajax.Continuation
        public void setObject(Object obj) {
            this._object = obj;
        }

        public String toString() {
            String string;
            synchronized (this) {
                string = new StringBuffer().append("RetryContinuation@").append(hashCode()).append(this._new ? ",new" : "").append(this._pending ? ",pending" : "").append(this._resumed ? ",resumed" : "").append(isExpired() ? ",expired" : "").append(this._parked ? ",parked" : "").toString();
            }
            return string;
        }
    }
}
