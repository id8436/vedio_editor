package org.mortbay.io.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SocketChannel;
import org.mortbay.io.Buffer;
import org.mortbay.io.EndPoint;
import org.mortbay.io.Portable;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes3.dex */
public class ChannelEndPoint implements EndPoint {
    protected final ByteChannel _channel;
    protected final ByteBuffer[] _gather2 = new ByteBuffer[2];
    protected final InetSocketAddress _local;
    protected final InetSocketAddress _remote;
    protected final Socket _socket;

    public ChannelEndPoint(ByteChannel byteChannel) {
        this._channel = byteChannel;
        if (byteChannel instanceof SocketChannel) {
            this._socket = ((SocketChannel) byteChannel).socket();
            this._local = (InetSocketAddress) this._socket.getLocalSocketAddress();
            this._remote = (InetSocketAddress) this._socket.getRemoteSocketAddress();
        } else {
            this._socket = null;
            this._local = null;
            this._remote = null;
        }
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isBlocking() {
        if (this._channel instanceof SelectableChannel) {
            return ((SelectableChannel) this._channel).isBlocking();
        }
        return true;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean blockReadable(long j) throws IOException {
        return true;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean blockWritable(long j) throws IOException {
        return true;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isOpen() {
        return this._channel.isOpen();
    }

    @Override // org.mortbay.io.EndPoint
    public void shutdownOutput() throws IOException {
        if (this._channel.isOpen() && (this._channel instanceof SocketChannel)) {
            Socket socket = ((SocketChannel) this._channel).socket();
            if (!socket.isClosed() && !socket.isOutputShutdown()) {
                socket.shutdownOutput();
            }
        }
    }

    @Override // org.mortbay.io.EndPoint
    public void close() throws IOException {
        if (this._socket != null && !this._socket.isOutputShutdown()) {
            this._socket.shutdownOutput();
        }
        this._channel.close();
    }

    @Override // org.mortbay.io.EndPoint
    public int fill(Buffer buffer) throws IOException {
        int i;
        Buffer buffer2 = buffer.buffer();
        if (buffer2 instanceof NIOBuffer) {
            NIOBuffer nIOBuffer = (NIOBuffer) buffer2;
            ByteBuffer byteBuffer = nIOBuffer.getByteBuffer();
            synchronized (nIOBuffer) {
                try {
                    byteBuffer.position(buffer.putIndex());
                    i = this._channel.read(byteBuffer);
                    if (i < 0) {
                        this._channel.close();
                    }
                } finally {
                    buffer.setPutIndex(byteBuffer.position());
                    byteBuffer.position(0);
                }
            }
            return i;
        }
        throw new IOException(HttpStatus.Not_Implemented);
    }

    @Override // org.mortbay.io.EndPoint
    public int flush(Buffer buffer) throws IOException {
        int iWrite;
        Buffer buffer2 = buffer.buffer();
        if (buffer2 instanceof NIOBuffer) {
            ByteBuffer byteBuffer = ((NIOBuffer) buffer2).getByteBuffer();
            synchronized (byteBuffer) {
                try {
                    byteBuffer.position(buffer.getIndex());
                    byteBuffer.limit(buffer.putIndex());
                    iWrite = this._channel.write(byteBuffer);
                    if (iWrite > 0) {
                        buffer.skip(iWrite);
                    }
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(byteBuffer.capacity());
                }
            }
        } else if (buffer.array() != null) {
            iWrite = this._channel.write(ByteBuffer.wrap(buffer.array(), buffer.getIndex(), buffer.length()));
            if (iWrite > 0) {
                buffer.skip(iWrite);
            }
        } else {
            throw new IOException(HttpStatus.Not_Implemented);
        }
        return iWrite;
    }

    @Override // org.mortbay.io.EndPoint
    public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) throws IOException {
        int iWrite;
        Buffer buffer4 = buffer == null ? null : buffer.buffer();
        Buffer buffer5 = buffer2 != null ? buffer2.buffer() : null;
        if ((this._channel instanceof GatheringByteChannel) && buffer != null && buffer.length() != 0 && (buffer instanceof NIOBuffer) && buffer2 != null && buffer2.length() != 0 && (buffer2 instanceof NIOBuffer)) {
            ByteBuffer byteBuffer = ((NIOBuffer) buffer4).getByteBuffer();
            ByteBuffer byteBuffer2 = ((NIOBuffer) buffer5).getByteBuffer();
            synchronized (this) {
                synchronized (byteBuffer) {
                    synchronized (byteBuffer2) {
                        try {
                            byteBuffer.position(buffer.getIndex());
                            byteBuffer.limit(buffer.putIndex());
                            byteBuffer2.position(buffer2.getIndex());
                            byteBuffer2.limit(buffer2.putIndex());
                            this._gather2[0] = byteBuffer;
                            this._gather2[1] = byteBuffer2;
                            iWrite = (int) ((GatheringByteChannel) this._channel).write(this._gather2);
                            int length = buffer.length();
                            if (iWrite > length) {
                                buffer.clear();
                                buffer2.skip(iWrite - length);
                            } else if (iWrite > 0) {
                                buffer.skip(iWrite);
                            }
                        } finally {
                            if (!buffer.isImmutable()) {
                                buffer.setGetIndex(byteBuffer.position());
                            }
                            if (!buffer2.isImmutable()) {
                                buffer2.setGetIndex(byteBuffer2.position());
                            }
                            byteBuffer.position(0);
                            byteBuffer2.position(0);
                            byteBuffer.limit(byteBuffer.capacity());
                            byteBuffer2.limit(byteBuffer2.capacity());
                        }
                    }
                }
            }
            return iWrite;
        }
        if (buffer != null) {
            if (buffer2 != null && buffer2.length() > 0 && buffer.space() > buffer2.length()) {
                buffer.put(buffer2);
                buffer2.clear();
            }
            if (buffer3 != null && buffer3.length() > 0 && buffer.space() > buffer3.length()) {
                buffer.put(buffer3);
                buffer3.clear();
            }
        }
        int iFlush = (buffer == null || buffer.length() <= 0) ? 0 : flush(buffer);
        if ((buffer == null || buffer.length() == 0) && buffer2 != null && buffer2.length() > 0) {
            iFlush += flush(buffer2);
        }
        if (buffer != null && buffer.length() != 0) {
            return iFlush;
        }
        if ((buffer2 == null || buffer2.length() == 0) && buffer3 != null && buffer3.length() > 0) {
            return iFlush + flush(buffer3);
        }
        return iFlush;
    }

    public ByteChannel getChannel() {
        return this._channel;
    }

    @Override // org.mortbay.io.EndPoint
    public String getLocalAddr() {
        if (this._socket == null) {
            return null;
        }
        if (this._local == null || this._local.getAddress() == null || this._local.getAddress().isAnyLocalAddress()) {
            return Portable.ALL_INTERFACES;
        }
        return this._local.getAddress().getHostAddress();
    }

    @Override // org.mortbay.io.EndPoint
    public String getLocalHost() {
        if (this._socket == null) {
            return null;
        }
        if (this._local == null || this._local.getAddress() == null || this._local.getAddress().isAnyLocalAddress()) {
            return Portable.ALL_INTERFACES;
        }
        return this._local.getAddress().getCanonicalHostName();
    }

    @Override // org.mortbay.io.EndPoint
    public int getLocalPort() {
        if (this._socket == null) {
            return 0;
        }
        if (this._local == null) {
            return -1;
        }
        return this._local.getPort();
    }

    @Override // org.mortbay.io.EndPoint
    public String getRemoteAddr() {
        if (this._socket == null || this._remote == null) {
            return null;
        }
        return this._remote.getAddress().getHostAddress();
    }

    @Override // org.mortbay.io.EndPoint
    public String getRemoteHost() {
        if (this._socket == null || this._remote == null) {
            return null;
        }
        return this._remote.getAddress().getCanonicalHostName();
    }

    @Override // org.mortbay.io.EndPoint
    public int getRemotePort() {
        if (this._socket == null) {
            return 0;
        }
        if (this._remote == null || this._remote == null) {
            return -1;
        }
        return this._remote.getPort();
    }

    @Override // org.mortbay.io.EndPoint
    public Object getTransport() {
        return this._channel;
    }

    @Override // org.mortbay.io.EndPoint
    public void flush() throws IOException {
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isBufferingInput() {
        return false;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isBufferingOutput() {
        return false;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isBufferred() {
        return false;
    }
}
