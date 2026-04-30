package org.mortbay.jetty.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.ByteChannel;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import org.mortbay.io.EndPoint;
import org.mortbay.io.nio.ChannelEndPoint;
import org.mortbay.jetty.EofException;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpException;
import org.mortbay.jetty.Request;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class BlockingChannelConnector extends AbstractNIOConnector {
    private transient ServerSocketChannel _acceptChannel;

    @Override // org.mortbay.jetty.Connector
    public Object getConnection() {
        return this._acceptChannel;
    }

    @Override // org.mortbay.jetty.Connector
    public void open() throws IOException {
        this._acceptChannel = ServerSocketChannel.open();
        this._acceptChannel.configureBlocking(true);
        this._acceptChannel.socket().bind(getHost() == null ? new InetSocketAddress(getPort()) : new InetSocketAddress(getHost(), getPort()), getAcceptQueueSize());
    }

    @Override // org.mortbay.jetty.Connector
    public void close() throws IOException {
        if (this._acceptChannel != null) {
            this._acceptChannel.close();
        }
        this._acceptChannel = null;
    }

    @Override // org.mortbay.jetty.AbstractConnector
    public void accept(int i) throws InterruptedException, IOException {
        SocketChannel socketChannelAccept = this._acceptChannel.accept();
        socketChannelAccept.configureBlocking(true);
        configure(socketChannelAccept.socket());
        new Connection(this, socketChannelAccept).dispatch();
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void customize(EndPoint endPoint, Request request) throws IOException {
        Connection connection = (Connection) endPoint;
        if (connection._sotimeout != this._maxIdleTime) {
            connection._sotimeout = this._maxIdleTime;
            ((SocketChannel) endPoint.getTransport()).socket().setSoTimeout(this._maxIdleTime);
        }
        super.customize(endPoint, request);
        configure(((SocketChannel) endPoint.getTransport()).socket());
    }

    @Override // org.mortbay.jetty.Connector
    public int getLocalPort() {
        if (this._acceptChannel == null || !this._acceptChannel.isOpen()) {
            return -1;
        }
        return this._acceptChannel.socket().getLocalPort();
    }

    class Connection extends ChannelEndPoint implements Runnable {
        HttpConnection _connection;
        boolean _dispatched;
        int _sotimeout;
        private final BlockingChannelConnector this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        Connection(BlockingChannelConnector blockingChannelConnector, ByteChannel byteChannel) {
            super(byteChannel);
            this.this$0 = blockingChannelConnector;
            this._dispatched = false;
            this._connection = new HttpConnection(blockingChannelConnector, this, blockingChannelConnector.getServer());
        }

        void dispatch() throws IOException {
            if (!this.this$0.getThreadPool().dispatch(this)) {
                Log.warn("dispatch failed for  {}", this._connection);
                close();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            BlockingChannelConnector blockingChannelConnector;
            HttpConnection httpConnection;
            int lowResourceMaxIdleTime;
            try {
                try {
                    this.this$0.connectionOpened(this._connection);
                    while (isOpen()) {
                        if (this._connection.isIdle() && this.this$0.getServer().getThreadPool().isLowOnThreads() && (lowResourceMaxIdleTime = this.this$0.getLowResourceMaxIdleTime()) >= 0 && this._sotimeout != lowResourceMaxIdleTime) {
                            this._sotimeout = lowResourceMaxIdleTime;
                            ((SocketChannel) getTransport()).socket().setSoTimeout(this._sotimeout);
                        }
                        this._connection.handle();
                    }
                    blockingChannelConnector = this.this$0;
                    httpConnection = this._connection;
                } catch (EofException e2) {
                    Log.debug("EOF", e2);
                    try {
                        close();
                    } catch (IOException e3) {
                        Log.ignore(e3);
                    }
                    blockingChannelConnector = this.this$0;
                    httpConnection = this._connection;
                } catch (HttpException e4) {
                    Log.debug("BAD", e4);
                    try {
                        close();
                    } catch (IOException e5) {
                        Log.ignore(e5);
                    }
                    blockingChannelConnector = this.this$0;
                    httpConnection = this._connection;
                } catch (Throwable th) {
                    Log.warn("handle failed", th);
                    try {
                        close();
                    } catch (IOException e6) {
                        Log.ignore(e6);
                    }
                    blockingChannelConnector = this.this$0;
                    httpConnection = this._connection;
                }
                blockingChannelConnector.connectionClosed(httpConnection);
            } catch (Throwable th2) {
                this.this$0.connectionClosed(this._connection);
                throw th2;
            }
        }
    }
}
