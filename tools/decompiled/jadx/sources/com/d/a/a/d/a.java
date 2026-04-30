package com.d.a.a.d;

import com.d.a.a.e;
import com.d.a.a.e.h;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: ByteQuadsCanonicalizer.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final a f1424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final AtomicReference<b> f1425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f1426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final boolean f1427d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int[] f1428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f1429f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f1430g;
    protected int h;
    protected int i;
    protected int j;
    protected String[] k;
    protected int l;
    protected int m;
    private final int n;
    private transient boolean o;
    private boolean p;

    private a(int i, boolean z, int i2, boolean z2) {
        int i3 = 16;
        this.f1424a = null;
        this.n = i2;
        this.f1426c = z;
        this.f1427d = z2;
        if (i < 16) {
            i = 16;
        } else if (((i - 1) & i) != 0) {
            while (i3 < i) {
                i3 += i3;
            }
            i = i3;
        }
        this.f1425b = new AtomicReference<>(b.a(i));
    }

    private a(a aVar, boolean z, int i, boolean z2, b bVar) {
        this.f1424a = aVar;
        this.n = i;
        this.f1426c = z;
        this.f1427d = z2;
        this.f1425b = null;
        this.j = bVar.f1432b;
        this.f1429f = bVar.f1431a;
        this.f1430g = this.f1429f << 2;
        this.h = this.f1430g + (this.f1430g >> 1);
        this.i = bVar.f1433c;
        this.f1428e = bVar.f1434d;
        this.k = bVar.f1435e;
        this.l = bVar.f1436f;
        this.m = bVar.f1437g;
        this.o = false;
        this.p = true;
    }

    public static a a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return a((((int) (jCurrentTimeMillis >>> 32)) + ((int) jCurrentTimeMillis)) | 1);
    }

    protected static a a(int i) {
        return new a(64, true, i, true);
    }

    public a b(int i) {
        return new a(this, e.INTERN_FIELD_NAMES.a(i), this.n, e.FAIL_ON_SYMBOL_HASH_OVERFLOW.a(i), this.f1425b.get());
    }

    public void b() {
        if (this.f1424a != null && c()) {
            this.f1424a.a(new b(this));
            this.p = true;
        }
    }

    private void a(b bVar) {
        int i = bVar.f1432b;
        b bVar2 = this.f1425b.get();
        if (i != bVar2.f1432b) {
            if (i > 6000) {
                bVar = b.a(64);
            }
            this.f1425b.compareAndSet(bVar2, bVar);
        }
    }

    public boolean c() {
        return !this.p;
    }

    public int d() {
        int i = this.f1430g;
        int i2 = 0;
        for (int i3 = 3; i3 < i; i3 += 4) {
            if (this.f1428e[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }

    public int e() {
        int i = this.f1430g + 3;
        int i2 = this.h;
        int i3 = 0;
        for (int i4 = i; i4 < i2; i4 += 4) {
            if (this.f1428e[i4] != 0) {
                i3++;
            }
        }
        return i3;
    }

    public int f() {
        int i = this.h + 3;
        int i2 = this.f1429f + i;
        int i3 = 0;
        for (int i4 = i; i4 < i2; i4 += 4) {
            if (this.f1428e[i4] != 0) {
                i3++;
            }
        }
        return i3;
    }

    public int g() {
        return (this.l - m()) >> 2;
    }

    public int h() {
        int i = this.f1429f << 3;
        int i2 = 0;
        for (int i3 = 3; i3 < i; i3 += 4) {
            if (this.f1428e[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }

    public String toString() {
        int iD = d();
        int iE = e();
        int iF = f();
        int iG = g();
        int iH = h();
        return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", getClass().getName(), Integer.valueOf(this.j), Integer.valueOf(this.f1429f), Integer.valueOf(iD), Integer.valueOf(iE), Integer.valueOf(iF), Integer.valueOf(iG), Integer.valueOf(iH), Integer.valueOf(iD + iE + iF + iG), Integer.valueOf(iH));
    }

    public String c(int i) {
        int iF = f(d(i));
        int[] iArr = this.f1428e;
        int i2 = iArr[iF + 3];
        if (i2 == 1) {
            if (iArr[iF] == i) {
                return this.k[iF >> 2];
            }
        } else if (i2 == 0) {
            return null;
        }
        int i3 = this.f1430g + ((iF >> 3) << 2);
        int i4 = iArr[i3 + 3];
        if (i4 == 1) {
            if (iArr[i3] == i) {
                return this.k[i3 >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        return c(iF, i);
    }

    public String a(int i, int i2) {
        int iF = f(b(i, i2));
        int[] iArr = this.f1428e;
        int i3 = iArr[iF + 3];
        if (i3 == 2) {
            if (i == iArr[iF] && i2 == iArr[iF + 1]) {
                return this.k[iF >> 2];
            }
        } else if (i3 == 0) {
            return null;
        }
        int i4 = this.f1430g + ((iF >> 3) << 2);
        int i5 = iArr[i4 + 3];
        if (i5 == 2) {
            if (i == iArr[i4] && i2 == iArr[i4 + 1]) {
                return this.k[i4 >> 2];
            }
        } else if (i5 == 0) {
            return null;
        }
        return c(iF, i, i2);
    }

    public String a(int i, int i2, int i3) {
        int iF = f(b(i, i2, i3));
        int[] iArr = this.f1428e;
        int i4 = iArr[iF + 3];
        if (i4 == 3) {
            if (i == iArr[iF] && iArr[iF + 1] == i2 && iArr[iF + 2] == i3) {
                return this.k[iF >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        int i5 = this.f1430g + ((iF >> 3) << 2);
        int i6 = iArr[i5 + 3];
        if (i6 == 3) {
            if (i == iArr[i5] && iArr[i5 + 1] == i2 && iArr[i5 + 2] == i3) {
                return this.k[i5 >> 2];
            }
        } else if (i6 == 0) {
            return null;
        }
        return a(iF, i, i2, i3);
    }

    public String a(int[] iArr, int i) {
        if (i < 4) {
            if (i == 3) {
                return a(iArr[0], iArr[1], iArr[2]);
            }
            if (i == 2) {
                return a(iArr[0], iArr[1]);
            }
            return c(iArr[0]);
        }
        int iB = b(iArr, i);
        int iF = f(iB);
        int[] iArr2 = this.f1428e;
        int i2 = iArr2[iF + 3];
        if (iB == iArr2[iF] && i2 == i && a(iArr, i, iArr2[iF + 1])) {
            return this.k[iF >> 2];
        }
        if (i2 == 0) {
            return null;
        }
        int i3 = this.f1430g + ((iF >> 3) << 2);
        int i4 = iArr2[i3 + 3];
        if (iB == iArr2[i3] && i4 == i && a(iArr, i, iArr2[i3 + 1])) {
            return this.k[i3 >> 2];
        }
        if (i2 != 0) {
            return a(iF, iB, iArr, i);
        }
        return null;
    }

    private final int f(int i) {
        return ((this.f1429f - 1) & i) << 2;
    }

    private String c(int i, int i2) {
        int i3 = this.h + ((i >> (this.i + 2)) << this.i);
        int[] iArr = this.f1428e;
        int i4 = (1 << this.i) + i3;
        while (i3 < i4) {
            int i5 = iArr[i3 + 3];
            if (i2 == iArr[i3] && 1 == i5) {
                return this.k[i3 >> 2];
            }
            if (i5 == 0) {
                return null;
            }
            i3 += 4;
        }
        for (int iM = m(); iM < this.l; iM += 4) {
            if (i2 == iArr[iM] && 1 == iArr[iM + 3]) {
                return this.k[iM >> 2];
            }
        }
        return null;
    }

    private String c(int i, int i2, int i3) {
        int i4 = this.h + ((i >> (this.i + 2)) << this.i);
        int[] iArr = this.f1428e;
        int i5 = (1 << this.i) + i4;
        while (i4 < i5) {
            int i6 = iArr[i4 + 3];
            if (i2 == iArr[i4] && i3 == iArr[i4 + 1] && 2 == i6) {
                return this.k[i4 >> 2];
            }
            if (i6 == 0) {
                return null;
            }
            i4 += 4;
        }
        for (int iM = m(); iM < this.l; iM += 4) {
            if (i2 == iArr[iM] && i3 == iArr[iM + 1] && 2 == iArr[iM + 3]) {
                return this.k[iM >> 2];
            }
        }
        return null;
    }

    private String a(int i, int i2, int i3, int i4) {
        int i5 = this.h + ((i >> (this.i + 2)) << this.i);
        int[] iArr = this.f1428e;
        int i6 = (1 << this.i) + i5;
        while (i5 < i6) {
            int i7 = iArr[i5 + 3];
            if (i2 == iArr[i5] && i3 == iArr[i5 + 1] && i4 == iArr[i5 + 2] && 3 == i7) {
                return this.k[i5 >> 2];
            }
            if (i7 == 0) {
                return null;
            }
            i5 += 4;
        }
        for (int iM = m(); iM < this.l; iM += 4) {
            if (i2 == iArr[iM] && i3 == iArr[iM + 1] && i4 == iArr[iM + 2] && 3 == iArr[iM + 3]) {
                return this.k[iM >> 2];
            }
        }
        return null;
    }

    private String a(int i, int i2, int[] iArr, int i3) {
        int i4 = this.h + ((i >> (this.i + 2)) << this.i);
        int[] iArr2 = this.f1428e;
        int i5 = (1 << this.i) + i4;
        while (i4 < i5) {
            int i6 = iArr2[i4 + 3];
            if (i2 == iArr2[i4] && i3 == i6 && a(iArr, i3, iArr2[i4 + 1])) {
                return this.k[i4 >> 2];
            }
            if (i6 == 0) {
                return null;
            }
            i4 += 4;
        }
        for (int iM = m(); iM < this.l; iM += 4) {
            if (i2 == iArr2[iM] && i3 == iArr2[iM + 3] && a(iArr, i3, iArr2[iM + 1])) {
                return this.k[iM >> 2];
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(int[] r8, int r9, int r10) {
        /*
            r7 = this;
            r1 = 1
            r2 = 0
            int[] r4 = r7.f1428e
            switch(r9) {
                case 4: goto L6a;
                case 5: goto L68;
                case 6: goto L66;
                case 7: goto L64;
                case 8: goto Lc;
                default: goto L7;
            }
        L7:
            boolean r2 = r7.b(r8, r9, r10)
        Lb:
            return r2
        Lc:
            r3 = r8[r2]
            int r0 = r10 + 1
            r5 = r4[r10]
            if (r3 != r5) goto Lb
            r10 = r0
            r0 = r1
        L16:
            int r3 = r0 + 1
            r5 = r8[r0]
            int r0 = r10 + 1
            r6 = r4[r10]
            if (r5 != r6) goto Lb
            r10 = r0
            r0 = r3
        L22:
            int r3 = r0 + 1
            r5 = r8[r0]
            int r0 = r10 + 1
            r6 = r4[r10]
            if (r5 != r6) goto Lb
            r10 = r0
            r0 = r3
        L2e:
            int r3 = r0 + 1
            r5 = r8[r0]
            int r0 = r10 + 1
            r6 = r4[r10]
            if (r5 != r6) goto Lb
            r10 = r0
            r0 = r3
        L3a:
            int r3 = r0 + 1
            r0 = r8[r0]
            int r5 = r10 + 1
            r6 = r4[r10]
            if (r0 != r6) goto Lb
            int r0 = r3 + 1
            r3 = r8[r3]
            int r6 = r5 + 1
            r5 = r4[r5]
            if (r3 != r5) goto Lb
            int r3 = r0 + 1
            r0 = r8[r0]
            int r5 = r6 + 1
            r6 = r4[r6]
            if (r0 != r6) goto Lb
            int r0 = r3 + 1
            r0 = r8[r3]
            int r3 = r5 + 1
            r3 = r4[r5]
            if (r0 != r3) goto Lb
            r2 = r1
            goto Lb
        L64:
            r0 = r2
            goto L16
        L66:
            r0 = r2
            goto L22
        L68:
            r0 = r2
            goto L2e
        L6a:
            r0 = r2
            goto L3a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.d.a.a(int[], int, int):boolean");
    }

    private boolean b(int[] iArr, int i, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            int i6 = i2 + 1;
            if (i5 != this.f1428e[i2]) {
                return false;
            }
            if (i4 >= i) {
                return true;
            }
            i2 = i6;
            i3 = i4;
        }
    }

    public String a(String str, int[] iArr, int i) {
        int iG;
        k();
        if (this.f1426c) {
            str = h.f1477a.a(str);
        }
        switch (i) {
            case 1:
                iG = g(d(iArr[0]));
                this.f1428e[iG] = iArr[0];
                this.f1428e[iG + 3] = 1;
                break;
            case 2:
                iG = g(b(iArr[0], iArr[1]));
                this.f1428e[iG] = iArr[0];
                this.f1428e[iG + 1] = iArr[1];
                this.f1428e[iG + 3] = 2;
                break;
            case 3:
                iG = g(b(iArr[0], iArr[1], iArr[2]));
                this.f1428e[iG] = iArr[0];
                this.f1428e[iG + 1] = iArr[1];
                this.f1428e[iG + 2] = iArr[2];
                this.f1428e[iG + 3] = 3;
                break;
            default:
                int iB = b(iArr, i);
                iG = g(iB);
                this.f1428e[iG] = iB;
                this.f1428e[iG + 1] = c(iArr, i);
                this.f1428e[iG + 3] = i;
                break;
        }
        this.k[iG >> 2] = str;
        this.j++;
        j();
        return str;
    }

    private void j() {
        if (this.j > (this.f1429f >> 1)) {
            if (((this.l - m()) >> 2) > ((this.j + 1) >> 7) || this.j > ((double) this.f1429f) * 0.8d) {
                this.o = true;
            }
        }
    }

    private void k() {
        if (this.p) {
            this.f1428e = Arrays.copyOf(this.f1428e, this.f1428e.length);
            this.k = (String[]) Arrays.copyOf(this.k, this.k.length);
            this.p = false;
            j();
        }
        if (this.o) {
            l();
        }
    }

    private int g(int i) {
        int iF = f(i);
        int[] iArr = this.f1428e;
        if (iArr[iF + 3] != 0) {
            int i2 = this.f1430g + ((iF >> 3) << 2);
            if (iArr[i2 + 3] == 0) {
                return i2;
            }
            int i3 = ((iF >> (this.i + 2)) << this.i) + this.h;
            int i4 = (1 << this.i) + i3;
            while (i3 < i4) {
                if (iArr[i3 + 3] != 0) {
                    i3 += 4;
                } else {
                    return i3;
                }
            }
            int i5 = this.l;
            this.l += 4;
            if (this.l >= (this.f1429f << 3)) {
                if (this.f1427d) {
                    i();
                }
                this.o = true;
                return i5;
            }
            return i5;
        }
        return iF;
    }

    private int c(int[] iArr, int i) {
        int i2 = this.m;
        if (i2 + i > this.f1428e.length) {
            this.f1428e = Arrays.copyOf(this.f1428e, Math.max((i2 + i) - this.f1428e.length, Math.min(4096, this.f1429f)) + this.f1428e.length);
        }
        System.arraycopy(iArr, 0, this.f1428e, i2, i);
        this.m += i;
        return i2;
    }

    public int d(int i) {
        int i2 = this.n ^ i;
        int i3 = i2 + (i2 >>> 16);
        int i4 = i3 ^ (i3 << 3);
        return i4 + (i4 >>> 12);
    }

    public int b(int i, int i2) {
        int i3 = (i >>> 15) + i;
        int i4 = ((i3 ^ (i3 >>> 9)) + (i2 * 33)) ^ this.n;
        int i5 = i4 + (i4 >>> 16);
        int i6 = i5 ^ (i5 >>> 4);
        return i6 + (i6 << 3);
    }

    public int b(int i, int i2, int i3) {
        int i4 = this.n ^ i;
        int i5 = (((i4 + (i4 >>> 9)) * 31) + i2) * 33;
        int i6 = (i5 + (i5 >>> 15)) ^ i3;
        int i7 = i6 + (i6 >>> 4);
        int i8 = i7 + (i7 >>> 15);
        return i8 ^ (i8 << 9);
    }

    public int b(int[] iArr, int i) {
        if (i < 4) {
            throw new IllegalArgumentException();
        }
        int i2 = iArr[0] ^ this.n;
        int i3 = i2 + (i2 >>> 9) + iArr[1];
        int i4 = ((i3 + (i3 >>> 15)) * 33) ^ iArr[2];
        int i5 = (i4 >>> 4) + i4;
        for (int i6 = 3; i6 < i; i6++) {
            int i7 = iArr[i6];
            i5 += i7 ^ (i7 >> 21);
        }
        int i8 = 65599 * i5;
        int i9 = i8 + (i8 >>> 19);
        return i9 ^ (i9 << 5);
    }

    private void l() {
        this.o = false;
        this.p = false;
        int[] iArr = this.f1428e;
        String[] strArr = this.k;
        int i = this.f1429f;
        int i2 = this.j;
        int i3 = i + i;
        int i4 = this.l;
        if (i3 > 65536) {
            a(true);
            return;
        }
        this.f1428e = new int[(i << 3) + iArr.length];
        this.f1429f = i3;
        this.f1430g = i3 << 2;
        this.h = this.f1430g + (this.f1430g >> 1);
        this.i = e(i3);
        this.k = new String[strArr.length << 1];
        a(false);
        int[] iArr2 = new int[16];
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6 += 4) {
            int i7 = iArr[i6 + 3];
            if (i7 != 0) {
                i5++;
                String str = strArr[i6 >> 2];
                switch (i7) {
                    case 1:
                        iArr2[0] = iArr[i6];
                        a(str, iArr2, 1);
                        break;
                    case 2:
                        iArr2[0] = iArr[i6];
                        iArr2[1] = iArr[i6 + 1];
                        a(str, iArr2, 2);
                        break;
                    case 3:
                        iArr2[0] = iArr[i6];
                        iArr2[1] = iArr[i6 + 1];
                        iArr2[2] = iArr[i6 + 2];
                        a(str, iArr2, 3);
                        break;
                    default:
                        if (i7 > iArr2.length) {
                            iArr2 = new int[i7];
                        }
                        System.arraycopy(iArr, iArr[i6 + 1], iArr2, 0, i7);
                        a(str, iArr2, i7);
                        break;
                }
            }
        }
        if (i5 != i2) {
            throw new IllegalStateException("Failed rehash(): old count=" + i2 + ", copyCount=" + i5);
        }
    }

    private void a(boolean z) {
        this.j = 0;
        this.l = m();
        this.m = this.f1429f << 3;
        if (z) {
            Arrays.fill(this.f1428e, 0);
            Arrays.fill(this.k, (Object) null);
        }
    }

    private final int m() {
        int i = this.f1429f;
        return (i << 3) - i;
    }

    protected void i() {
        if (this.f1429f <= 1024) {
        } else {
            throw new IllegalStateException("Spill-over slots in symbol table with " + this.j + " entries, hash area of " + this.f1429f + " slots is now full (all " + (this.f1429f >> 3) + " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`");
        }
    }

    static int e(int i) {
        int i2 = i >> 2;
        if (i2 < 64) {
            return 4;
        }
        if (i2 <= 256) {
            return 5;
        }
        if (i2 <= 1024) {
            return 6;
        }
        return 7;
    }
}
