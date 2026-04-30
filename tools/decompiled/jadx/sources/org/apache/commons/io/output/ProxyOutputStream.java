package org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class ProxyOutputStream extends FilterOutputStream {
    public ProxyOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            beforeWrite(1);
            this.out.write(i);
            afterWrite(1);
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        int length;
        if (bArr == null) {
            length = 0;
        } else {
            try {
                length = bArr.length;
            } catch (IOException e2) {
                handleIOException(e2);
                return;
            }
        }
        beforeWrite(length);
        this.out.write(bArr);
        afterWrite(length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            beforeWrite(i2);
            this.out.write(bArr, i, i2);
            afterWrite(i2);
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.out.flush();
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    protected void beforeWrite(int i) throws IOException {
    }

    protected void afterWrite(int i) throws IOException {
    }

    protected void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }
}
