package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class DataSourceInputStream extends InputStream {
    private final DataSource dataSource;
    private final DataSpec dataSpec;
    private boolean opened = false;
    private boolean closed = false;
    private final byte[] singleByteArray = new byte[1];

    public DataSourceInputStream(DataSource dataSource, DataSpec dataSpec) {
        this.dataSource = dataSource;
        this.dataSpec = dataSpec;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        read(this.singleByteArray);
        return this.singleByteArray[0] & UnsignedBytes.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        Assertions.checkState(!this.closed);
        checkOpened();
        return this.dataSource.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        Assertions.checkState(!this.closed);
        checkOpened();
        return super.skip(j);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            this.dataSource.close();
            this.closed = true;
        }
    }

    private void checkOpened() throws IOException {
        if (!this.opened) {
            this.dataSource.open(this.dataSpec);
            this.opened = true;
        }
    }
}
