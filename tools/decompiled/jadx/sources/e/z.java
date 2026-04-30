package e;

import java.util.Arrays;

/* JADX INFO: compiled from: SegmentedByteString.java */
/* JADX INFO: loaded from: classes3.dex */
final class z extends k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final transient byte[][] f4760f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final transient int[] f4761g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    z(f fVar, int i) {
        super(null);
        int i2 = 0;
        ae.a(fVar.f4718b, 0L, i);
        x xVar = fVar.f4717a;
        int i3 = 0;
        int i4 = 0;
        while (i4 < i) {
            if (xVar.f4753c == xVar.f4752b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += xVar.f4753c - xVar.f4752b;
            i3++;
            xVar = xVar.f4756f;
        }
        this.f4760f = new byte[i3][];
        this.f4761g = new int[i3 * 2];
        x xVar2 = fVar.f4717a;
        int i5 = 0;
        while (i2 < i) {
            this.f4760f[i5] = xVar2.f4751a;
            int i6 = (xVar2.f4753c - xVar2.f4752b) + i2;
            if (i6 > i) {
                i6 = i;
            }
            this.f4761g[i5] = i6;
            this.f4761g[this.f4760f.length + i5] = xVar2.f4752b;
            xVar2.f4754d = true;
            i5++;
            xVar2 = xVar2.f4756f;
            i2 = i6;
        }
    }

    @Override // e.k
    public String a() {
        return i().a();
    }

    @Override // e.k
    public String b() {
        return i().b();
    }

    @Override // e.k
    public String e() {
        return i().e();
    }

    @Override // e.k
    public k f() {
        return i().f();
    }

    @Override // e.k
    public k c() {
        return i().c();
    }

    @Override // e.k
    public k d() {
        return i().d();
    }

    @Override // e.k
    public k a(int i, int i2) {
        return i().a(i, i2);
    }

    @Override // e.k
    public byte a(int i) {
        ae.a(this.f4761g[this.f4760f.length - 1], i, 1L);
        int iB = b(i);
        return this.f4760f[iB][(i - (iB == 0 ? 0 : this.f4761g[iB - 1])) + this.f4761g[this.f4760f.length + iB]];
    }

    private int b(int i) {
        int iBinarySearch = Arrays.binarySearch(this.f4761g, 0, this.f4760f.length, i + 1);
        return iBinarySearch >= 0 ? iBinarySearch : iBinarySearch ^ (-1);
    }

    @Override // e.k
    public int g() {
        return this.f4761g[this.f4760f.length - 1];
    }

    @Override // e.k
    public byte[] h() {
        int i = 0;
        byte[] bArr = new byte[this.f4761g[this.f4760f.length - 1]];
        int length = this.f4760f.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.f4761g[length + i];
            int i4 = this.f4761g[i];
            System.arraycopy(this.f4760f[i], i3, bArr, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr;
    }

    @Override // e.k
    void a(f fVar) {
        int i = 0;
        int length = this.f4760f.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.f4761g[length + i];
            int i4 = this.f4761g[i];
            x xVar = new x(this.f4760f[i], i3, (i3 + i4) - i2);
            if (fVar.f4717a == null) {
                xVar.f4757g = xVar;
                xVar.f4756f = xVar;
                fVar.f4717a = xVar;
            } else {
                fVar.f4717a.f4757g.a(xVar);
            }
            i++;
            i2 = i4;
        }
        fVar.f4718b = ((long) i2) + fVar.f4718b;
    }

    @Override // e.k
    public boolean a(int i, k kVar, int i2, int i3) {
        if (i < 0 || i > g() - i3) {
            return false;
        }
        int iB = b(i);
        while (i3 > 0) {
            int i4 = iB == 0 ? 0 : this.f4761g[iB - 1];
            int iMin = Math.min(i3, ((this.f4761g[iB] - i4) + i4) - i);
            if (!kVar.a(i2, this.f4760f[iB], (i - i4) + this.f4761g[this.f4760f.length + iB], iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iB++;
        }
        return true;
    }

    @Override // e.k
    public boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > g() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int iB = b(i);
        while (i3 > 0) {
            int i4 = iB == 0 ? 0 : this.f4761g[iB - 1];
            int iMin = Math.min(i3, ((this.f4761g[iB] - i4) + i4) - i);
            if (!ae.a(this.f4760f[iB], (i - i4) + this.f4761g[this.f4760f.length + iB], bArr, i2, iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iB++;
        }
        return true;
    }

    private k i() {
        return new k(h());
    }

    @Override // e.k
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof k) && ((k) obj).g() == g() && a(0, (k) obj, 0, g());
    }

    @Override // e.k
    public int hashCode() {
        int i = this.f4724d;
        if (i == 0) {
            i = 1;
            int length = this.f4760f.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                byte[] bArr = this.f4760f[i2];
                int i4 = this.f4761g[length + i2];
                int i5 = this.f4761g[i2];
                int i6 = (i5 - i3) + i4;
                int i7 = i;
                for (int i8 = i4; i8 < i6; i8++) {
                    i7 = (i7 * 31) + bArr[i8];
                }
                i2++;
                i3 = i5;
                i = i7;
            }
            this.f4724d = i;
        }
        return i;
    }

    @Override // e.k
    public String toString() {
        return i().toString();
    }
}
