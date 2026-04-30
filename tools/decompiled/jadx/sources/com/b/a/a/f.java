package com.b.a.a;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: StrictLineReader.java */
/* JADX INFO: loaded from: classes2.dex */
class f implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Charset f705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f708e;

    public f(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public f(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(h.f710a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f704a = inputStream;
        this.f705b = charset;
        this.f706c = new byte[i];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f704a) {
            if (this.f706c != null) {
                this.f706c = null;
                this.f704a.close();
            }
        }
    }

    public String a() throws IOException {
        int i;
        String string;
        synchronized (this.f704a) {
            if (this.f706c == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f707d >= this.f708e) {
                c();
            }
            int i2 = this.f707d;
            while (true) {
                if (i2 != this.f708e) {
                    if (this.f706c[i2] != 10) {
                        i2++;
                    } else {
                        string = new String(this.f706c, this.f707d, ((i2 == this.f707d || this.f706c[i2 + (-1)] != 13) ? i2 : i2 - 1) - this.f707d, this.f705b.name());
                        this.f707d = i2 + 1;
                    }
                } else {
                    g gVar = new g(this, (this.f708e - this.f707d) + 80);
                    loop1: while (true) {
                        gVar.write(this.f706c, this.f707d, this.f708e - this.f707d);
                        this.f708e = -1;
                        c();
                        i = this.f707d;
                        while (i != this.f708e) {
                            if (this.f706c[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                    if (i != this.f707d) {
                        gVar.write(this.f706c, this.f707d, i - this.f707d);
                    }
                    this.f707d = i + 1;
                    string = gVar.toString();
                }
            }
            return string;
        }
    }

    public boolean b() {
        return this.f708e == -1;
    }

    private void c() throws IOException {
        int i = this.f704a.read(this.f706c, 0, this.f706c.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.f707d = 0;
        this.f708e = i;
    }
}
