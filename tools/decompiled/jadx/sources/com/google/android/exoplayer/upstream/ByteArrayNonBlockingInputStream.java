package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class ByteArrayNonBlockingInputStream implements NonBlockingInputStream {
    private final byte[] data;
    private int position;

    public ByteArrayNonBlockingInputStream(byte[] bArr) {
        this.data = (byte[]) Assertions.checkNotNull(bArr);
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public int skip(int i) {
        int readLength = getReadLength(i);
        this.position += readLength;
        return readLength;
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public int read(byte[] bArr, int i, int i2) {
        if (isEndOfStream()) {
            return -1;
        }
        int readLength = getReadLength(i2);
        System.arraycopy(this.data, this.position, bArr, i, readLength);
        this.position += readLength;
        return readLength;
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public int read(ByteBuffer byteBuffer, int i) {
        if (isEndOfStream()) {
            return -1;
        }
        int readLength = getReadLength(i);
        byteBuffer.put(this.data, this.position, readLength);
        this.position += readLength;
        return readLength;
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public long getAvailableByteCount() {
        return this.data.length - this.position;
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public boolean isEndOfStream() {
        return this.position == this.data.length;
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public void close() {
    }

    private int getReadLength(int i) {
        return Math.min(i, this.data.length - this.position);
    }
}
