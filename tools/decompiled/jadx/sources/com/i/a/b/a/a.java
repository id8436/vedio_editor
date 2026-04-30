package com.i.a.b.a;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContentLengthInputStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class a extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f3240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3241b;

    public a(InputStream inputStream, int i) {
        this.f3240a = inputStream;
        this.f3241b = i;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f3241b;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3240a.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f3240a.mark(i);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f3240a.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.f3240a.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f3240a.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f3240a.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.f3240a.skip(j);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f3240a.markSupported();
    }
}
