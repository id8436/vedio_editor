package com.f.a;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: StrictLineReader.java */
/* JADX INFO: loaded from: classes2.dex */
class h implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f1660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Charset f1661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f1662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1664e;

    public h(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public h(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(j.f1666a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f1660a = inputStream;
        this.f1661b = charset;
        this.f1662c = new byte[i];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f1660a) {
            if (this.f1662c != null) {
                this.f1662c = null;
                this.f1660a.close();
            }
        }
    }

    public String a() throws IOException {
        int i;
        String string;
        synchronized (this.f1660a) {
            if (this.f1662c == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f1663d >= this.f1664e) {
                b();
            }
            int i2 = this.f1663d;
            while (true) {
                if (i2 != this.f1664e) {
                    if (this.f1662c[i2] != 10) {
                        i2++;
                    } else {
                        string = new String(this.f1662c, this.f1663d, ((i2 == this.f1663d || this.f1662c[i2 + (-1)] != 13) ? i2 : i2 - 1) - this.f1663d, this.f1661b.name());
                        this.f1663d = i2 + 1;
                    }
                } else {
                    i iVar = new i(this, (this.f1664e - this.f1663d) + 80);
                    loop1: while (true) {
                        iVar.write(this.f1662c, this.f1663d, this.f1664e - this.f1663d);
                        this.f1664e = -1;
                        b();
                        i = this.f1663d;
                        while (i != this.f1664e) {
                            if (this.f1662c[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                    if (i != this.f1663d) {
                        iVar.write(this.f1662c, this.f1663d, i - this.f1663d);
                    }
                    this.f1663d = i + 1;
                    string = iVar.toString();
                }
            }
            return string;
        }
    }

    private void b() throws IOException {
        int i = this.f1660a.read(this.f1662c, 0, this.f1662c.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.f1663d = 0;
        this.f1664e = i;
    }
}
