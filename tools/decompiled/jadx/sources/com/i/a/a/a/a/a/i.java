package com.i.a.a.a.a.a;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: StrictLineReader.java */
/* JADX INFO: loaded from: classes3.dex */
class i implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f3227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Charset f3228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f3229c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3230d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3231e;

    public i(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public i(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(k.f3233a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f3227a = inputStream;
        this.f3228b = charset;
        this.f3229c = new byte[i];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f3227a) {
            if (this.f3229c != null) {
                this.f3229c = null;
                this.f3227a.close();
            }
        }
    }

    public String a() throws IOException {
        int i;
        String string;
        synchronized (this.f3227a) {
            if (this.f3229c == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f3230d >= this.f3231e) {
                b();
            }
            int i2 = this.f3230d;
            while (true) {
                if (i2 != this.f3231e) {
                    if (this.f3229c[i2] != 10) {
                        i2++;
                    } else {
                        string = new String(this.f3229c, this.f3230d, ((i2 == this.f3230d || this.f3229c[i2 + (-1)] != 13) ? i2 : i2 - 1) - this.f3230d, this.f3228b.name());
                        this.f3230d = i2 + 1;
                    }
                } else {
                    j jVar = new j(this, (this.f3231e - this.f3230d) + 80);
                    loop1: while (true) {
                        jVar.write(this.f3229c, this.f3230d, this.f3231e - this.f3230d);
                        this.f3231e = -1;
                        b();
                        i = this.f3230d;
                        while (i != this.f3231e) {
                            if (this.f3229c[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                    if (i != this.f3230d) {
                        jVar.write(this.f3229c, this.f3230d, i - this.f3230d);
                    }
                    this.f3230d = i + 1;
                    string = jVar.toString();
                }
            }
            return string;
        }
    }

    private void b() throws IOException {
        int i = this.f3227a.read(this.f3229c, 0, this.f3229c.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.f3230d = 0;
        this.f3231e = i;
    }
}
