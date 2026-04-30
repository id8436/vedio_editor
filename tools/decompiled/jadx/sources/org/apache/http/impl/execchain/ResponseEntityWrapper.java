package org.apache.http.impl.execchain;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketException;
import org.apache.http.HttpEntity;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.EofSensorInputStreamHC4;
import org.apache.http.conn.EofSensorWatcher;
import org.apache.http.entity.HttpEntityWrapperHC4;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
class ResponseEntityWrapper extends HttpEntityWrapperHC4 implements EofSensorWatcher {
    private final ConnectionHolder connReleaseTrigger;

    public ResponseEntityWrapper(HttpEntity httpEntity, ConnectionHolder connectionHolder) {
        super(httpEntity);
        this.connReleaseTrigger = connectionHolder;
    }

    private void cleanup() {
        if (this.connReleaseTrigger != null) {
            this.connReleaseTrigger.abortConnection();
        }
    }

    public void releaseConnection() throws IOException {
        if (this.connReleaseTrigger != null) {
            try {
                if (this.connReleaseTrigger.isReusable()) {
                    this.connReleaseTrigger.releaseConnection();
                }
            } finally {
                cleanup();
            }
        }
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return false;
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        return new EofSensorInputStreamHC4(this.wrappedEntity.getContent(), this);
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    @Deprecated
    public void consumeContent() throws IOException {
        releaseConnection();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        try {
            this.wrappedEntity.writeTo(outputStream);
            releaseConnection();
        } finally {
            cleanup();
        }
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean eofDetected(InputStream inputStream) throws IOException {
        try {
            inputStream.close();
            releaseConnection();
            cleanup();
            return false;
        } catch (Throwable th) {
            cleanup();
            throw th;
        }
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamClosed(InputStream inputStream) throws IOException {
        try {
            boolean z = (this.connReleaseTrigger == null || this.connReleaseTrigger.isReleased()) ? false : true;
            try {
                inputStream.close();
                releaseConnection();
            } catch (SocketException e2) {
                if (z) {
                    throw e2;
                }
            }
            return false;
        } finally {
            cleanup();
        }
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamAbort(InputStream inputStream) throws IOException {
        cleanup();
        return false;
    }
}
