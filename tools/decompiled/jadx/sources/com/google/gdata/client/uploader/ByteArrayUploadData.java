package com.google.gdata.client.uploader;

import java.io.ByteArrayInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class ByteArrayUploadData implements UploadData {
    private final byte[] buffer;
    private final ByteArrayInputStream stream;

    public ByteArrayUploadData(byte[] bArr) {
        this.buffer = bArr;
        this.stream = new ByteArrayInputStream(bArr);
    }

    @Override // com.google.gdata.client.uploader.UploadData
    public long length() {
        return this.buffer.length;
    }

    @Override // com.google.gdata.client.uploader.UploadData
    public void read(byte[] bArr) throws IOException {
        this.stream.read(bArr);
    }

    @Override // com.google.gdata.client.uploader.UploadData
    public void setPosition(long j) {
        this.stream.reset();
        this.stream.skip(j);
    }

    @Override // com.google.gdata.client.uploader.UploadData
    public int read(byte[] bArr, int i, int i2) {
        return this.stream.read(bArr, i, i2);
    }
}
