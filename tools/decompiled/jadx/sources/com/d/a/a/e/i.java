package com.d.a.a.e;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: TextBuffer.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final char[] f1479a = new char[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f1480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private char[] f1481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<char[]> f1484f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1485g;
    private int h;
    private char[] i;
    private int j;
    private String k;
    private char[] l;

    public i(a aVar) {
        this.f1480b = aVar;
    }

    public void a() {
        if (this.f1480b == null) {
            b();
        } else if (this.i != null) {
            b();
            char[] cArr = this.i;
            this.i = null;
            this.f1480b.a(2, cArr);
        }
    }

    public void b() {
        this.f1482d = -1;
        this.j = 0;
        this.f1483e = 0;
        this.f1481c = null;
        this.k = null;
        this.l = null;
        if (this.f1485g) {
            o();
        }
    }

    public void a(char[] cArr, int i, int i2) {
        this.k = null;
        this.l = null;
        this.f1481c = cArr;
        this.f1482d = i;
        this.f1483e = i2;
        if (this.f1485g) {
            o();
        }
    }

    public void b(char[] cArr, int i, int i2) {
        this.f1481c = null;
        this.f1482d = -1;
        this.f1483e = 0;
        this.k = null;
        this.l = null;
        if (this.f1485g) {
            o();
        } else if (this.i == null) {
            this.i = c(i2);
        }
        this.h = 0;
        this.j = 0;
        c(cArr, i, i2);
    }

    public void a(String str) {
        this.f1481c = null;
        this.f1482d = -1;
        this.f1483e = 0;
        this.k = str;
        this.l = null;
        if (this.f1485g) {
            o();
        }
        this.j = 0;
    }

    private char[] c(int i) {
        return this.f1480b != null ? this.f1480b.b(2, i) : new char[Math.max(i, 1000)];
    }

    private void o() {
        this.f1485g = false;
        this.f1484f.clear();
        this.h = 0;
        this.j = 0;
    }

    public int c() {
        if (this.f1482d >= 0) {
            return this.f1483e;
        }
        if (this.l != null) {
            return this.l.length;
        }
        if (this.k != null) {
            return this.k.length();
        }
        return this.h + this.j;
    }

    public int d() {
        if (this.f1482d >= 0) {
            return this.f1482d;
        }
        return 0;
    }

    public char[] e() {
        if (this.f1482d >= 0) {
            return this.f1481c;
        }
        if (this.l != null) {
            return this.l;
        }
        if (this.k != null) {
            char[] charArray = this.k.toCharArray();
            this.l = charArray;
            return charArray;
        }
        if (this.f1485g) {
            return g();
        }
        return this.i == null ? f1479a : this.i;
    }

    public String f() {
        if (this.k == null) {
            if (this.l != null) {
                this.k = new String(this.l);
            } else if (this.f1482d >= 0) {
                if (this.f1483e < 1) {
                    this.k = "";
                    return "";
                }
                this.k = new String(this.f1481c, this.f1482d, this.f1483e);
            } else {
                int i = this.h;
                int i2 = this.j;
                if (i == 0) {
                    this.k = i2 == 0 ? "" : new String(this.i, 0, i2);
                } else {
                    StringBuilder sb = new StringBuilder(i + i2);
                    if (this.f1484f != null) {
                        int size = this.f1484f.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            char[] cArr = this.f1484f.get(i3);
                            sb.append(cArr, 0, cArr.length);
                        }
                    }
                    sb.append(this.i, 0, this.j);
                    this.k = sb.toString();
                }
            }
        }
        return this.k;
    }

    public char[] g() {
        char[] cArr = this.l;
        if (cArr == null) {
            char[] cArrP = p();
            this.l = cArrP;
            return cArrP;
        }
        return cArr;
    }

    public BigDecimal h() throws NumberFormatException {
        if (this.l != null) {
            return com.d.a.a.b.g.a(this.l);
        }
        if (this.f1482d >= 0 && this.f1481c != null) {
            return com.d.a.a.b.g.c(this.f1481c, this.f1482d, this.f1483e);
        }
        if (this.h == 0 && this.i != null) {
            return com.d.a.a.b.g.c(this.i, 0, this.j);
        }
        return com.d.a.a.b.g.a(g());
    }

    public double i() throws NumberFormatException {
        return com.d.a.a.b.g.a(f());
    }

    public void c(char[] cArr, int i, int i2) {
        if (this.f1482d >= 0) {
            d(i2);
        }
        this.k = null;
        this.l = null;
        char[] cArr2 = this.i;
        int length = cArr2.length - this.j;
        if (length >= i2) {
            System.arraycopy(cArr, i, cArr2, this.j, i2);
            this.j += i2;
            return;
        }
        if (length > 0) {
            System.arraycopy(cArr, i, cArr2, this.j, length);
            i += length;
            i2 -= length;
        }
        do {
            e(i2);
            int iMin = Math.min(this.i.length, i2);
            System.arraycopy(cArr, i, this.i, 0, iMin);
            this.j += iMin;
            i += iMin;
            i2 -= iMin;
        } while (i2 > 0);
    }

    public char[] j() {
        if (this.f1482d >= 0) {
            d(1);
        } else {
            char[] cArr = this.i;
            if (cArr == null) {
                this.i = c(0);
            } else if (this.j >= cArr.length) {
                e(1);
            }
        }
        return this.i;
    }

    public char[] k() {
        this.f1482d = -1;
        this.j = 0;
        this.f1483e = 0;
        this.f1481c = null;
        this.k = null;
        this.l = null;
        if (this.f1485g) {
            o();
        }
        char[] cArr = this.i;
        if (cArr == null) {
            char[] cArrC = c(0);
            this.i = cArrC;
            return cArrC;
        }
        return cArr;
    }

    public int l() {
        return this.j;
    }

    public void a(int i) {
        this.j = i;
    }

    public String b(int i) {
        this.j = i;
        if (this.h > 0) {
            return f();
        }
        int i2 = this.j;
        String str = i2 == 0 ? "" : new String(this.i, 0, i2);
        this.k = str;
        return str;
    }

    public char[] m() {
        int i = 1000;
        if (this.f1484f == null) {
            this.f1484f = new ArrayList<>();
        }
        this.f1485g = true;
        this.f1484f.add(this.i);
        int length = this.i.length;
        this.h += length;
        this.j = 0;
        int i2 = length + (length >> 1);
        if (i2 >= 1000) {
            i = i2 > 262144 ? 262144 : i2;
        }
        char[] cArrF = f(i);
        this.i = cArrF;
        return cArrF;
    }

    public char[] n() {
        char[] cArr = this.i;
        int length = cArr.length;
        int i = (length >> 1) + length;
        if (i > 262144) {
            i = (length >> 2) + length;
        }
        char[] cArrCopyOf = Arrays.copyOf(cArr, i);
        this.i = cArrCopyOf;
        return cArrCopyOf;
    }

    public String toString() {
        return f();
    }

    private void d(int i) {
        int i2 = this.f1483e;
        this.f1483e = 0;
        char[] cArr = this.f1481c;
        this.f1481c = null;
        int i3 = this.f1482d;
        this.f1482d = -1;
        int i4 = i2 + i;
        if (this.i == null || i4 > this.i.length) {
            this.i = c(i4);
        }
        if (i2 > 0) {
            System.arraycopy(cArr, i3, this.i, 0, i2);
        }
        this.h = 0;
        this.j = i2;
    }

    private void e(int i) {
        int i2 = 1000;
        if (this.f1484f == null) {
            this.f1484f = new ArrayList<>();
        }
        char[] cArr = this.i;
        this.f1485g = true;
        this.f1484f.add(cArr);
        this.h += cArr.length;
        this.j = 0;
        int length = cArr.length;
        int i3 = length + (length >> 1);
        if (i3 >= 1000) {
            i2 = i3 > 262144 ? 262144 : i3;
        }
        this.i = f(i2);
    }

    private char[] p() {
        int i;
        if (this.k != null) {
            return this.k.toCharArray();
        }
        if (this.f1482d >= 0) {
            int i2 = this.f1483e;
            if (i2 < 1) {
                return f1479a;
            }
            int i3 = this.f1482d;
            if (i3 == 0) {
                return Arrays.copyOf(this.f1481c, i2);
            }
            return Arrays.copyOfRange(this.f1481c, i3, i2 + i3);
        }
        int iC = c();
        if (iC < 1) {
            return f1479a;
        }
        char[] cArrF = f(iC);
        if (this.f1484f != null) {
            int size = this.f1484f.size();
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                char[] cArr = this.f1484f.get(i5);
                int length = cArr.length;
                System.arraycopy(cArr, 0, cArrF, i4, length);
                i4 += length;
            }
            i = i4;
        } else {
            i = 0;
        }
        System.arraycopy(this.i, 0, cArrF, i, this.j);
        return cArrF;
    }

    private char[] f(int i) {
        return new char[i];
    }
}
