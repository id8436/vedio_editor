package org.mortbay.io.nio;

import java.nio.ByteBuffer;
import org.mortbay.io.ByteArrayBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class IndirectNIOBuffer extends ByteArrayBuffer implements NIOBuffer {
    protected ByteBuffer _buf;

    public IndirectNIOBuffer(int i) {
        super(2, false);
        this._buf = ByteBuffer.allocate(i);
        this._buf.position(0);
        this._buf.limit(this._buf.capacity());
        this._bytes = this._buf.array();
    }

    public IndirectNIOBuffer(ByteBuffer byteBuffer, boolean z) {
        super(z ? 0 : 2, false);
        if (byteBuffer.isDirect()) {
            throw new IllegalArgumentException();
        }
        this._buf = byteBuffer;
        setGetIndex(byteBuffer.position());
        setPutIndex(byteBuffer.limit());
        this._bytes = this._buf.array();
    }

    @Override // org.mortbay.io.nio.NIOBuffer
    public ByteBuffer getByteBuffer() {
        return this._buf;
    }

    @Override // org.mortbay.io.nio.NIOBuffer
    public boolean isDirect() {
        return false;
    }
}
