package com.d.a.a.e;

/* JADX INFO: compiled from: BufferRecycler.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f1454c = {8000, 8000, 2000, 2000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f1455d = {4000, 4000, 200, 200};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final byte[][] f1456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final char[][] f1457b;

    public a() {
        this(4, 4);
    }

    protected a(int i, int i2) {
        this.f1456a = new byte[i][];
        this.f1457b = new char[i2][];
    }

    public final byte[] a(int i) {
        return a(i, 0);
    }

    public byte[] a(int i, int i2) {
        int iC = c(i);
        if (i2 < iC) {
            i2 = iC;
        }
        byte[] bArr = this.f1456a[i];
        if (bArr == null || bArr.length < i2) {
            return e(i2);
        }
        this.f1456a[i] = null;
        return bArr;
    }

    public final void a(int i, byte[] bArr) {
        this.f1456a[i] = bArr;
    }

    public final char[] b(int i) {
        return b(i, 0);
    }

    public char[] b(int i, int i2) {
        int iD = d(i);
        if (i2 < iD) {
            i2 = iD;
        }
        char[] cArr = this.f1457b[i];
        if (cArr == null || cArr.length < i2) {
            return f(i2);
        }
        this.f1457b[i] = null;
        return cArr;
    }

    public void a(int i, char[] cArr) {
        this.f1457b[i] = cArr;
    }

    protected int c(int i) {
        return f1454c[i];
    }

    protected int d(int i) {
        return f1455d[i];
    }

    protected byte[] e(int i) {
        return new byte[i];
    }

    protected char[] f(int i) {
        return new char[i];
    }
}
