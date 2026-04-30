package com.google.gdata.data.media;

import com.google.gdata.data.IEntry;
import com.google.gdata.data.media.MediaSource;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataHandler;
import javax.mail.MessagingException;
import javax.mail.internet.InternetHeaders;
import javax.mail.internet.MimeBodyPart;

/* JADX INFO: loaded from: classes3.dex */
public class MediaBodyPart extends MimeBodyPart {
    private MediaSource mediaSource;

    class MediaSourceDataHandler extends DataHandler {
        MediaSource source;

        private MediaSourceDataHandler(MediaSource mediaSource) {
            super(mediaSource);
            this.source = mediaSource;
        }

        @Override // javax.activation.DataHandler
        public Object getContent() {
            return this.source;
        }

        @Override // javax.activation.DataHandler
        public void writeTo(OutputStream outputStream) throws IOException {
            MediaSource.Output.writeTo(this.source, outputStream);
        }
    }

    public MediaBodyPart() {
    }

    public MediaBodyPart(InputStream inputStream) throws MessagingException {
        super(new InternetHeaders(inputStream), null);
        this.mediaSource = new MediaStreamSource(inputStream, getContentType());
        initMediaDataHandler();
    }

    public MediaBodyPart(IEntry iEntry) throws MessagingException {
        setContent(iEntry, "application/atom+xml");
        setHeader("Content-Type", "application/atom+xml");
    }

    public MediaBodyPart(MediaSource mediaSource) throws MessagingException {
        this.mediaSource = mediaSource;
        setHeader("Content-Type", mediaSource.getContentType());
        String etag = mediaSource.getEtag();
        if (etag != null) {
            setHeader("ETag", etag);
        }
        initMediaDataHandler();
    }

    public MediaBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        super(internetHeaders, bArr);
        MediaStreamSource mediaStreamSource = new MediaStreamSource(new ByteArrayInputStream(bArr), getContentType());
        String header = getHeader("ETag", null);
        if (header != null) {
            mediaStreamSource.setEtag(header);
        }
        this.mediaSource = mediaStreamSource;
        initMediaDataHandler();
    }

    private void initMediaDataHandler() throws MessagingException {
        if (!isAtomPart()) {
            this.dh = new MediaSourceDataHandler(this.mediaSource);
        } else {
            this.dh = new DataHandler(this.mediaSource);
        }
    }

    public boolean isAtomPart() throws MessagingException {
        return isMimeType("application/atom+xml");
    }

    public MediaSource getMediaSource() {
        return this.mediaSource;
    }
}
