package com.google.gdata.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class LoggableInputStream extends FilterInputStream {
    private boolean closed;
    private final Logger logger;
    private final StringWriter sw;

    public LoggableInputStream(Logger logger, InputStream inputStream) {
        super(inputStream);
        this.sw = new StringWriter();
        this.closed = false;
        this.logger = logger;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            this.logger.finest(this.sw.toString());
            this.closed = true;
        }
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = super.read();
        this.sw.write(i);
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = super.read(bArr, i, i2);
        if (i3 > 0) {
            this.sw.write(new String(bArr, i, i3));
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i = super.read(bArr);
        if (i > 0) {
            this.sw.write(new String(bArr, 0, i));
        }
        return i;
    }
}
