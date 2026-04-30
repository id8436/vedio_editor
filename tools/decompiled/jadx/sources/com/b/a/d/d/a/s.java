package com.b.a.d.d.a;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageHeaderParser.java */
/* JADX INFO: loaded from: classes2.dex */
class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f1003a;

    public s(InputStream inputStream) {
        this.f1003a = inputStream;
    }

    public int a() throws IOException {
        return ((this.f1003a.read() << 8) & 65280) | (this.f1003a.read() & 255);
    }

    public short b() throws IOException {
        return (short) (this.f1003a.read() & 255);
    }

    public long a(long j) throws IOException {
        if (j < 0) {
            return 0L;
        }
        long j2 = j;
        while (j2 > 0) {
            long jSkip = this.f1003a.skip(j2);
            if (jSkip > 0) {
                j2 -= jSkip;
            } else {
                if (this.f1003a.read() == -1) {
                    break;
                }
                j2--;
            }
        }
        return j - j2;
    }

    public int a(byte[] bArr) throws IOException {
        int length = bArr.length;
        while (length > 0) {
            int i = this.f1003a.read(bArr, bArr.length - length, length);
            if (i == -1) {
                break;
            }
            length -= i;
        }
        return bArr.length - length;
    }

    public int c() throws IOException {
        return this.f1003a.read();
    }
}
