package e;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: Segment.java */
/* JADX INFO: loaded from: classes.dex */
final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final byte[] f4751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f4752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4753c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f4754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f4755e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    x f4756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    x f4757g;

    x() {
        this.f4751a = new byte[8192];
        this.f4755e = true;
        this.f4754d = false;
    }

    x(x xVar) {
        this(xVar.f4751a, xVar.f4752b, xVar.f4753c);
        xVar.f4754d = true;
    }

    x(byte[] bArr, int i, int i2) {
        this.f4751a = bArr;
        this.f4752b = i;
        this.f4753c = i2;
        this.f4755e = false;
        this.f4754d = true;
    }

    @Nullable
    public x a() {
        x xVar = this.f4756f != this ? this.f4756f : null;
        this.f4757g.f4756f = this.f4756f;
        this.f4756f.f4757g = this.f4757g;
        this.f4756f = null;
        this.f4757g = null;
        return xVar;
    }

    public x a(x xVar) {
        xVar.f4757g = this;
        xVar.f4756f = this.f4756f;
        this.f4756f.f4757g = xVar;
        this.f4756f = xVar;
        return xVar;
    }

    public x a(int i) {
        x xVarA;
        if (i <= 0 || i > this.f4753c - this.f4752b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            xVarA = new x(this);
        } else {
            xVarA = y.a();
            System.arraycopy(this.f4751a, this.f4752b, xVarA.f4751a, 0, i);
        }
        xVarA.f4753c = xVarA.f4752b + i;
        this.f4752b += i;
        this.f4757g.a(xVarA);
        return xVarA;
    }

    public void b() {
        if (this.f4757g == this) {
            throw new IllegalStateException();
        }
        if (this.f4757g.f4755e) {
            int i = this.f4753c - this.f4752b;
            if (i <= (this.f4757g.f4754d ? 0 : this.f4757g.f4752b) + (8192 - this.f4757g.f4753c)) {
                a(this.f4757g, i);
                a();
                y.a(this);
            }
        }
    }

    public void a(x xVar, int i) {
        if (!xVar.f4755e) {
            throw new IllegalArgumentException();
        }
        if (xVar.f4753c + i > 8192) {
            if (xVar.f4754d) {
                throw new IllegalArgumentException();
            }
            if ((xVar.f4753c + i) - xVar.f4752b > 8192) {
                throw new IllegalArgumentException();
            }
            System.arraycopy(xVar.f4751a, xVar.f4752b, xVar.f4751a, 0, xVar.f4753c - xVar.f4752b);
            xVar.f4753c -= xVar.f4752b;
            xVar.f4752b = 0;
        }
        System.arraycopy(this.f4751a, this.f4752b, xVar.f4751a, xVar.f4753c, i);
        xVar.f4753c += i;
        this.f4752b += i;
    }
}
