package com.adobe.premiereclip.mediabrowser.source;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: DropboxSource.java */
/* JADX INFO: loaded from: classes2.dex */
class ProgressOutputStream extends OutputStream {
    long completed = 0;
    Listener listener;
    long totalSize;
    OutputStream underlying;

    /* JADX INFO: compiled from: DropboxSource.java */
    public interface Listener {
        void progress(long j, long j2);
    }

    public ProgressOutputStream(long j, OutputStream outputStream, Listener listener) {
        this.underlying = outputStream;
        this.listener = listener;
        this.totalSize = j;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.underlying.write(bArr, i, i2);
        track(i2);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.underlying.write(bArr);
        track(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        try {
            this.underlying.write(i);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        track(1);
    }

    private void track(int i) {
        this.completed += (long) i;
        this.listener.progress(this.completed, this.totalSize);
    }
}
