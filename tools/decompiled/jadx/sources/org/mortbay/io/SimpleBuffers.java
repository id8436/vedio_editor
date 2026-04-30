package org.mortbay.io;

/* JADX INFO: loaded from: classes3.dex */
public class SimpleBuffers implements Buffers {
    Buffer[] _buffers;

    public SimpleBuffers(Buffer[] bufferArr) {
        this._buffers = bufferArr;
    }

    @Override // org.mortbay.io.Buffers
    public Buffer getBuffer(int i) {
        if (this._buffers != null) {
            for (int i2 = 0; i2 < this._buffers.length; i2++) {
                if (this._buffers[i2] != null && this._buffers[i2].capacity() == i) {
                    Buffer buffer = this._buffers[i2];
                    this._buffers[i2] = null;
                    return buffer;
                }
            }
        }
        return new ByteArrayBuffer(i);
    }

    @Override // org.mortbay.io.Buffers
    public void returnBuffer(Buffer buffer) {
        buffer.clear();
        if (this._buffers != null) {
            for (int i = 0; i < this._buffers.length; i++) {
                if (this._buffers[i] == null) {
                    this._buffers[i] = buffer;
                }
            }
        }
    }
}
