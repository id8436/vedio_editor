package com.l.b.a;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

/* JADX INFO: compiled from: UUEncoderStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class l extends FilterOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f3629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f3630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f3631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3633e;

    public l(OutputStream outputStream) {
        this(outputStream, "encoder.buf", 644);
    }

    public l(OutputStream outputStream, String str) {
        this(outputStream, str, 644);
    }

    public l(OutputStream outputStream, String str, int i) {
        super(outputStream);
        this.f3632d = 0;
        this.f3633e = false;
        this.f3629a = str;
        this.f3630b = i;
        this.f3631c = new byte[45];
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            write(bArr[i + i3]);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f3631c;
        int i2 = this.f3632d;
        this.f3632d = i2 + 1;
        bArr[i2] = (byte) i;
        if (this.f3632d == 45) {
            a();
            c();
            this.f3632d = 0;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        if (this.f3632d > 0) {
            a();
            c();
        }
        b();
        this.out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
        this.out.close();
    }

    private void a() throws IOException {
        if (!this.f3633e) {
            PrintStream printStream = new PrintStream(this.out);
            printStream.println(new StringBuffer().append("begin ").append(this.f3630b).append(" ").append(this.f3629a).toString());
            printStream.flush();
            this.f3633e = true;
        }
    }

    private void b() throws IOException {
        PrintStream printStream = new PrintStream(this.out);
        printStream.println(" \nend");
        printStream.flush();
    }

    private void c() throws IOException {
        byte b2;
        byte b3;
        int i = 0;
        this.out.write((this.f3632d & 63) + 32);
        while (i < this.f3632d) {
            int i2 = i + 1;
            byte b4 = this.f3631c[i];
            if (i2 < this.f3632d) {
                int i3 = i2 + 1;
                b3 = this.f3631c[i2];
                if (i3 < this.f3632d) {
                    i = i3 + 1;
                    b2 = this.f3631c[i3];
                } else {
                    i = i3;
                    b2 = 1;
                }
            } else {
                i = i2;
                b2 = 1;
                b3 = 1;
            }
            int i4 = (b4 >>> 2) & 63;
            this.out.write(i4 + 32);
            this.out.write((((b4 << 4) & 48) | ((b3 >>> 4) & 15)) + 32);
            this.out.write((((b3 << 2) & 60) | ((b2 >>> 6) & 3)) + 32);
            this.out.write((b2 & 63) + 32);
        }
        this.out.write(10);
    }
}
