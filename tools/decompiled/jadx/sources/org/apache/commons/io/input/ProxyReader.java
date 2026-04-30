package org.apache.commons.io.input;

import java.io.FilterReader;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ProxyReader extends FilterReader {
    public ProxyReader(Reader reader) {
        super(reader);
    }

    @Override // java.io.FilterReader, java.io.Reader
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

    @Override // java.io.Reader
    public int read(char[] cArr) throws IOException {
        int length;
        if (cArr == null) {
            length = 0;
        } else {
            try {
                length = cArr.length;
            } catch (IOException e2) {
                handleIOException(e2);
                return -1;
            }
        }
        beforeRead(length);
        int i = this.in.read(cArr);
        afterRead(i);
        return i;
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        try {
            beforeRead(i2);
            int i3 = this.in.read(cArr, i, i2);
            afterRead(i3);
            return i3;
        } catch (IOException e2) {
            handleIOException(e2);
            return -1;
        }
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws IOException {
        int length;
        if (charBuffer == null) {
            length = 0;
        } else {
            try {
                length = charBuffer.length();
            } catch (IOException e2) {
                handleIOException(e2);
                return -1;
            }
        }
        beforeRead(length);
        int i = this.in.read(charBuffer);
        afterRead(i);
        return i;
    }

    @Override // java.io.FilterReader, java.io.Reader
    public long skip(long j) throws IOException {
        try {
            return this.in.skip(j);
        } catch (IOException e2) {
            handleIOException(e2);
            return 0L;
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public boolean ready() throws IOException {
        try {
            return this.in.ready();
        } catch (IOException e2) {
            handleIOException(e2);
            return false;
        }
    }

    @Override // java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.in.close();
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public synchronized void mark(int i) throws IOException {
        try {
            this.in.mark(i);
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public synchronized void reset() throws IOException {
        try {
            this.in.reset();
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
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
