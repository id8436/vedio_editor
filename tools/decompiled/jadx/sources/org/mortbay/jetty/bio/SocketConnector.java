package org.mortbay.jetty.bio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.EndPoint;
import org.mortbay.io.bio.SocketEndPoint;
import org.mortbay.jetty.AbstractConnector;
import org.mortbay.jetty.EofException;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpException;
import org.mortbay.jetty.Request;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class SocketConnector extends AbstractConnector {
    protected Set _connections;
    protected ServerSocket _serverSocket;

    @Override // org.mortbay.jetty.Connector
    public Object getConnection() {
        return this._serverSocket;
    }

    @Override // org.mortbay.jetty.Connector
    public void open() throws IOException {
        if (this._serverSocket == null || this._serverSocket.isClosed()) {
            this._serverSocket = newServerSocket(getHost(), getPort(), getAcceptQueueSize());
        }
        this._serverSocket.setReuseAddress(getReuseAddress());
    }

    protected ServerSocket newServerSocket(String str, int i, int i2) throws IOException {
        return str == null ? new ServerSocket(i, i2) : new ServerSocket(i, i2, InetAddress.getByName(str));
    }

    @Override // org.mortbay.jetty.Connector
    public void close() throws IOException {
        if (this._serverSocket != null) {
            this._serverSocket.close();
        }
        this._serverSocket = null;
    }

    @Override // org.mortbay.jetty.AbstractConnector
    public void accept(int i) throws InterruptedException, IOException {
        Socket socketAccept = this._serverSocket.accept();
        configure(socketAccept);
        new Connection(this, socketAccept).dispatch();
    }

    protected HttpConnection newHttpConnection(EndPoint endPoint) {
        return new HttpConnection(this, endPoint, getServer());
    }

    @Override // org.mortbay.jetty.AbstractBuffers
    protected Buffer newBuffer(int i) {
        return new ByteArrayBuffer(i);
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void customize(EndPoint endPoint, Request request) throws IOException {
        Connection connection = (Connection) endPoint;
        if (connection._sotimeout != this._maxIdleTime) {
            connection._sotimeout = this._maxIdleTime;
            ((Socket) endPoint.getTransport()).setSoTimeout(this._maxIdleTime);
        }
        super.customize(endPoint, request);
    }

    @Override // org.mortbay.jetty.Connector
    public int getLocalPort() {
        if (this._serverSocket == null || this._serverSocket.isClosed()) {
            return -1;
        }
        return this._serverSocket.getLocalPort();
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.AbstractBuffers, org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        this._connections = new HashSet();
        super.doStart();
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        HashSet hashSet;
        super.doStop();
        synchronized (this._connections) {
            hashSet = new HashSet(this._connections);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((Connection) it.next()).close();
        }
    }

    public class Connection extends SocketEndPoint implements Runnable {
        HttpConnection _connection;
        boolean _dispatched;
        protected Socket _socket;
        int _sotimeout;
        private final SocketConnector this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Connection(SocketConnector socketConnector, Socket socket) throws IOException {
            super(socket);
            this.this$0 = socketConnector;
            this._dispatched = false;
            this._connection = socketConnector.newHttpConnection(this);
            this._sotimeout = socket.getSoTimeout();
            this._socket = socket;
        }

        public void dispatch() throws InterruptedException, IOException {
            if (this.this$0.getThreadPool() == null || !this.this$0.getThreadPool().dispatch(this)) {
                Log.warn("dispatch failed for {}", this._connection);
                close();
            }
        }

        @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
        public int fill(Buffer buffer) throws IOException {
            int iFill = super.fill(buffer);
            if (iFill < 0) {
                close();
            }
            return iFill;
        }

        @Override // java.lang.Runnable
        public void run() {
            int lowResourceMaxIdleTime;
            try {
                try {
                    this.this$0.connectionOpened(this._connection);
                    synchronized (this.this$0._connections) {
                        this.this$0._connections.add(this);
                    }
                    while (this.this$0.isStarted() && !isClosed()) {
                        if (this._connection.isIdle() && this.this$0.getServer().getThreadPool().isLowOnThreads() && (lowResourceMaxIdleTime = this.this$0.getLowResourceMaxIdleTime()) >= 0 && this._sotimeout != lowResourceMaxIdleTime) {
                            this._sotimeout = lowResourceMaxIdleTime;
                            this._socket.setSoTimeout(this._sotimeout);
                        }
                        this._connection.handle();
                    }
                    this.this$0.connectionClosed(this._connection);
                    synchronized (this.this$0._connections) {
                        this.this$0._connections.remove(this);
                    }
                } catch (EofException e2) {
                    Log.debug("EOF", e2);
                    try {
                        close();
                    } catch (IOException e3) {
                        Log.ignore(e3);
                    }
                    this.this$0.connectionClosed(this._connection);
                    synchronized (this.this$0._connections) {
                        this.this$0._connections.remove(this);
                    }
                } catch (HttpException e4) {
                    Log.debug("BAD", e4);
                    try {
                        close();
                    } catch (IOException e5) {
                        Log.ignore(e5);
                    }
                    this.this$0.connectionClosed(this._connection);
                    synchronized (this.this$0._connections) {
                        this.this$0._connections.remove(this);
                    }
                } catch (Throwable th) {
                    Log.warn("handle failed", th);
                    try {
                        close();
                    } catch (IOException e6) {
                        Log.ignore(e6);
                    }
                    this.this$0.connectionClosed(this._connection);
                    synchronized (this.this$0._connections) {
                        this.this$0._connections.remove(this);
                    }
                }
            } catch (Throwable th2) {
                this.this$0.connectionClosed(this._connection);
                synchronized (this.this$0._connections) {
                    this.this$0._connections.remove(this);
                    throw th2;
                }
            }
        }
    }
}
