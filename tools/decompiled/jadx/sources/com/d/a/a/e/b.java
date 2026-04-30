package com.d.a.a.e;

import java.io.OutputStream;
import java.util.LinkedList;

/* JADX INFO: compiled from: ByteArrayBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b extends OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f1458a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f1459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedList<byte[]> f1460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f1462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1463f;

    public b() {
        this(null);
    }

    public b(a aVar) {
        this(aVar, 500);
    }

    public b(a aVar, int i) {
        this.f1460c = new LinkedList<>();
        this.f1459b = aVar;
        this.f1462e = aVar == null ? new byte[i] : aVar.a(2);
    }

    public void a() {
        this.f1461d = 0;
        this.f1463f = 0;
        if (!this.f1460c.isEmpty()) {
            this.f1460c.clear();
        }
    }

    public void a(int i) {
        if (this.f1463f >= this.f1462e.length) {
            e();
        }
        byte[] bArr = this.f1462e;
        int i2 = this.f1463f;
        this.f1463f = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public void b(int i) {
        if (this.f1463f + 1 < this.f1462e.length) {
            byte[] bArr = this.f1462e;
            int i2 = this.f1463f;
            this.f1463f = i2 + 1;
            bArr[i2] = (byte) (i >> 8);
            byte[] bArr2 = this.f1462e;
            int i3 = this.f1463f;
            this.f1463f = i3 + 1;
            bArr2[i3] = (byte) i;
            return;
        }
        a(i >> 8);
        a(i);
    }

    public void c(int i) {
        if (this.f1463f + 2 < this.f1462e.length) {
            byte[] bArr = this.f1462e;
            int i2 = this.f1463f;
            this.f1463f = i2 + 1;
            bArr[i2] = (byte) (i >> 16);
            byte[] bArr2 = this.f1462e;
            int i3 = this.f1463f;
            this.f1463f = i3 + 1;
            bArr2[i3] = (byte) (i >> 8);
            byte[] bArr3 = this.f1462e;
            int i4 = this.f1463f;
            this.f1463f = i4 + 1;
            bArr3[i4] = (byte) i;
            return;
        }
        a(i >> 16);
        a(i >> 8);
        a(i);
    }

    public byte[] b() {
        int i = this.f1461d + this.f1463f;
        if (i == 0) {
            return f1458a;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (byte[] bArr2 : this.f1460c) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i2, length);
            i2 += length;
        }
        System.arraycopy(this.f1462e, 0, bArr, i2, this.f1463f);
        int i3 = this.f1463f + i2;
        if (i3 != i) {
            throw new RuntimeException("Internal error: total len assumed to be " + i + ", copied " + i3 + " bytes");
        }
        if (!this.f1460c.isEmpty()) {
            a();
        }
        return bArr;
    }

    public byte[] c() {
        a();
        return this.f1462e;
    }

    public byte[] d() {
        e();
        return this.f1462e;
    }

    public byte[] d(int i) {
        this.f1463f = i;
        return b();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        while (true) {
            int iMin = Math.min(this.f1462e.length - this.f1463f, i2);
            if (iMin > 0) {
                System.arraycopy(bArr, i, this.f1462e, this.f1463f, iMin);
                i += iMin;
                this.f1463f += iMin;
                i2 -= iMin;
            }
            if (i2 > 0) {
                e();
            } else {
                return;
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        a(i);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    private void e() {
        this.f1461d += this.f1462e.length;
        int iMax = Math.max(this.f1461d >> 1, 1000);
        int i = iMax <= 262144 ? iMax : 262144;
        this.f1460c.add(this.f1462e);
        this.f1462e = new byte[i];
        this.f1463f = 0;
    }
}
