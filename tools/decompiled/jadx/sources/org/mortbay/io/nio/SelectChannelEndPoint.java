package org.mortbay.io.nio;

import com.behance.sdk.util.BehanceSDKConstants;
import java.io.IOException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import org.mortbay.io.Buffer;
import org.mortbay.io.Connection;
import org.mortbay.io.nio.SelectorManager;
import org.mortbay.jetty.EofException;
import org.mortbay.jetty.HttpException;
import org.mortbay.log.Log;
import org.mortbay.thread.Timeout;

/* JADX INFO: loaded from: classes3.dex */
public class SelectChannelEndPoint extends ChannelEndPoint implements Runnable {
    protected Connection _connection;
    protected boolean _dispatched;
    protected int _interestOps;
    protected SelectionKey _key;
    protected SelectorManager _manager;
    protected boolean _readBlocked;
    protected SelectorManager.SelectSet _selectSet;
    private Timeout.Task _timeoutTask;
    protected boolean _writable;
    protected boolean _writeBlocked;

    public Connection getConnection() {
        return this._connection;
    }

    public SelectChannelEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) {
        super(socketChannel);
        this._dispatched = false;
        this._writable = true;
        this._timeoutTask = new IdleTask(this);
        this._manager = selectSet.getManager();
        this._selectSet = selectSet;
        this._connection = this._manager.newConnection(socketChannel, this);
        this._manager.endPointOpened(this);
        this._key = selectionKey;
    }

    void dispatch() throws IOException {
        boolean zDispatch = true;
        try {
            if (dispatch(this._manager.isDelaySelectKeyUpdate())) {
                zDispatch = this._manager.dispatch(this);
            }
        } finally {
            if (1 == 0) {
                Log.warn("dispatch failed!");
                undispatch();
            }
        }
    }

    public boolean dispatch(boolean z) throws IOException {
        synchronized (this) {
            if (this._key == null || !this._key.isValid()) {
                this._readBlocked = false;
                this._writeBlocked = false;
                notifyAll();
                return false;
            }
            if (this._readBlocked || this._writeBlocked) {
                if (this._readBlocked && this._key.isReadable()) {
                    this._readBlocked = false;
                }
                if (this._writeBlocked && this._key.isWritable()) {
                    this._writeBlocked = false;
                }
                notifyAll();
                this._key.interestOps(0);
                return false;
            }
            if (!z) {
                this._key.interestOps(0);
            }
            if (this._dispatched) {
                this._key.interestOps(0);
                return false;
            }
            if ((this._key.readyOps() & 4) == 4 && (this._key.interestOps() & 4) == 4) {
                this._interestOps = this._key.interestOps() & (-5);
                this._key.interestOps(this._interestOps);
                this._writable = true;
            }
            this._dispatched = true;
            return true;
        }
    }

    public void scheduleIdle() {
        this._selectSet.scheduleIdle(this._timeoutTask);
    }

    public void cancelIdle() {
        this._selectSet.cancelIdle(this._timeoutTask);
    }

    protected void idleExpired() {
        try {
            close();
        } catch (IOException e2) {
            Log.ignore(e2);
        }
    }

    public void undispatch() {
        synchronized (this) {
            try {
                this._dispatched = false;
                updateKey();
            } catch (Exception e2) {
                Log.ignore(e2);
                this._interestOps = -1;
                this._selectSet.addChange(this);
            }
        }
    }

    @Override // org.mortbay.io.nio.ChannelEndPoint, org.mortbay.io.EndPoint
    public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) throws IOException {
        int iFlush = super.flush(buffer, buffer2, buffer3);
        this._writable = iFlush > 0;
        return iFlush;
    }

    @Override // org.mortbay.io.nio.ChannelEndPoint, org.mortbay.io.EndPoint
    public int flush(Buffer buffer) throws IOException {
        int iFlush = super.flush(buffer);
        this._writable = iFlush > 0;
        return iFlush;
    }

    @Override // org.mortbay.io.nio.ChannelEndPoint, org.mortbay.io.EndPoint
    public boolean blockReadable(long j) throws IOException {
        synchronized (this) {
            long now = this._selectSet.getNow();
            try {
                this._readBlocked = true;
                while (isOpen() && this._readBlocked) {
                    try {
                        updateKey();
                        wait(j);
                    } catch (InterruptedException e2) {
                        Log.warn(e2);
                    }
                    if (this._readBlocked && j < this._selectSet.getNow() - now) {
                        return false;
                    }
                }
                this._readBlocked = false;
                return true;
            } finally {
                this._readBlocked = false;
            }
        }
    }

    @Override // org.mortbay.io.nio.ChannelEndPoint, org.mortbay.io.EndPoint
    public boolean blockWritable(long j) throws IOException {
        synchronized (this) {
            long now = this._selectSet.getNow();
            try {
                this._writeBlocked = true;
                while (isOpen() && this._writeBlocked) {
                    try {
                        updateKey();
                        wait(j);
                    } catch (InterruptedException e2) {
                        Log.warn(e2);
                    }
                    if (this._writeBlocked && j < this._selectSet.getNow() - now) {
                        return false;
                    }
                }
                this._writeBlocked = false;
                scheduleIdle();
                return true;
            } finally {
                this._writeBlocked = false;
                scheduleIdle();
            }
        }
    }

    public void setWritable(boolean z) {
        this._writable = z;
    }

    public void scheduleWrite() {
        this._writable = false;
        updateKey();
    }

    private void updateKey() {
        int iInterestOps = -1;
        synchronized (this) {
            if (getChannel().isOpen()) {
                if (this._key != null && this._key.isValid()) {
                    iInterestOps = this._key.interestOps();
                }
                this._interestOps = ((!this._writable || this._writeBlocked) ? 4 : 0) | ((!this._dispatched || this._readBlocked) ? 1 : 0);
            }
            if (this._interestOps != iInterestOps || !getChannel().isOpen()) {
                this._selectSet.addChange(this);
                this._selectSet.wakeup();
            }
        }
    }

    void doUpdateKey() {
        synchronized (this) {
            if (getChannel().isOpen()) {
                if (this._interestOps > 0) {
                    if (this._key == null || !this._key.isValid()) {
                        if (((SelectableChannel) getChannel()).isRegistered()) {
                            updateKey();
                        } else {
                            try {
                                this._key = ((SelectableChannel) getChannel()).register(this._selectSet.getSelector(), this._interestOps, this);
                            } catch (Exception e2) {
                                Log.ignore(e2);
                                if (this._key != null && this._key.isValid()) {
                                    this._key.cancel();
                                }
                                cancelIdle();
                                this._manager.endPointClosed(this);
                                this._key = null;
                            }
                        }
                    } else {
                        this._key.interestOps(this._interestOps);
                    }
                } else if (this._key != null && this._key.isValid()) {
                    this._key.interestOps(0);
                } else {
                    this._key = null;
                }
            } else {
                if (this._key != null && this._key.isValid()) {
                    this._key.interestOps(0);
                    this._key.cancel();
                }
                cancelIdle();
                this._manager.endPointClosed(this);
                this._key = null;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        this._connection.handle();
                        undispatch();
                    } catch (ClosedChannelException e2) {
                        Log.ignore(e2);
                        undispatch();
                    }
                } catch (EofException e3) {
                    Log.debug("EOF", e3);
                    try {
                        close();
                    } catch (IOException e4) {
                        Log.ignore(e4);
                    }
                    undispatch();
                }
            } catch (HttpException e5) {
                Log.debug("BAD", e5);
                try {
                    close();
                } catch (IOException e6) {
                    Log.ignore(e6);
                }
                undispatch();
            } catch (Throwable th) {
                Log.warn("handle failed", th);
                try {
                    close();
                } catch (IOException e7) {
                    Log.ignore(e7);
                }
                undispatch();
            }
        } catch (Throwable th2) {
            undispatch();
            throw th2;
        }
    }

    @Override // org.mortbay.io.nio.ChannelEndPoint, org.mortbay.io.EndPoint
    public void close() throws IOException {
        try {
            super.close();
        } catch (IOException e2) {
            Log.ignore(e2);
        } finally {
            updateKey();
        }
    }

    public String toString() {
        return new StringBuffer().append("SCEP@").append(hashCode()).append("[d=").append(this._dispatched).append(",io=").append(this._interestOps).append(",w=").append(this._writable).append(",b=").append(this._readBlocked).append(BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR).append(this._writeBlocked).append("]").toString();
    }

    public Timeout.Task getTimeoutTask() {
        return this._timeoutTask;
    }

    public SelectorManager.SelectSet getSelectSet() {
        return this._selectSet;
    }

    public class IdleTask extends Timeout.Task {
        private final SelectChannelEndPoint this$0;

        public IdleTask(SelectChannelEndPoint selectChannelEndPoint) {
            this.this$0 = selectChannelEndPoint;
        }

        @Override // org.mortbay.thread.Timeout.Task
        public void expired() {
            this.this$0.idleExpired();
        }

        public String toString() {
            return new StringBuffer().append("TimeoutTask:").append(this.this$0.toString()).toString();
        }
    }
}
