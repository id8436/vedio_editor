package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class StringEntityHC4 extends AbstractHttpEntityHC4 implements Cloneable {
    protected final byte[] content;

    public StringEntityHC4(String str, ContentType contentType) throws UnsupportedCharsetException {
        Args.notNull(str, "Source string");
        Charset charset = contentType != null ? contentType.getCharset() : null;
        charset = charset == null ? Charset.forName("ISO-8859-1") : charset;
        try {
            this.content = str.getBytes(charset.name());
            if (contentType != null) {
                setContentType(contentType.toString());
            }
        } catch (UnsupportedEncodingException e2) {
            throw new UnsupportedCharsetException(charset.name());
        }
    }

    @Deprecated
    public StringEntityHC4(String str, String str2, String str3) throws UnsupportedEncodingException {
        Args.notNull(str, "Source string");
        str2 = str2 == null ? MimeTypes.TEXT_PLAIN : str2;
        str3 = str3 == null ? "ISO-8859-1" : str3;
        this.content = str.getBytes(str3);
        setContentType(str2 + "; charset=" + str3);
    }

    public StringEntityHC4(String str, String str2) throws UnsupportedCharsetException {
        this(str, ContentType.create(ContentType.TEXT_PLAIN.getMimeType(), str2));
    }

    public StringEntityHC4(String str, Charset charset) {
        this(str, ContentType.create(ContentType.TEXT_PLAIN.getMimeType(), charset));
    }

    public StringEntityHC4(String str) throws UnsupportedEncodingException {
        this(str, ContentType.DEFAULT_TEXT);
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.content.length;
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        return new ByteArrayInputStream(this.content);
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        outputStream.write(this.content);
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
