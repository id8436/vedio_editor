package com.l.b.a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* JADX INFO: compiled from: QPDecoderStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class i extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected byte[] f3615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f3616b;

    public i(InputStream inputStream) {
        super(new PushbackInputStream(inputStream, 2));
        this.f3615a = new byte[2];
        this.f3616b = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i;
        int i2;
        if (this.f3616b > 0) {
            this.f3616b--;
            return 32;
        }
        int i3 = this.in.read();
        if (i3 == 32) {
            while (true) {
                i = this.in.read();
                if (i != 32) {
                    break;
                }
                this.f3616b++;
            }
            if (i == 13 || i == 10 || i == -1) {
                this.f3616b = 0;
                i2 = i;
            } else {
                ((PushbackInputStream) this.in).unread(i);
                i2 = 32;
            }
            return i2;
        }
        if (i3 != 61) {
            return i3;
        }
        int i4 = this.in.read();
        if (i4 == 10) {
            return read();
        }
        if (i4 == 13) {
            int i5 = this.in.read();
            if (i5 != 10) {
                ((PushbackInputStream) this.in).unread(i5);
            }
            return read();
        }
        if (i4 == -1) {
            return -1;
        }
        this.f3615a[0] = (byte) i4;
        this.f3615a[1] = (byte) this.in.read();
        try {
            return a.a(this.f3615a, 0, 2, 16);
        } catch (NumberFormatException e2) {
            ((PushbackInputStream) this.in).unread(this.f3615a);
            return i3;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int i4 = read();
            if (i4 == -1) {
                if (i3 == 0) {
                    return -1;
                }
            } else {
                bArr[i + i3] = (byte) i4;
                i3++;
            }
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.in.available();
    }
}
