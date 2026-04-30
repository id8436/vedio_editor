package com.google.gdata.util;

import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class LoggableOutputStream extends FilterOutputStream {
    private ByteArrayOutputStream bos;
    private Logger logger;

    public LoggableOutputStream(Logger logger, OutputStream outputStream) {
        super(outputStream);
        this.bos = new ByteArrayOutputStream();
        this.logger = logger;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        super.write(i);
        this.bos.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.logger.finest(this.bos.toString());
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        super.flush();
        this.logger.finest(this.bos.toString());
        this.bos = new ByteArrayOutputStream();
    }
}
