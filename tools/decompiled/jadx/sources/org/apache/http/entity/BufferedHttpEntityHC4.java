package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public class BufferedHttpEntityHC4 extends HttpEntityWrapperHC4 {
    private final byte[] buffer;

    public BufferedHttpEntityHC4(HttpEntity httpEntity) throws IOException {
        super(httpEntity);
        if (!httpEntity.isRepeatable() || httpEntity.getContentLength() < 0) {
            this.buffer = EntityUtilsHC4.toByteArray(httpEntity);
        } else {
            this.buffer = null;
        }
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public long getContentLength() {
        return this.buffer != null ? this.buffer.length : super.getContentLength();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        return this.buffer != null ? new ByteArrayInputStream(this.buffer) : super.getContent();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.buffer == null && super.isChunked();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        if (this.buffer != null) {
            outputStream.write(this.buffer);
        } else {
            super.writeTo(outputStream);
        }
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.buffer == null && super.isStreaming();
    }
}
