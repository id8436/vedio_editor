package org.apache.http.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import org.apache.http.Header;
import org.apache.http.HttpConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpInetConnection;
import org.apache.http.HttpMessage;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.BasicHttpEntityHC4;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.entity.LaxContentLengthStrategyHC4;
import org.apache.http.impl.entity.StrictContentLengthStrategyHC4;
import org.apache.http.impl.io.ChunkedInputStreamHC4;
import org.apache.http.impl.io.ChunkedOutputStreamHC4;
import org.apache.http.impl.io.ContentLengthInputStreamHC4;
import org.apache.http.impl.io.ContentLengthOutputStreamHC4;
import org.apache.http.impl.io.HttpTransportMetricsImpl;
import org.apache.http.impl.io.IdentityInputStreamHC4;
import org.apache.http.impl.io.IdentityOutputStreamHC4;
import org.apache.http.impl.io.SessionInputBufferImpl;
import org.apache.http.impl.io.SessionOutputBufferImpl;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.NetUtils;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public class BHttpConnectionBase implements HttpConnection, HttpInetConnection {
    private final HttpConnectionMetricsImpl connMetrics;
    private final SessionInputBufferImpl inbuffer;
    private final ContentLengthStrategy incomingContentStrategy;
    private volatile boolean open;
    private final SessionOutputBufferImpl outbuffer;
    private final ContentLengthStrategy outgoingContentStrategy;
    private volatile Socket socket;

    protected BHttpConnectionBase(int i, int i2, CharsetDecoder charsetDecoder, CharsetEncoder charsetEncoder, MessageConstraints messageConstraints, ContentLengthStrategy contentLengthStrategy, ContentLengthStrategy contentLengthStrategy2) {
        Args.positive(i, "Buffer size");
        HttpTransportMetricsImpl httpTransportMetricsImpl = new HttpTransportMetricsImpl();
        HttpTransportMetricsImpl httpTransportMetricsImpl2 = new HttpTransportMetricsImpl();
        this.inbuffer = new SessionInputBufferImpl(httpTransportMetricsImpl, i, -1, messageConstraints != null ? messageConstraints : MessageConstraints.DEFAULT, charsetDecoder);
        this.outbuffer = new SessionOutputBufferImpl(httpTransportMetricsImpl2, i, i2, charsetEncoder);
        this.connMetrics = new HttpConnectionMetricsImpl(httpTransportMetricsImpl, httpTransportMetricsImpl2);
        this.incomingContentStrategy = contentLengthStrategy == null ? LaxContentLengthStrategyHC4.INSTANCE : contentLengthStrategy;
        this.outgoingContentStrategy = contentLengthStrategy2 == null ? StrictContentLengthStrategyHC4.INSTANCE : contentLengthStrategy2;
    }

    protected void ensureOpen() throws IOException {
        Asserts.check(this.open, "Connection is not open");
        if (!this.inbuffer.isBound()) {
            this.inbuffer.bind(getSocketInputStream(this.socket));
        }
        if (!this.outbuffer.isBound()) {
            this.outbuffer.bind(getSocketOutputStream(this.socket));
        }
    }

    protected InputStream getSocketInputStream(Socket socket) throws IOException {
        return socket.getInputStream();
    }

    protected OutputStream getSocketOutputStream(Socket socket) throws IOException {
        return socket.getOutputStream();
    }

    protected void bind(Socket socket) throws IOException {
        Args.notNull(socket, "Socket");
        this.socket = socket;
        this.open = true;
        this.inbuffer.bind(null);
        this.outbuffer.bind(null);
    }

    protected SessionInputBuffer getSessionInputBuffer() {
        return this.inbuffer;
    }

    protected SessionOutputBuffer getSessionOutputBuffer() {
        return this.outbuffer;
    }

    protected void doFlush() throws IOException {
        this.outbuffer.flush();
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        return this.open;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Socket getSocket() {
        return this.socket;
    }

    protected OutputStream createOutputStream(long j, SessionOutputBuffer sessionOutputBuffer) {
        if (j == -2) {
            return new ChunkedOutputStreamHC4(2048, sessionOutputBuffer);
        }
        if (j == -1) {
            return new IdentityOutputStreamHC4(sessionOutputBuffer);
        }
        return new ContentLengthOutputStreamHC4(sessionOutputBuffer, j);
    }

    protected OutputStream prepareOutput(HttpMessage httpMessage) throws HttpException {
        return createOutputStream(this.outgoingContentStrategy.determineLength(httpMessage), this.outbuffer);
    }

    protected InputStream createInputStream(long j, SessionInputBuffer sessionInputBuffer) {
        if (j == -2) {
            return new ChunkedInputStreamHC4(sessionInputBuffer);
        }
        if (j == -1) {
            return new IdentityInputStreamHC4(sessionInputBuffer);
        }
        return new ContentLengthInputStreamHC4(sessionInputBuffer, j);
    }

    protected HttpEntity prepareInput(HttpMessage httpMessage) throws HttpException {
        BasicHttpEntityHC4 basicHttpEntityHC4 = new BasicHttpEntityHC4();
        long jDetermineLength = this.incomingContentStrategy.determineLength(httpMessage);
        InputStream inputStreamCreateInputStream = createInputStream(jDetermineLength, this.inbuffer);
        if (jDetermineLength == -2) {
            basicHttpEntityHC4.setChunked(true);
            basicHttpEntityHC4.setContentLength(-1L);
            basicHttpEntityHC4.setContent(inputStreamCreateInputStream);
        } else if (jDetermineLength == -1) {
            basicHttpEntityHC4.setChunked(false);
            basicHttpEntityHC4.setContentLength(-1L);
            basicHttpEntityHC4.setContent(inputStreamCreateInputStream);
        } else {
            basicHttpEntityHC4.setChunked(false);
            basicHttpEntityHC4.setContentLength(jDetermineLength);
            basicHttpEntityHC4.setContent(inputStreamCreateInputStream);
        }
        Header firstHeader = httpMessage.getFirstHeader("Content-Type");
        if (firstHeader != null) {
            basicHttpEntityHC4.setContentType(firstHeader);
        }
        Header firstHeader2 = httpMessage.getFirstHeader("Content-Encoding");
        if (firstHeader2 != null) {
            basicHttpEntityHC4.setContentEncoding(firstHeader2);
        }
        return basicHttpEntityHC4;
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        if (this.socket != null) {
            return this.socket.getLocalAddress();
        }
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        if (this.socket != null) {
            return this.socket.getLocalPort();
        }
        return -1;
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        if (this.socket != null) {
            return this.socket.getInetAddress();
        }
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        if (this.socket != null) {
            return this.socket.getPort();
        }
        return -1;
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        if (this.socket != null) {
            try {
                this.socket.setSoTimeout(i);
            } catch (SocketException e2) {
            }
        }
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        if (this.socket == null) {
            return -1;
        }
        try {
            return this.socket.getSoTimeout();
        } catch (SocketException e2) {
            return -1;
        }
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        this.open = false;
        Socket socket = this.socket;
        if (socket != null) {
            socket.close();
        }
    }

    @Override // org.apache.http.HttpConnection
    public void close() throws IOException {
        if (this.open) {
            this.open = false;
            Socket socket = this.socket;
            try {
                this.inbuffer.clear();
                this.outbuffer.flush();
                try {
                    try {
                        socket.shutdownOutput();
                    } catch (IOException e2) {
                    }
                    try {
                        socket.shutdownInput();
                    } catch (IOException e3) {
                    }
                } catch (UnsupportedOperationException e4) {
                }
            } finally {
                socket.close();
            }
        }
    }

    private int fillInputBuffer(int i) throws IOException {
        int soTimeout = this.socket.getSoTimeout();
        try {
            this.socket.setSoTimeout(i);
            return this.inbuffer.fillBuffer();
        } finally {
            this.socket.setSoTimeout(soTimeout);
        }
    }

    protected boolean awaitInput(int i) throws IOException {
        if (this.inbuffer.hasBufferedData()) {
            return true;
        }
        fillInputBuffer(i);
        return this.inbuffer.hasBufferedData();
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        if (!isOpen()) {
            return true;
        }
        try {
            return fillInputBuffer(1) < 0;
        } catch (SocketTimeoutException e2) {
            return false;
        } catch (IOException e3) {
            return true;
        }
    }

    protected void incrementRequestCount() {
        this.connMetrics.incrementRequestCount();
    }

    protected void incrementResponseCount() {
        this.connMetrics.incrementResponseCount();
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        return this.connMetrics;
    }

    public String toString() {
        if (this.socket == null) {
            return "[Not bound]";
        }
        StringBuilder sb = new StringBuilder();
        SocketAddress remoteSocketAddress = this.socket.getRemoteSocketAddress();
        SocketAddress localSocketAddress = this.socket.getLocalSocketAddress();
        if (remoteSocketAddress != null && localSocketAddress != null) {
            NetUtils.formatAddress(sb, localSocketAddress);
            sb.append("<->");
            NetUtils.formatAddress(sb, remoteSocketAddress);
        }
        return sb.toString();
    }
}
