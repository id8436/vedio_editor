package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ProxyInputStream extends FilterInputStream {
    public ProxyInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        try {
            beforeRead(1);
            int i = this.in.read();
            afterRead(i == -1 ? -1 : 1);
            return i;
        } catch (IOException e2) {
            handleIOException(e2);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int length;
        if (bArr == null) {
            length = 0;
        } else {
            try {
                length = bArr.length;
            } catch (IOException e2) {
                handleIOException(e2);
                return -1;
            }
        }
        beforeRead(length);
        int i = this.in.read(bArr);
        afterRead(i);
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            beforeRead(i2);
            int i3 = this.in.read(bArr, i, i2);
            afterRead(i3);
            return i3;
        } catch (IOException e2) {
            handleIOException(e2);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        try {
            return this.in.skip(j);
        } catch (IOException e2) {
            handleIOException(e2);
            return 0L;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        try {
            return super.available();
        } catch (IOException e2) {
            handleIOException(e2);
            return 0;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.in.close();
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.in.mark(i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        try {
            this.in.reset();
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return this.in.markSupported();
    }

    protected void beforeRead(int i) throws IOException {
    }

    protected void afterRead(int i) throws IOException {
    }

    protected void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }
}
