package com.d.a.a.b;

import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: MergedStream.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f1360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InputStream f1361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f1362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1364e;

    public f(c cVar, InputStream inputStream, byte[] bArr, int i, int i2) {
        this.f1360a = cVar;
        this.f1361b = inputStream;
        this.f1362c = bArr;
        this.f1363d = i;
        this.f1364e = i2;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f1362c != null ? this.f1364e - this.f1363d : this.f1361b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a();
        this.f1361b.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        if (this.f1362c == null) {
            this.f1361b.mark(i);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f1362c == null && this.f1361b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f1362c == null) {
            return this.f1361b.read();
        }
        byte[] bArr = this.f1362c;
        int i = this.f1363d;
        this.f1363d = i + 1;
        int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
        if (this.f1363d >= this.f1364e) {
            a();
            return i2;
        }
        return i2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f1362c == null) {
            return this.f1361b.read(bArr, i, i2);
        }
        int i3 = this.f1364e - this.f1363d;
        if (i2 > i3) {
            i2 = i3;
        }
        System.arraycopy(this.f1362c, this.f1363d, bArr, i, i2);
        this.f1363d += i2;
        if (this.f1363d >= this.f1364e) {
            a();
            return i2;
        }
        return i2;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        if (this.f1362c == null) {
            this.f1361b.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip;
        if (this.f1362c != null) {
            int i = this.f1364e - this.f1363d;
            if (i > j) {
                this.f1363d += (int) j;
                return j;
            }
            a();
            jSkip = ((long) i) + 0;
            j -= (long) i;
        } else {
            jSkip = 0;
        }
        if (j > 0) {
            jSkip += this.f1361b.skip(j);
        }
        return jSkip;
    }

    private void a() {
        byte[] bArr = this.f1362c;
        if (bArr != null) {
            this.f1362c = null;
            if (this.f1360a != null) {
                this.f1360a.a(bArr);
            }
        }
    }
}
