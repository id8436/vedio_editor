package com.facebook.imagepipeline.memory;

import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: compiled from: PooledByteArrayBufferedInputStream.java */
/* JADX INFO: loaded from: classes2.dex */
@NotThreadSafe
public class ag extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f2908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f2909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.d.h.i<byte[]> f2910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2911d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2912e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2913f = false;

    public ag(InputStream inputStream, byte[] bArr, com.facebook.d.h.i<byte[]> iVar) {
        this.f2908a = (InputStream) com.facebook.d.d.k.a(inputStream);
        this.f2909b = (byte[]) com.facebook.d.d.k.a(bArr);
        this.f2910c = (com.facebook.d.h.i) com.facebook.d.d.k.a(iVar);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        com.facebook.d.d.k.b(this.f2912e <= this.f2911d);
        b();
        if (!a()) {
            return -1;
        }
        byte[] bArr = this.f2909b;
        int i = this.f2912e;
        this.f2912e = i + 1;
        return bArr[i] & UnsignedBytes.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        com.facebook.d.d.k.b(this.f2912e <= this.f2911d);
        b();
        if (!a()) {
            return -1;
        }
        int iMin = Math.min(this.f2911d - this.f2912e, i2);
        System.arraycopy(this.f2909b, this.f2912e, bArr, i, iMin);
        this.f2912e += iMin;
        return iMin;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        com.facebook.d.d.k.b(this.f2912e <= this.f2911d);
        b();
        return (this.f2911d - this.f2912e) + this.f2908a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f2913f) {
            this.f2913f = true;
            this.f2910c.a(this.f2909b);
            super.close();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        com.facebook.d.d.k.b(this.f2912e <= this.f2911d);
        b();
        int i = this.f2911d - this.f2912e;
        if (i >= j) {
            this.f2912e = (int) (((long) this.f2912e) + j);
            return j;
        }
        this.f2912e = this.f2911d;
        return ((long) i) + this.f2908a.skip(j - ((long) i));
    }

    private boolean a() throws IOException {
        if (this.f2912e < this.f2911d) {
            return true;
        }
        int i = this.f2908a.read(this.f2909b);
        if (i <= 0) {
            return false;
        }
        this.f2911d = i;
        this.f2912e = 0;
        return true;
    }

    private void b() throws IOException {
        if (this.f2913f) {
            throw new IOException("stream already closed");
        }
    }

    protected void finalize() throws Throwable {
        if (!this.f2913f) {
            com.facebook.d.e.a.a("PooledByteInputStream", "Finalized without closing");
            close();
        }
        super.finalize();
    }
}
