package com.google.gdata.data.appsforyourdomain.migration;

import com.google.gdata.data.DateTime;
import com.google.gdata.data.media.MediaSource;
import com.google.gdata.util.ContentType;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class Rfc822MediaSource implements MediaSource {
    private final String rfc822Msg;

    public Rfc822MediaSource(String str) {
        if (str == null || "".equals(str)) {
            throw new IllegalArgumentException("Empty or null message");
        }
        this.rfc822Msg = str;
    }

    @Override // com.google.gdata.data.media.MediaSource
    public long getContentLength() {
        return this.rfc822Msg.length();
    }

    @Override // com.google.gdata.data.media.MediaSource
    public String getEtag() {
        return null;
    }

    @Override // com.google.gdata.data.media.MediaSource
    public DateTime getLastModified() {
        return null;
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        return ContentType.MESSAGE_RFC822.toString();
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() {
        return new ByteArrayInputStream(this.rfc822Msg.getBytes());
    }

    @Override // javax.activation.DataSource
    public String getName() {
        return "rfc822";
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() {
        throw new UnsupportedOperationException();
    }
}
