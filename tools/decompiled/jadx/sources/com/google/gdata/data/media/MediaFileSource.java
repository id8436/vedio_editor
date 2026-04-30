package com.google.gdata.data.media;

import com.google.gdata.data.DateTime;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class MediaFileSource extends BaseMediaSource {
    private File mediaFile;

    public MediaFileSource(File file, String str) {
        super(str);
        this.mediaFile = file;
        this.contentLength = file.length();
        this.lastModified = new DateTime(file.lastModified());
        this.name = file.getName();
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        return new FileInputStream(this.mediaFile);
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() {
        throw new UnsupportedOperationException("Cannot write to MediaFileSource");
    }

    public File getMediaFile() {
        return this.mediaFile;
    }
}
