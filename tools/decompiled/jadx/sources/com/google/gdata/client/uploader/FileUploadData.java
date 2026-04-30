package com.google.gdata.client.uploader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class FileUploadData implements UploadData {
    private final File file;
    private FileInputStream stream;

    public FileUploadData(File file) throws IOException {
        if (file == null) {
            throw new IOException();
        }
        this.file = file;
        if (!file.exists() || !file.canRead()) {
            throw new IOException();
        }
        this.stream = new FileInputStream(file);
    }

    @Override // com.google.gdata.client.uploader.UploadData
    public long length() {
        return this.file.length();
    }

    @Override // com.google.gdata.client.uploader.UploadData
    public void read(byte[] bArr) throws IOException {
        this.stream.read(bArr);
    }

    @Override // com.google.gdata.client.uploader.UploadData
    public void setPosition(long j) throws IOException {
        this.stream = new FileInputStream(this.file);
        this.stream.skip(j);
    }

    @Override // com.google.gdata.client.uploader.UploadData
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.stream.read(bArr, i, i2);
    }

    public String getFileName() {
        return this.file.getName();
    }
}
