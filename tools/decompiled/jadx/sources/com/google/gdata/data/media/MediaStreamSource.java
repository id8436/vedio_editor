package com.google.gdata.data.media;

import com.google.gdata.data.DateTime;
import java.io.InputStream;
import java.io.OutputStream;
import javax.mail.internet.SharedInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class MediaStreamSource extends BaseMediaSource {
    private InputStream mediaStream;
    private long sharedMediaStreamStart;

    /* JADX WARN: Multi-variable type inference failed */
    public MediaStreamSource(InputStream inputStream, String str, DateTime dateTime, long j) {
        super(str);
        this.mediaStream = inputStream;
        this.lastModified = dateTime;
        this.contentLength = j;
        if (inputStream instanceof SharedInputStream) {
            this.sharedMediaStreamStart = ((SharedInputStream) inputStream).getPosition();
        }
    }

    public MediaStreamSource(InputStream inputStream, String str) {
        this(inputStream, str, null, -1L);
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() {
        return this.mediaStream instanceof SharedInputStream ? ((SharedInputStream) this.mediaStream).newStream(this.sharedMediaStreamStart, -1L) : this.mediaStream;
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() {
        throw new UnsupportedOperationException("Cannot write to MediaStreamSource");
    }
}
