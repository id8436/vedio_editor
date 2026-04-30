package com.facebook.d.k;

import com.google.common.primitives.UnsignedBytes;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: TailAppendingInputStream.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f1983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1985c;

    public b(InputStream inputStream, byte[] bArr) {
        super(inputStream);
        if (inputStream == null) {
            throw new NullPointerException();
        }
        if (bArr == null) {
            throw new NullPointerException();
        }
        this.f1983a = bArr;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = this.in.read();
        return i != -1 ? i : a();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.in.read(bArr, i, i2);
        if (i3 == -1) {
            if (i2 == 0) {
                return 0;
            }
            int i4 = 0;
            while (i4 < i2) {
                int iA = a();
                if (iA == -1) {
                    break;
                }
                bArr[i + i4] = (byte) iA;
                i4++;
            }
            if (i4 <= 0) {
                return -1;
            }
            return i4;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (this.in.markSupported()) {
            this.in.reset();
            this.f1984b = this.f1985c;
            return;
        }
        throw new IOException("mark is not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        if (this.in.markSupported()) {
            super.mark(i);
            this.f1985c = this.f1984b;
        }
    }

    private int a() {
        if (this.f1984b >= this.f1983a.length) {
            return -1;
        }
        byte[] bArr = this.f1983a;
        int i = this.f1984b;
        this.f1984b = i + 1;
        return bArr[i] & UnsignedBytes.MAX_VALUE;
    }
}
