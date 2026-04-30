package com.facebook.d.d;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: CountingOutputStream.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends FilterOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f1934a;

    public c(OutputStream outputStream) {
        super(outputStream);
        this.f1934a = 0L;
    }

    public long a() {
        return this.f1934a;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
        this.f1934a += (long) i2;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        this.out.write(i);
        this.f1934a++;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
    }
}
