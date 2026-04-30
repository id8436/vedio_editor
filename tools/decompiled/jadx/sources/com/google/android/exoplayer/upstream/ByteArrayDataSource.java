package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class ByteArrayDataSource implements DataSource {
    private final byte[] data;
    private int readPosition;
    private int remainingBytes;

    public ByteArrayDataSource(byte[] bArr) {
        Assertions.checkNotNull(bArr);
        Assertions.checkArgument(bArr.length > 0);
        this.data = bArr;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.readPosition = (int) dataSpec.position;
        this.remainingBytes = (int) (dataSpec.length == -1 ? ((long) this.data.length) - dataSpec.position : dataSpec.length);
        if (this.remainingBytes <= 0 || this.readPosition + this.remainingBytes > this.data.length) {
            throw new IOException("Unsatisfiable range: [" + this.readPosition + ", " + dataSpec.length + "], length: " + this.data.length);
        }
        return this.remainingBytes;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() throws IOException {
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.remainingBytes == 0) {
            return -1;
        }
        int iMin = Math.min(i2, this.remainingBytes);
        System.arraycopy(this.data, this.readPosition, bArr, i, iMin);
        this.readPosition += iMin;
        this.remainingBytes -= iMin;
        return iMin;
    }
}
