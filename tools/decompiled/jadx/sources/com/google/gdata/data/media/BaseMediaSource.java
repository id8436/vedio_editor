package com.google.gdata.data.media;

import com.google.gdata.data.DateTime;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseMediaSource implements MediaSource {
    protected long contentLength = -1;
    protected String etag;
    protected DateTime lastModified;
    protected final String mediaType;
    protected String name;

    protected BaseMediaSource(String str) {
        this.mediaType = str;
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        return this.mediaType;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // javax.activation.DataSource
    public String getName() {
        return this.name;
    }

    public void setLastModified(DateTime dateTime) {
        this.lastModified = dateTime;
    }

    @Override // com.google.gdata.data.media.MediaSource
    public DateTime getLastModified() {
        return this.lastModified;
    }

    public void setContentLength(long j) {
        this.contentLength = j;
    }

    @Override // com.google.gdata.data.media.MediaSource
    public long getContentLength() {
        return this.contentLength;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    @Override // com.google.gdata.data.media.MediaSource
    public String getEtag() {
        return this.etag;
    }
}
