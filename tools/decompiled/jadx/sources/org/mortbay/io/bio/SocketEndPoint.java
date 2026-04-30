package org.mortbay.io.bio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.mortbay.io.Portable;

/* JADX INFO: loaded from: classes3.dex */
public class SocketEndPoint extends StreamEndPoint {
    final InetSocketAddress _local;
    final InetSocketAddress _remote;
    final Socket _socket;

    public SocketEndPoint(Socket socket) throws IOException {
        super(socket.getInputStream(), socket.getOutputStream());
        this._socket = socket;
        this._local = (InetSocketAddress) this._socket.getLocalSocketAddress();
        this._remote = (InetSocketAddress) this._socket.getRemoteSocketAddress();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public boolean isOpen() {
        return (!super.isOpen() || this._socket == null || this._socket.isClosed() || this._socket.isInputShutdown() || this._socket.isOutputShutdown()) ? false : true;
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public void shutdownOutput() throws IOException {
        if (!this._socket.isClosed() && !this._socket.isOutputShutdown()) {
            this._socket.shutdownOutput();
        }
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public void close() throws IOException {
        this._socket.close();
        this._in = null;
        this._out = null;
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public String getLocalAddr() {
        return (this._local == null || this._local.getAddress() == null || this._local.getAddress().isAnyLocalAddress()) ? Portable.ALL_INTERFACES : this._local.getAddress().getHostAddress();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public String getLocalHost() {
        return (this._local == null || this._local.getAddress() == null || this._local.getAddress().isAnyLocalAddress()) ? Portable.ALL_INTERFACES : this._local.getAddress().getCanonicalHostName();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public int getLocalPort() {
        if (this._local == null) {
            return -1;
        }
        return this._local.getPort();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public String getRemoteAddr() {
        InetAddress address;
        if (this._remote == null || (address = this._remote.getAddress()) == null) {
            return null;
        }
        return address.getHostAddress();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public String getRemoteHost() {
        if (this._remote == null) {
            return null;
        }
        return this._remote.getAddress().getCanonicalHostName();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public int getRemotePort() {
        if (this._remote == null) {
            return -1;
        }
        return this._remote.getPort();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public Object getTransport() {
        return this._socket;
    }
}
