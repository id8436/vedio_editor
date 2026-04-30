package com.facebook.d.k;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: LimitedInputStream.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1982b;

    public a(InputStream inputStream, int i) {
        super(inputStream);
        if (inputStream == null) {
            throw new NullPointerException();
        }
        if (i < 0) {
            throw new IllegalArgumentException("limit must be >= 0");
        }
        this.f1981a = i;
        this.f1982b = -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f1981a == 0) {
            return -1;
        }
        int i = this.in.read();
        if (i != -1) {
            this.f1981a--;
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f1981a == 0) {
            return -1;
        }
        int i3 = this.in.read(bArr, i, Math.min(i2, this.f1981a));
        if (i3 > 0) {
            this.f1981a -= i3;
            return i3;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = this.in.skip(Math.min(j, this.f1981a));
        this.f1981a = (int) (((long) this.f1981a) - jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return Math.min(this.in.available(), this.f1981a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        if (this.in.markSupported()) {
            this.in.mark(i);
            this.f1982b = this.f1981a;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (!this.in.markSupported()) {
            throw new IOException("mark is not supported");
        }
        if (this.f1982b == -1) {
            throw new IOException("mark not set");
        }
        this.in.reset();
        this.f1981a = this.f1982b;
    }
}
