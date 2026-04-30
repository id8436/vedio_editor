package com.d.a.a.d;

import com.d.a.a.e;
import com.d.a.a.e.h;
import java.util.Arrays;
import java.util.BitSet;

/* JADX INFO: compiled from: CharsToNameCanonicalizer.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c f1438a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected c f1439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f1440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f1441d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String[] f1442e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected d[] f1443f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f1444g;
    protected int h;
    protected int i;
    protected int j;
    protected boolean k;
    protected BitSet l;
    private final int m;

    public static c a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return a((((int) (jCurrentTimeMillis >>> 32)) + ((int) jCurrentTimeMillis)) | 1);
    }

    protected static c a(int i) {
        return f1438a.g(i);
    }

    private c() {
        this.f1441d = true;
        this.f1440c = -1;
        this.k = true;
        this.m = 0;
        this.j = 0;
        e(64);
    }

    private void e(int i) {
        this.f1442e = new String[i];
        this.f1443f = new d[i >> 1];
        this.i = i - 1;
        this.f1444g = 0;
        this.j = 0;
        this.h = f(i);
    }

    private static int f(int i) {
        return i - (i >> 2);
    }

    private c(c cVar, int i, String[] strArr, d[] dVarArr, int i2, int i3, int i4) {
        this.f1439b = cVar;
        this.f1440c = i;
        this.f1441d = e.CANONICALIZE_FIELD_NAMES.a(i);
        this.f1442e = strArr;
        this.f1443f = dVarArr;
        this.f1444g = i2;
        this.m = i3;
        int length = strArr.length;
        this.h = f(length);
        this.i = length - 1;
        this.j = i4;
        this.k = false;
    }

    public c b(int i) {
        String[] strArr;
        d[] dVarArr;
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            strArr = this.f1442e;
            dVarArr = this.f1443f;
            i2 = this.f1444g;
            i3 = this.m;
            i4 = this.j;
        }
        return new c(this, i, strArr, dVarArr, i2, i3, i4);
    }

    private c g(int i) {
        return new c(null, -1, this.f1442e, this.f1443f, this.f1444g, i, this.j);
    }

    private void a(c cVar) {
        if (cVar.c() > 12000) {
            synchronized (this) {
                e(256);
                this.k = false;
            }
        } else if (cVar.c() > c()) {
            synchronized (this) {
                this.f1442e = cVar.f1442e;
                this.f1443f = cVar.f1443f;
                this.f1444g = cVar.f1444g;
                this.h = cVar.h;
                this.i = cVar.i;
                this.j = cVar.j;
                this.k = false;
            }
        }
    }

    public void b() {
        if (d() && this.f1439b != null && this.f1441d) {
            this.f1439b.a(this);
            this.k = false;
        }
    }

    public int c() {
        return this.f1444g;
    }

    public boolean d() {
        return this.k;
    }

    public int e() {
        return this.m;
    }

    public String a(char[] cArr, int i, int i2, int i3) {
        if (i2 < 1) {
            return "";
        }
        if (!this.f1441d) {
            return new String(cArr, i, i2);
        }
        int iC = c(i3);
        String str = this.f1442e[iC];
        if (str != null) {
            if (str.length() == i2) {
                int i4 = 0;
                while (str.charAt(i4) == cArr[i + i4]) {
                    i4++;
                    if (i4 == i2) {
                        return str;
                    }
                }
            }
            d dVar = this.f1443f[iC >> 1];
            if (dVar != null) {
                String strA = dVar.a(cArr, i, i2);
                if (strA == null) {
                    String strA2 = a(cArr, i, i2, dVar.f1446b);
                    if (strA2 != null) {
                        return strA2;
                    }
                } else {
                    return strA;
                }
            }
        }
        return a(cArr, i, i2, i3, iC);
    }

    private String a(char[] cArr, int i, int i2, d dVar) {
        while (dVar != null) {
            String strA = dVar.a(cArr, i, i2);
            if (strA == null) {
                dVar = dVar.f1446b;
            } else {
                return strA;
            }
        }
        return null;
    }

    private String a(char[] cArr, int i, int i2, int i3, int i4) {
        if (!this.k) {
            f();
            this.k = true;
        } else if (this.f1444g >= this.h) {
            g();
            i4 = c(a(cArr, i, i2));
        }
        String str = new String(cArr, i, i2);
        if (e.INTERN_FIELD_NAMES.a(this.f1440c)) {
            str = h.f1477a.a(str);
        }
        this.f1444g++;
        if (this.f1442e[i4] == null) {
            this.f1442e[i4] = str;
        } else {
            int i5 = i4 >> 1;
            d dVar = new d(str, this.f1443f[i5]);
            int i6 = dVar.f1447c;
            if (i6 > 100) {
                a(i5, dVar);
            } else {
                this.f1443f[i5] = dVar;
                this.j = Math.max(i6, this.j);
            }
        }
        return str;
    }

    private void a(int i, d dVar) {
        if (this.l == null) {
            this.l = new BitSet();
            this.l.set(i);
        } else if (this.l.get(i)) {
            if (e.FAIL_ON_SYMBOL_HASH_OVERFLOW.a(this.f1440c)) {
                d(100);
            }
            this.f1441d = false;
        } else {
            this.l.set(i);
        }
        this.f1442e[i + i] = dVar.f1445a;
        this.f1443f[i] = null;
        this.f1444g -= dVar.f1447c;
        this.j = -1;
    }

    public int c(int i) {
        int i2 = (i >>> 15) + i;
        int i3 = i2 ^ (i2 << 7);
        return (i3 + (i3 >>> 3)) & this.i;
    }

    public int a(char[] cArr, int i, int i2) {
        int i3 = this.m;
        int i4 = i + i2;
        while (i < i4) {
            i3 = (i3 * 33) + cArr[i];
            i++;
        }
        if (i3 == 0) {
            return 1;
        }
        return i3;
    }

    public int a(String str) {
        int length = str.length();
        int i = this.m;
        int i2 = 0;
        while (i2 < length) {
            int iCharAt = str.charAt(i2) + (i * 33);
            i2++;
            i = iCharAt;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    private void f() {
        String[] strArr = this.f1442e;
        this.f1442e = (String[]) Arrays.copyOf(strArr, strArr.length);
        d[] dVarArr = this.f1443f;
        this.f1443f = (d[]) Arrays.copyOf(dVarArr, dVarArr.length);
    }

    private void g() {
        int length = this.f1442e.length;
        int i = length + length;
        if (i > 65536) {
            this.f1444g = 0;
            this.f1441d = false;
            this.f1442e = new String[64];
            this.f1443f = new d[32];
            this.i = 63;
            this.k = true;
            return;
        }
        String[] strArr = this.f1442e;
        d[] dVarArr = this.f1443f;
        this.f1442e = new String[i];
        this.f1443f = new d[i >> 1];
        this.i = i - 1;
        this.h = f(i);
        int iMax = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            String str = strArr[i3];
            if (str != null) {
                i2++;
                int iC = c(a(str));
                if (this.f1442e[iC] == null) {
                    this.f1442e[iC] = str;
                } else {
                    int i4 = iC >> 1;
                    d dVar = new d(str, this.f1443f[i4]);
                    this.f1443f[i4] = dVar;
                    iMax = Math.max(iMax, dVar.f1447c);
                }
            }
        }
        int i5 = length >> 1;
        int i6 = 0;
        int i7 = i2;
        int i8 = iMax;
        while (i6 < i5) {
            int iMax2 = i8;
            for (d dVar2 = dVarArr[i6]; dVar2 != null; dVar2 = dVar2.f1446b) {
                i7++;
                String str2 = dVar2.f1445a;
                int iC2 = c(a(str2));
                if (this.f1442e[iC2] == null) {
                    this.f1442e[iC2] = str2;
                } else {
                    int i9 = iC2 >> 1;
                    d dVar3 = new d(str2, this.f1443f[i9]);
                    this.f1443f[i9] = dVar3;
                    iMax2 = Math.max(iMax2, dVar3.f1447c);
                }
            }
            i6++;
            i8 = iMax2;
        }
        this.j = i8;
        this.l = null;
        if (i7 != this.f1444g) {
            throw new Error("Internal error on SymbolTable.rehash(): had " + this.f1444g + " entries; now have " + i7 + ".");
        }
    }

    protected void d(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this.f1444g + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }
}
