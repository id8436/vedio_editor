package com.dropbox.core;

import com.d.a.a.m;
import com.dropbox.core.DbxApiException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.util.IOUtil;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DbxUploader<R, E, X extends DbxApiException> implements Closeable {
    private final StoneSerializer<E> errorSerializer;
    private final HttpRequestor.Uploader httpUploader;
    private final StoneSerializer<R> responseSerializer;
    private final String userId;
    private boolean closed = false;
    private boolean finished = false;

    protected abstract X newException(DbxWrappedException dbxWrappedException);

    protected DbxUploader(HttpRequestor.Uploader uploader, StoneSerializer<R> stoneSerializer, StoneSerializer<E> stoneSerializer2, String str) {
        this.httpUploader = uploader;
        this.responseSerializer = stoneSerializer;
        this.errorSerializer = stoneSerializer2;
        this.userId = str;
    }

    public R uploadAndFinish(InputStream inputStream) throws DbxException, IOException {
        try {
            try {
                this.httpUploader.upload(inputStream);
                return finish();
            } catch (IOUtil.ReadException e2) {
                throw e2.getCause();
            } catch (IOException e3) {
                throw new NetworkIOException(e3);
            }
        } finally {
            close();
        }
    }

    public R uploadAndFinish(InputStream inputStream, long j) throws DbxException, IOException {
        return uploadAndFinish(IOUtil.limit(inputStream, j));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.closed) {
            this.httpUploader.close();
            this.closed = true;
        }
    }

    public void abort() {
        this.httpUploader.abort();
    }

    public OutputStream getOutputStream() {
        assertOpenAndUnfinished();
        return this.httpUploader.getBody();
    }

    public R finish() throws DbxException {
        assertOpenAndUnfinished();
        HttpRequestor.Response response = null;
        try {
            try {
                HttpRequestor.Response responseFinish = this.httpUploader.finish();
                try {
                    if (responseFinish.getStatusCode() == 200) {
                        R rDeserialize = this.responseSerializer.deserialize(responseFinish.getBody());
                        if (responseFinish != null) {
                            IOUtil.closeQuietly(responseFinish.getBody());
                        }
                        this.finished = true;
                        return rDeserialize;
                    }
                    if (responseFinish.getStatusCode() == 409) {
                        throw newException(DbxWrappedException.fromResponse(this.errorSerializer, responseFinish, this.userId));
                    }
                    throw DbxRequestUtil.unexpectedStatus(responseFinish);
                } catch (m e2) {
                    throw new BadResponseException(DbxRequestUtil.getRequestId(responseFinish), "Bad JSON in response: " + e2, e2);
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    IOUtil.closeQuietly(response.getBody());
                }
                this.finished = true;
                throw th;
            }
        } catch (IOException e3) {
            throw new NetworkIOException(e3);
        }
    }

    private void assertOpenAndUnfinished() {
        if (this.closed) {
            throw new IllegalStateException("This uploader is already closed.");
        }
        if (this.finished) {
            throw new IllegalStateException("This uploader is already finished and cannot be used to upload more data.");
        }
    }
}
