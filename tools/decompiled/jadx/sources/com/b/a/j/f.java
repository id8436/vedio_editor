package com.b.a.j;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: MarkEnforcingInputStream.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1231a;

    public f(InputStream inputStream) {
        super(inputStream);
        this.f1231a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        super.mark(i);
        this.f1231a = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (a(1L) == -1) {
            return -1;
        }
        int i = super.read();
        b(1L);
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int iA = (int) a(i2);
        if (iA == -1) {
            return -1;
        }
        int i3 = super.read(bArr, i, iA);
        b(i3);
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.f1231a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jA = a(j);
        if (jA == -1) {
            return -1L;
        }
        long jSkip = super.skip(jA);
        b(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.f1231a == Integer.MIN_VALUE ? super.available() : Math.min(this.f1231a, super.available());
    }

    private long a(long j) {
        if (this.f1231a == 0) {
            return -1L;
        }
        if (this.f1231a != Integer.MIN_VALUE && j > this.f1231a) {
            return this.f1231a;
        }
        return j;
    }

    private void b(long j) {
        if (this.f1231a != Integer.MIN_VALUE && j != -1) {
            this.f1231a = (int) (((long) this.f1231a) - j);
        }
    }
}
