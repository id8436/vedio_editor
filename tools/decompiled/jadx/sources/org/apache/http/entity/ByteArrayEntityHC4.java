package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class ByteArrayEntityHC4 extends AbstractHttpEntityHC4 implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f4916b;

    @Deprecated
    protected final byte[] content;
    private final int len;
    private final int off;

    public ByteArrayEntityHC4(byte[] bArr, ContentType contentType) {
        Args.notNull(bArr, "Source byte array");
        this.content = bArr;
        this.f4916b = bArr;
        this.off = 0;
        this.len = this.f4916b.length;
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }

    public ByteArrayEntityHC4(byte[] bArr, int i, int i2, ContentType contentType) {
        Args.notNull(bArr, "Source byte array");
        if (i < 0 || i > bArr.length || i2 < 0 || i + i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException("off: " + i + " len: " + i2 + " b.length: " + bArr.length);
        }
        this.content = bArr;
        this.f4916b = bArr;
        this.off = i;
        this.len = i2;
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }

    public ByteArrayEntityHC4(byte[] bArr) {
        this(bArr, null);
    }

    public ByteArrayEntityHC4(byte[] bArr, int i, int i2) {
        this(bArr, i, i2, null);
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.len;
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() {
        return new ByteArrayInputStream(this.f4916b, this.off, this.len);
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        outputStream.write(this.f4916b, this.off, this.len);
        outputStream.flush();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return false;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
