package org.mortbay.io.nio;

import com.google.gdata.data.analytics.Engagement;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import org.mortbay.io.AbstractBuffer;
import org.mortbay.io.Buffer;

/* JADX INFO: loaded from: classes3.dex */
public class DirectNIOBuffer extends AbstractBuffer implements NIOBuffer {
    protected ByteBuffer _buf;
    private ReadableByteChannel _in;
    private InputStream _inStream;
    private WritableByteChannel _out;
    private OutputStream _outStream;

    public DirectNIOBuffer(int i) {
        super(2, false);
        this._buf = ByteBuffer.allocateDirect(i);
        this._buf.position(0);
        this._buf.limit(this._buf.capacity());
    }

    public DirectNIOBuffer(ByteBuffer byteBuffer, boolean z) {
        super(z ? 0 : 2, false);
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException();
        }
        this._buf = byteBuffer;
        setGetIndex(byteBuffer.position());
        setPutIndex(byteBuffer.limit());
    }

    public DirectNIOBuffer(File file) throws IOException {
        super(1, false);
        this._buf = new FileInputStream(file).getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, file.length());
        setGetIndex(0);
        setPutIndex((int) file.length());
        this._access = 0;
    }

    @Override // org.mortbay.io.nio.NIOBuffer
    public boolean isDirect() {
        return true;
    }

    @Override // org.mortbay.io.Buffer
    public byte[] array() {
        return null;
    }

    @Override // org.mortbay.io.Buffer
    public int capacity() {
        return this._buf.capacity();
    }

    @Override // org.mortbay.io.Buffer
    public byte peek(int i) {
        return this._buf.get(i);
    }

    @Override // org.mortbay.io.Buffer
    public int peek(int i, byte[] bArr, int i2, int i3) {
        int iCapacity;
        if (i + i3 > capacity()) {
            iCapacity = capacity() - i;
            if (iCapacity == 0) {
                return -1;
            }
        } else {
            iCapacity = i3;
        }
        if (iCapacity < 0) {
            return -1;
        }
        try {
            this._buf.position(i);
            this._buf.get(bArr, i2, iCapacity);
            this._buf.position(0);
            return iCapacity;
        } catch (Throwable th) {
            this._buf.position(0);
            throw th;
        }
    }

    @Override // org.mortbay.io.Buffer
    public void poke(int i, byte b2) {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer().append("index<0: ").append(i).append("<0").toString());
        }
        if (i > capacity()) {
            throw new IllegalArgumentException(new StringBuffer().append("index>capacity(): ").append(i).append(Engagement.Comparison.GT).append(capacity()).toString());
        }
        this._buf.put(i, b2);
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public int poke(int i, Buffer buffer) {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        byte[] bArrArray = buffer.array();
        if (bArrArray != null) {
            return poke(i, bArrArray, buffer.getIndex(), buffer.length());
        }
        Buffer buffer2 = buffer.buffer();
        if (buffer2 instanceof DirectNIOBuffer) {
            ByteBuffer byteBuffer = ((DirectNIOBuffer) buffer2)._buf;
            ByteBuffer byteBufferDuplicate = byteBuffer == this._buf ? this._buf.duplicate() : byteBuffer;
            try {
                this._buf.position(i);
                int iRemaining = this._buf.remaining();
                int length = buffer.length();
                if (length <= iRemaining) {
                    iRemaining = length;
                }
                byteBufferDuplicate.position(buffer.getIndex());
                byteBufferDuplicate.limit(buffer.getIndex() + iRemaining);
                this._buf.put(byteBufferDuplicate);
                return iRemaining;
            } finally {
                this._buf.position(0);
                byteBufferDuplicate.limit(byteBufferDuplicate.capacity());
                byteBufferDuplicate.position(0);
            }
        }
        return super.poke(i, buffer);
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public int poke(int i, byte[] bArr, int i2, int i3) {
        int iCapacity;
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer().append("index<0: ").append(i).append("<0").toString());
        }
        if (i + i3 > capacity()) {
            iCapacity = capacity() - i;
            if (iCapacity < 0) {
                throw new IllegalArgumentException(new StringBuffer().append("index>capacity(): ").append(i).append(Engagement.Comparison.GT).append(capacity()).toString());
            }
        } else {
            iCapacity = i3;
        }
        try {
            this._buf.position(i);
            int iRemaining = this._buf.remaining();
            if (iCapacity <= iRemaining) {
                iRemaining = iCapacity;
            }
            if (iRemaining > 0) {
                this._buf.put(bArr, i2, iRemaining);
            }
            return iRemaining;
        } finally {
            this._buf.position(0);
        }
    }

    @Override // org.mortbay.io.nio.NIOBuffer
    public ByteBuffer getByteBuffer() {
        return this._buf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
    
        r9._in = null;
        r9._inStream = r10;
     */
    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int readFrom(java.io.InputStream r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.io.nio.DirectNIOBuffer.readFrom(java.io.InputStream, int):int");
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public void writeTo(OutputStream outputStream) throws IOException {
        int i;
        if (this._out == null || !this._out.isOpen() || this._out != this._outStream) {
            this._out = Channels.newChannel(outputStream);
            this._outStream = outputStream;
        }
        synchronized (this._buf) {
            int i2 = 0;
            while (hasContent() && this._out.isOpen()) {
                try {
                    try {
                        this._buf.position(getIndex());
                        this._buf.limit(putIndex());
                        int iWrite = this._out.write(this._buf);
                        if (iWrite < 0) {
                            break;
                        }
                        if (iWrite > 0) {
                            skip(iWrite);
                            i = 0;
                        } else {
                            i = i2 + 1;
                            if (i2 > 1) {
                                break;
                            }
                        }
                        i2 = i;
                    } catch (IOException e2) {
                        this._out = null;
                        this._outStream = null;
                        throw e2;
                    }
                } finally {
                    if (this._out != null && !this._out.isOpen()) {
                        this._out = null;
                        this._outStream = null;
                    }
                    this._buf.position(0);
                    this._buf.limit(this._buf.capacity());
                }
            }
        }
    }
}
