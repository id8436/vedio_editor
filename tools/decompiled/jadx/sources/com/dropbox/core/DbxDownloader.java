package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class DbxDownloader<R> implements Closeable {
    private final InputStream body;
    private boolean closed = false;
    private final R result;

    public DbxDownloader(R r, InputStream inputStream) {
        this.result = r;
        this.body = inputStream;
    }

    public R getResult() {
        return this.result;
    }

    public InputStream getInputStream() {
        assertOpen();
        return this.body;
    }

    public R download(OutputStream outputStream) throws DbxException, IOException {
        try {
            try {
                IOUtil.copyStreamToStream(getInputStream(), outputStream);
                close();
                return this.result;
            } catch (IOUtil.WriteException e2) {
                throw e2.getCause();
            } catch (IOException e3) {
                throw new NetworkIOException(e3);
            }
        } catch (Throwable th) {
            close();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.closed) {
            IOUtil.closeQuietly(this.body);
            this.closed = true;
        }
    }

    private void assertOpen() {
        if (this.closed) {
            throw new IllegalStateException("This downloader is already closed.");
        }
    }
}
