package org.apache.http.entity;

import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.message.BasicHeader;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public abstract class AbstractHttpEntityHC4 implements HttpEntity {
    protected static final int OUTPUT_BUFFER_SIZE = 4096;
    protected boolean chunked;
    protected Header contentEncoding;
    protected Header contentType;

    protected AbstractHttpEntityHC4() {
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        return this.contentType;
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return this.contentEncoding;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.chunked;
    }

    public void setContentType(Header header) {
        this.contentType = header;
    }

    public void setContentType(String str) {
        BasicHeader basicHeader = null;
        if (str != null) {
            basicHeader = new BasicHeader("Content-Type", str);
        }
        setContentType(basicHeader);
    }

    public void setContentEncoding(Header header) {
        this.contentEncoding = header;
    }

    public void setContentEncoding(String str) {
        BasicHeader basicHeader = null;
        if (str != null) {
            basicHeader = new BasicHeader("Content-Encoding", str);
        }
        setContentEncoding(basicHeader);
    }

    public void setChunked(boolean z) {
        this.chunked = z;
    }

    @Override // org.apache.http.HttpEntity
    @Deprecated
    public void consumeContent() throws IOException {
    }
}
