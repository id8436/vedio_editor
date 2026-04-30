package com.google.gdata.data.media;

import com.google.gdata.data.DateTime;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class MediaByteArraySource extends BaseMediaSource {
    private byte[] mediaBytes;

    public MediaByteArraySource(byte[] bArr, String str) {
        super(str);
        this.mediaBytes = bArr;
        this.contentLength = bArr.length;
        this.lastModified = DateTime.now();
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() {
        return new ByteArrayInputStream(this.mediaBytes);
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() {
        throw new UnsupportedOperationException("Cannot write to MediaSource");
    }
}
