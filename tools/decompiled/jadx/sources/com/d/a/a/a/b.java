package com.d.a.a.a;

import android.support.v7.widget.ActivityChooserView;
import com.d.a.a.b.g;
import com.d.a.a.c.d;
import com.d.a.a.e.i;
import com.d.a.a.j;
import com.d.a.a.l;
import com.d.a.a.o;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: compiled from: ParserBase.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends c {
    static final BigInteger s = BigInteger.valueOf(-2147483648L);
    static final BigInteger t = BigInteger.valueOf(2147483647L);
    static final BigInteger u = BigInteger.valueOf(Long.MIN_VALUE);
    static final BigInteger v = BigInteger.valueOf(Long.MAX_VALUE);
    static final BigDecimal w = new BigDecimal(u);
    static final BigDecimal x = new BigDecimal(v);
    static final BigDecimal y = new BigDecimal(s);
    static final BigDecimal z = new BigDecimal(t);
    protected int A;
    protected int B;
    protected long C;
    protected double D;
    protected BigInteger E;
    protected BigDecimal F;
    protected boolean G;
    protected int H;
    protected int I;
    protected int J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final com.d.a.a.b.c f1331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f1332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f1333d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f1334e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected long f1335f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f1336g;
    protected int h;
    protected long i;
    protected int j;
    protected int k;
    protected d l;
    protected o m;
    protected final i n;
    protected char[] o;
    protected boolean p;
    protected com.d.a.a.e.b q;
    protected byte[] r;

    protected abstract void A() throws IOException;

    protected abstract boolean y() throws IOException;

    protected abstract void z() throws IOException;

    protected b(com.d.a.a.b.c cVar, int i) {
        super(i);
        this.f1336g = 1;
        this.j = 1;
        this.A = 0;
        this.f1331b = cVar;
        this.n = cVar.d();
        this.l = d.a(l.STRICT_DUPLICATE_DETECTION.a(i) ? com.d.a.a.c.b.a(this) : null);
    }

    @Override // com.d.a.a.k
    public String d() throws IOException {
        d dVarH;
        return ((this.K == o.START_OBJECT || this.K == o.START_ARRAY) && (dVarH = this.l.h()) != null) ? dVarH.g() : this.l.g();
    }

    @Override // com.d.a.a.k, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f1332c) {
            this.f1332c = true;
            try {
                A();
            } finally {
                B();
            }
        }
    }

    @Override // com.d.a.a.k
    public com.d.a.a.i e() {
        return new com.d.a.a.i(this.f1331b.a(), -1L, u(), v(), w());
    }

    @Override // com.d.a.a.k
    public com.d.a.a.i f() {
        return new com.d.a.a.i(this.f1331b.a(), -1L, this.f1335f + ((long) this.f1333d), this.f1336g, (this.f1333d - this.h) + 1);
    }

    @Override // com.d.a.a.k
    public byte[] a(com.d.a.a.a aVar) throws IOException {
        if (this.r == null) {
            if (this.K != o.VALUE_STRING) {
                d("Current token (" + this.K + ") not VALUE_STRING, can not access as binary");
            }
            com.d.a.a.e.b bVarE = E();
            a(g(), bVarE, aVar);
            this.r = bVarE.b();
        }
        return this.r;
    }

    public long u() {
        return this.i;
    }

    public int v() {
        return this.j;
    }

    public int w() {
        int i = this.k;
        return i < 0 ? i : i + 1;
    }

    protected final void x() throws IOException {
        if (!y()) {
            O();
        }
    }

    protected void B() throws IOException {
        this.n.a();
        char[] cArr = this.o;
        if (cArr != null) {
            this.o = null;
            this.f1331b.c(cArr);
        }
    }

    @Override // com.d.a.a.a.c
    protected void C() throws j {
        if (!this.l.b()) {
            c(": expected close marker for " + this.l.d() + " (from " + this.l.a(this.f1331b.a()) + ")");
        }
    }

    protected final int D() throws j {
        C();
        return -1;
    }

    protected void a(int i, char c2) throws j {
        d("Unexpected close marker '" + ((char) i) + "': expected '" + c2 + "' (for " + this.l.d() + " starting at " + ("" + this.l.a(this.f1331b.a())) + ")");
    }

    public com.d.a.a.e.b E() {
        if (this.q == null) {
            this.q = new com.d.a.a.e.b();
        } else {
            this.q.a();
        }
        return this.q;
    }

    protected final o a(boolean z2, int i, int i2, int i3) {
        return (i2 >= 1 || i3 >= 1) ? b(z2, i, i2, i3) : a(z2, i);
    }

    protected final o a(boolean z2, int i) {
        this.G = z2;
        this.H = i;
        this.I = 0;
        this.J = 0;
        this.A = 0;
        return o.VALUE_NUMBER_INT;
    }

    protected final o b(boolean z2, int i, int i2, int i3) {
        this.G = z2;
        this.H = i;
        this.I = i2;
        this.J = i3;
        this.A = 0;
        return o.VALUE_NUMBER_FLOAT;
    }

    protected final o a(String str, double d2) {
        this.n.a(str);
        this.D = d2;
        this.A = 8;
        return o.VALUE_NUMBER_FLOAT;
    }

    @Override // com.d.a.a.k
    public int m() throws IOException {
        if ((this.A & 1) == 0) {
            if (this.A == 0) {
                return F();
            }
            if ((this.A & 1) == 0) {
                G();
            }
        }
        return this.B;
    }

    @Override // com.d.a.a.k
    public long n() throws IOException {
        if ((this.A & 2) == 0) {
            if (this.A == 0) {
                a(2);
            }
            if ((this.A & 2) == 0) {
                H();
            }
        }
        return this.C;
    }

    @Override // com.d.a.a.k
    public BigInteger o() throws IOException {
        if ((this.A & 4) == 0) {
            if (this.A == 0) {
                a(4);
            }
            if ((this.A & 4) == 0) {
                I();
            }
        }
        return this.E;
    }

    @Override // com.d.a.a.k
    public float p() throws IOException {
        return (float) q();
    }

    @Override // com.d.a.a.k
    public double q() throws IOException {
        if ((this.A & 8) == 0) {
            if (this.A == 0) {
                a(8);
            }
            if ((this.A & 8) == 0) {
                J();
            }
        }
        return this.D;
    }

    @Override // com.d.a.a.k
    public BigDecimal r() throws IOException {
        if ((this.A & 16) == 0) {
            if (this.A == 0) {
                a(16);
            }
            if ((this.A & 16) == 0) {
                K();
            }
        }
        return this.F;
    }

    protected void a(int i) throws IOException {
        if (this.K == o.VALUE_NUMBER_INT) {
            char[] cArrE = this.n.e();
            int iD = this.n.d();
            int i2 = this.H;
            if (this.G) {
                iD++;
            }
            if (i2 <= 9) {
                int iA = g.a(cArrE, iD, i2);
                if (this.G) {
                    iA = -iA;
                }
                this.B = iA;
                this.A = 1;
                return;
            }
            if (i2 <= 18) {
                long jB = g.b(cArrE, iD, i2);
                if (this.G) {
                    jB = -jB;
                }
                if (i2 == 10) {
                    if (this.G) {
                        if (jB >= -2147483648L) {
                            this.B = (int) jB;
                            this.A = 1;
                            return;
                        }
                    } else if (jB <= 2147483647L) {
                        this.B = (int) jB;
                        this.A = 1;
                        return;
                    }
                }
                this.C = jB;
                this.A = 2;
                return;
            }
            a(i, cArrE, iD, i2);
            return;
        }
        if (this.K == o.VALUE_NUMBER_FLOAT) {
            e(i);
        } else {
            d("Current token (" + this.K + ") not numeric, can not use numeric value accessors");
        }
    }

    protected int F() throws IOException {
        if (this.K == o.VALUE_NUMBER_INT) {
            char[] cArrE = this.n.e();
            int iD = this.n.d();
            int i = this.H;
            if (this.G) {
                iD++;
            }
            if (i <= 9) {
                int iA = g.a(cArrE, iD, i);
                if (this.G) {
                    iA = -iA;
                }
                this.B = iA;
                this.A = 1;
                return iA;
            }
        }
        a(1);
        if ((this.A & 1) == 0) {
            G();
        }
        return this.B;
    }

    private void e(int i) throws IOException {
        try {
            if (i == 16) {
                this.F = this.n.h();
                this.A = 16;
            } else {
                this.D = this.n.i();
                this.A = 8;
            }
        } catch (NumberFormatException e2) {
            a("Malformed numeric value '" + this.n.f() + "'", e2);
        }
    }

    private void a(int i, char[] cArr, int i2, int i3) throws IOException {
        String strF = this.n.f();
        try {
            if (g.a(cArr, i2, i3, this.G)) {
                this.C = Long.parseLong(strF);
                this.A = 2;
            } else {
                this.E = new BigInteger(strF);
                this.A = 4;
            }
        } catch (NumberFormatException e2) {
            a("Malformed numeric value '" + strF + "'", e2);
        }
    }

    protected void G() throws IOException {
        if ((this.A & 2) != 0) {
            int i = (int) this.C;
            if (i != this.C) {
                d("Numeric value (" + g() + ") out of range of int");
            }
            this.B = i;
        } else if ((this.A & 4) != 0) {
            if (s.compareTo(this.E) > 0 || t.compareTo(this.E) < 0) {
                L();
            }
            this.B = this.E.intValue();
        } else if ((this.A & 8) != 0) {
            if (this.D < -2.147483648E9d || this.D > 2.147483647E9d) {
                L();
            }
            this.B = (int) this.D;
        } else if ((this.A & 16) != 0) {
            if (y.compareTo(this.F) > 0 || z.compareTo(this.F) < 0) {
                L();
            }
            this.B = this.F.intValue();
        } else {
            Q();
        }
        this.A |= 1;
    }

    protected void H() throws IOException {
        if ((this.A & 1) != 0) {
            this.C = this.B;
        } else if ((this.A & 4) != 0) {
            if (u.compareTo(this.E) > 0 || v.compareTo(this.E) < 0) {
                M();
            }
            this.C = this.E.longValue();
        } else if ((this.A & 8) != 0) {
            if (this.D < -9.223372036854776E18d || this.D > 9.223372036854776E18d) {
                M();
            }
            this.C = (long) this.D;
        } else if ((this.A & 16) != 0) {
            if (w.compareTo(this.F) > 0 || x.compareTo(this.F) < 0) {
                M();
            }
            this.C = this.F.longValue();
        } else {
            Q();
        }
        this.A |= 2;
    }

    protected void I() throws IOException {
        if ((this.A & 16) != 0) {
            this.E = this.F.toBigInteger();
        } else if ((this.A & 2) != 0) {
            this.E = BigInteger.valueOf(this.C);
        } else if ((this.A & 1) != 0) {
            this.E = BigInteger.valueOf(this.B);
        } else if ((this.A & 8) != 0) {
            this.E = BigDecimal.valueOf(this.D).toBigInteger();
        } else {
            Q();
        }
        this.A |= 4;
    }

    protected void J() throws IOException {
        if ((this.A & 16) != 0) {
            this.D = this.F.doubleValue();
        } else if ((this.A & 4) != 0) {
            this.D = this.E.doubleValue();
        } else if ((this.A & 2) != 0) {
            this.D = this.C;
        } else if ((this.A & 1) != 0) {
            this.D = this.B;
        } else {
            Q();
        }
        this.A |= 8;
    }

    protected void K() throws IOException {
        if ((this.A & 8) != 0) {
            this.F = g.b(g());
        } else if ((this.A & 4) != 0) {
            this.F = new BigDecimal(this.E);
        } else if ((this.A & 2) != 0) {
            this.F = BigDecimal.valueOf(this.C);
        } else if ((this.A & 1) != 0) {
            this.F = BigDecimal.valueOf(this.B);
        } else {
            Q();
        }
        this.A |= 16;
    }

    protected void a(int i, String str) throws j {
        String str2 = "Unexpected character (" + d(i) + ") in numeric value";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        d(str2);
    }

    protected void b(String str) throws j {
        d("Invalid numeric value: " + str);
    }

    protected void L() throws IOException {
        d("Numeric value (" + g() + ") out of range of int (-2147483648 - " + ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED + ")");
    }

    protected void M() throws IOException {
        d("Numeric value (" + g() + ") out of range of long (-9223372036854775808 - 9223372036854775807)");
    }

    protected char N() throws IOException {
        throw new UnsupportedOperationException();
    }

    protected final int a(com.d.a.a.a aVar, int i, int i2) throws IOException {
        if (i != 92) {
            throw b(aVar, i, i2);
        }
        char cN = N();
        if (cN <= ' ' && i2 == 0) {
            return -1;
        }
        int iB = aVar.b((int) cN);
        if (iB < 0) {
            throw b(aVar, cN, i2);
        }
        return iB;
    }

    protected final int a(com.d.a.a.a aVar, char c2, int i) throws IOException {
        if (c2 != '\\') {
            throw b(aVar, c2, i);
        }
        char cN = N();
        if (cN <= ' ' && i == 0) {
            return -1;
        }
        int iB = aVar.b(cN);
        if (iB < 0) {
            throw b(aVar, cN, i);
        }
        return iB;
    }

    protected IllegalArgumentException b(com.d.a.a.a aVar, int i, int i2) throws IllegalArgumentException {
        return a(aVar, i, i2, (String) null);
    }

    protected IllegalArgumentException a(com.d.a.a.a aVar, int i, int i2, String str) throws IllegalArgumentException {
        String str2;
        if (i <= 32) {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(i) + ") as character #" + (i2 + 1) + " of 4-char base64 unit: can only used between units";
        } else if (aVar.a(i)) {
            str2 = "Unexpected padding character ('" + aVar.b() + "') as character #" + (i2 + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (!Character.isDefined(i) || Character.isISOControl(i)) {
            str2 = "Illegal character (code 0x" + Integer.toHexString(i) + ") in base64 content";
        } else {
            str2 = "Illegal character '" + ((char) i) + "' (code 0x" + Integer.toHexString(i) + ") in base64 content";
        }
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        return new IllegalArgumentException(str2);
    }
}
