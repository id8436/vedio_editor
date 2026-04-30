package com.facebook.imagepipeline.memory;

import com.google.common.primitives.UnsignedBytes;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: compiled from: PooledByteBufferInputStream.java */
/* JADX INFO: loaded from: classes2.dex */
@NotThreadSafe
public class ak extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ah f2914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2916c;

    public ak(ah ahVar) {
        com.facebook.d.d.k.a(!ahVar.b());
        this.f2914a = (ah) com.facebook.d.d.k.a(ahVar);
        this.f2915b = 0;
        this.f2916c = 0;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f2914a.a() - this.f2915b;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f2916c = this.f2915b;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        if (available() <= 0) {
            return -1;
        }
        ah ahVar = this.f2914a;
        int i = this.f2915b;
        this.f2915b = i + 1;
        return ahVar.a(i) & UnsignedBytes.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("length=" + bArr.length + "; regionStart=" + i + "; regionLength=" + i2);
        }
        int iAvailable = available();
        if (iAvailable <= 0) {
            return -1;
        }
        if (i2 <= 0) {
            return 0;
        }
        int iMin = Math.min(iAvailable, i2);
        this.f2914a.a(this.f2915b, bArr, i, iMin);
        this.f2915b += iMin;
        return iMin;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.f2915b = this.f2916c;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        com.facebook.d.d.k.a(j >= 0);
        int iMin = Math.min((int) j, available());
        this.f2915b += iMin;
        return iMin;
    }
}
