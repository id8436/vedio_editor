package com.b.a.j;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContentLengthInputStream.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f1221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1222b;

    public static InputStream a(InputStream inputStream, long j) {
        return new b(inputStream, j);
    }

    b(InputStream inputStream, long j) {
        super(inputStream);
        this.f1221a = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f1221a - ((long) this.f1222b), this.in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        return a(super.read());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        return a(super.read(bArr, i, i2));
    }

    private int a(int i) throws IOException {
        if (i >= 0) {
            this.f1222b += i;
        } else if (this.f1221a - ((long) this.f1222b) > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f1221a + ", but read: " + this.f1222b);
        }
        return i;
    }
}
