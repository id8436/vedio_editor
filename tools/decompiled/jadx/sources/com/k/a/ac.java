package com.k.a;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: MarkableInputStream.java */
/* JADX INFO: loaded from: classes3.dex */
final class ac extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f3426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f3427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f3430e;

    public ac(InputStream inputStream) {
        this(inputStream, 4096);
    }

    public ac(InputStream inputStream, int i) {
        this.f3430e = -1L;
        this.f3426a = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, i);
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f3430e = a(i);
    }

    public long a(int i) {
        long j = this.f3427b + ((long) i);
        if (this.f3429d < j) {
            b(j);
        }
        return this.f3427b;
    }

    private void b(long j) {
        try {
            if (this.f3428c < this.f3427b && this.f3427b <= this.f3429d) {
                this.f3426a.reset();
                this.f3426a.mark((int) (j - this.f3428c));
                a(this.f3428c, this.f3427b);
            } else {
                this.f3428c = this.f3427b;
                this.f3426a.mark((int) (j - this.f3427b));
            }
            this.f3429d = j;
        } catch (IOException e2) {
            throw new IllegalStateException("Unable to mark: " + e2);
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        a(this.f3430e);
    }

    public void a(long j) throws IOException {
        if (this.f3427b > this.f3429d || j < this.f3428c) {
            throw new IOException("Cannot reset");
        }
        this.f3426a.reset();
        a(this.f3428c, j);
        this.f3427b = j;
    }

    private void a(long j, long j2) throws IOException {
        while (j < j2) {
            long jSkip = this.f3426a.skip(j2 - j);
            if (jSkip == 0) {
                if (read() != -1) {
                    jSkip = 1;
                } else {
                    return;
                }
            }
            j += jSkip;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.f3426a.read();
        if (i != -1) {
            this.f3427b++;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i = this.f3426a.read(bArr);
        if (i != -1) {
            this.f3427b += (long) i;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f3426a.read(bArr, i, i2);
        if (i3 != -1) {
            this.f3427b += (long) i3;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = this.f3426a.skip(j);
        this.f3427b += jSkip;
        return jSkip;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f3426a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3426a.close();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f3426a.markSupported();
    }
}
