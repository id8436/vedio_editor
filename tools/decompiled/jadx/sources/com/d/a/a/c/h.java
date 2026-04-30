package com.d.a.a.c;

import com.d.a.a.j;
import com.d.a.a.l;
import com.d.a.a.o;
import com.d.a.a.p;
import com.google.common.primitives.UnsignedBytes;
import com.google.gdata.data.Category;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: compiled from: UTF8StreamJsonParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends com.d.a.a.a.b {
    protected p M;
    protected final com.d.a.a.d.a N;
    protected int[] O;
    protected boolean P;
    protected int Q;
    protected int R;
    protected int S;
    protected InputStream T;
    protected byte[] U;
    protected boolean V;
    private int X;
    private static final int[] W = com.d.a.a.b.a.b();
    protected static final int[] L = com.d.a.a.b.a.a();

    public h(com.d.a.a.b.c cVar, int i, InputStream inputStream, p pVar, com.d.a.a.d.a aVar, byte[] bArr, int i2, int i3, boolean z) {
        super(cVar, i);
        this.O = new int[16];
        this.T = inputStream;
        this.M = pVar;
        this.N = aVar;
        this.U = bArr;
        this.f1333d = i2;
        this.f1334e = i3;
        this.h = i2;
        this.f1335f = -i2;
        this.V = z;
    }

    @Override // com.d.a.a.a.b
    protected final boolean y() throws IOException {
        int length;
        int i = this.f1334e;
        this.f1335f += (long) this.f1334e;
        this.h -= this.f1334e;
        this.Q -= i;
        if (this.T == null || (length = this.U.length) == 0) {
            return false;
        }
        int i2 = this.T.read(this.U, 0, length);
        if (i2 > 0) {
            this.f1333d = 0;
            this.f1334e = i2;
            return true;
        }
        A();
        if (i2 == 0) {
            throw new IOException("InputStream.read() returned 0 characters when trying to read " + this.U.length + " bytes");
        }
        return false;
    }

    @Override // com.d.a.a.a.b
    protected void A() throws IOException {
        if (this.T != null) {
            if (this.f1331b.c() || a(l.AUTO_CLOSE_SOURCE)) {
                this.T.close();
            }
            this.T = null;
        }
    }

    @Override // com.d.a.a.a.b
    protected void B() throws IOException {
        byte[] bArr;
        super.B();
        this.N.b();
        if (this.V && (bArr = this.U) != null) {
            this.U = com.d.a.a.e.b.f1458a;
            this.f1331b.a(bArr);
        }
    }

    @Override // com.d.a.a.a.c, com.d.a.a.k
    public String g() throws IOException {
        if (this.K == o.VALUE_STRING) {
            if (this.P) {
                this.P = false;
                return U();
            }
            return this.n.f();
        }
        return a(this.K);
    }

    protected final String a(o oVar) {
        if (oVar == null) {
            return null;
        }
        switch (oVar.a()) {
            case 5:
                return this.l.g();
            case 6:
            case 7:
            case 8:
                return this.n.f();
            default:
                return oVar.b();
        }
    }

    @Override // com.d.a.a.k
    public char[] h() throws IOException {
        if (this.K != null) {
            switch (this.K.a()) {
                case 5:
                    if (!this.p) {
                        String strG = this.l.g();
                        int length = strG.length();
                        if (this.o == null) {
                            this.o = this.f1331b.b(length);
                        } else if (this.o.length < length) {
                            this.o = new char[length];
                        }
                        strG.getChars(0, length, this.o, 0);
                        this.p = true;
                    }
                    return this.o;
                case 6:
                    if (this.P) {
                        this.P = false;
                        z();
                    }
                    break;
                case 7:
                case 8:
                    break;
                default:
                    return this.K.c();
            }
            return this.n.e();
        }
        return null;
    }

    @Override // com.d.a.a.k
    public int i() throws IOException {
        if (this.K == null) {
            return 0;
        }
        switch (this.K.a()) {
            case 5:
                return this.l.g().length();
            case 6:
                if (this.P) {
                    this.P = false;
                    z();
                }
                break;
            case 7:
            case 8:
                break;
            default:
                return this.K.c().length;
        }
        return this.n.c();
    }

    @Override // com.d.a.a.k
    public int j() throws IOException {
        if (this.K == null) {
            return 0;
        }
        switch (this.K.a()) {
            case 5:
            default:
                return 0;
            case 6:
                if (this.P) {
                    this.P = false;
                    z();
                }
                break;
            case 7:
            case 8:
                break;
        }
        return this.n.d();
    }

    @Override // com.d.a.a.a.b, com.d.a.a.k
    public byte[] a(com.d.a.a.a aVar) throws IOException {
        if (this.K != o.VALUE_STRING && (this.K != o.VALUE_EMBEDDED_OBJECT || this.r == null)) {
            d("Current token (" + this.K + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        }
        if (this.P) {
            try {
                this.r = b(aVar);
                this.P = false;
            } catch (IllegalArgumentException e2) {
                throw a("Failed to decode VALUE_STRING as base64 (" + aVar + "): " + e2.getMessage());
            }
        } else if (this.r == null) {
            com.d.a.a.e.b bVarE = E();
            a(g(), bVarE, aVar);
            this.r = bVarE.b();
        }
        return this.r;
    }

    @Override // com.d.a.a.a.c, com.d.a.a.k
    public o a() throws IOException {
        o oVarE;
        if (this.K == o.FIELD_NAME) {
            return Y();
        }
        this.A = 0;
        if (this.P) {
            V();
        }
        int iAc = ac();
        if (iAc < 0) {
            close();
            this.K = null;
            return null;
        }
        this.r = null;
        if (iAc == 93) {
            ak();
            if (!this.l.a()) {
                a(iAc, Category.SCHEME_SUFFIX);
            }
            this.l = this.l.i();
            o oVar = o.END_ARRAY;
            this.K = oVar;
            return oVar;
        }
        if (iAc == 125) {
            ak();
            if (!this.l.c()) {
                a(iAc, ']');
            }
            this.l = this.l.i();
            o oVar2 = o.END_OBJECT;
            this.K = oVar2;
            return oVar2;
        }
        if (this.l.j()) {
            if (iAc != 44) {
                b(iAc, "was expecting comma to separate " + this.l.d() + " entries");
            }
            iAc = aa();
        }
        if (!this.l.c()) {
            ak();
            return n(iAc);
        }
        al();
        this.l.a(f(iAc));
        this.K = o.FIELD_NAME;
        int iAe = ae();
        ak();
        if (iAe == 34) {
            this.P = true;
            this.m = o.VALUE_STRING;
            return this.K;
        }
        switch (iAe) {
            case 45:
                oVarE = R();
                break;
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                oVarE = e(iAe);
                break;
            case 91:
                oVarE = o.START_ARRAY;
                break;
            case 102:
                a("false", 1);
                oVarE = o.VALUE_FALSE;
                break;
            case 110:
                a("null", 1);
                oVarE = o.VALUE_NULL;
                break;
            case 116:
                a("true", 1);
                oVarE = o.VALUE_TRUE;
                break;
            case 123:
                oVarE = o.START_OBJECT;
                break;
            default:
                oVarE = i(iAe);
                break;
        }
        this.m = oVarE;
        return this.K;
    }

    private final o n(int i) throws IOException {
        if (i == 34) {
            this.P = true;
            o oVar = o.VALUE_STRING;
            this.K = oVar;
            return oVar;
        }
        switch (i) {
            case 45:
                o oVarR = R();
                this.K = oVarR;
                return oVarR;
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                o oVarE = e(i);
                this.K = oVarE;
                return oVarE;
            case 91:
                this.l = this.l.a(this.j, this.k);
                o oVar2 = o.START_ARRAY;
                this.K = oVar2;
                return oVar2;
            case 102:
                a("false", 1);
                o oVar3 = o.VALUE_FALSE;
                this.K = oVar3;
                return oVar3;
            case 110:
                a("null", 1);
                o oVar4 = o.VALUE_NULL;
                this.K = oVar4;
                return oVar4;
            case 116:
                a("true", 1);
                o oVar5 = o.VALUE_TRUE;
                this.K = oVar5;
                return oVar5;
            case 123:
                this.l = this.l.b(this.j, this.k);
                o oVar6 = o.START_OBJECT;
                this.K = oVar6;
                return oVar6;
            default:
                o oVarI = i(i);
                this.K = oVarI;
                return oVarI;
        }
    }

    private final o Y() {
        this.p = false;
        o oVar = this.m;
        this.m = null;
        if (oVar == o.START_ARRAY) {
            this.l = this.l.a(this.j, this.k);
        } else if (oVar == o.START_OBJECT) {
            this.l = this.l.b(this.j, this.k);
        }
        this.K = oVar;
        return oVar;
    }

    protected o e(int i) throws IOException {
        int i2;
        int i3 = 1;
        char[] cArrK = this.n.k();
        if (i == 48) {
            i = Z();
        }
        cArrK[0] = (char) i;
        int length = (this.f1333d + cArrK.length) - 1;
        if (length > this.f1334e) {
            length = this.f1334e;
            i2 = 1;
        } else {
            i2 = 1;
        }
        while (this.f1333d < length) {
            byte[] bArr = this.U;
            int i4 = this.f1333d;
            this.f1333d = i4 + 1;
            int i5 = bArr[i4] & UnsignedBytes.MAX_VALUE;
            if (i5 >= 48 && i5 <= 57) {
                cArrK[i3] = (char) i5;
                i3++;
                i2++;
            } else {
                if (i5 == 46 || i5 == 101 || i5 == 69) {
                    return a(cArrK, i3, i5, false, i2);
                }
                this.f1333d--;
                this.n.a(i3);
                if (this.l.b()) {
                    o(i5);
                }
                return a(false, i2);
            }
        }
        return a(cArrK, i3, false, i2);
    }

    protected o R() throws IOException {
        int i;
        char[] cArrK = this.n.k();
        cArrK[0] = '-';
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr = this.U;
        int i2 = this.f1333d;
        this.f1333d = i2 + 1;
        int iZ = bArr[i2] & UnsignedBytes.MAX_VALUE;
        if (iZ < 48 || iZ > 57) {
            return a(iZ, true);
        }
        if (iZ == 48) {
            iZ = Z();
        }
        int i3 = 2;
        cArrK[1] = (char) iZ;
        int length = (this.f1333d + cArrK.length) - 2;
        if (length > this.f1334e) {
            length = this.f1334e;
            i = 1;
        } else {
            i = 1;
        }
        while (this.f1333d < length) {
            byte[] bArr2 = this.U;
            int i4 = this.f1333d;
            this.f1333d = i4 + 1;
            int i5 = bArr2[i4] & UnsignedBytes.MAX_VALUE;
            if (i5 >= 48 && i5 <= 57) {
                i++;
                cArrK[i3] = (char) i5;
                i3++;
            } else {
                if (i5 == 46 || i5 == 101 || i5 == 69) {
                    return a(cArrK, i3, i5, true, i);
                }
                this.f1333d--;
                this.n.a(i3);
                if (this.l.b()) {
                    o(i5);
                }
                return a(true, i);
            }
        }
        return a(cArrK, i3, true, i);
    }

    private final o a(char[] cArr, int i, boolean z, int i2) throws IOException {
        int i3;
        int i4 = i2;
        int i5 = i;
        char[] cArrM = cArr;
        while (true) {
            if (this.f1333d >= this.f1334e && !y()) {
                this.n.a(i5);
                return a(z, i4);
            }
            byte[] bArr = this.U;
            int i6 = this.f1333d;
            this.f1333d = i6 + 1;
            i3 = bArr[i6] & UnsignedBytes.MAX_VALUE;
            if (i3 > 57 || i3 < 48) {
                break;
            }
            if (i5 >= cArrM.length) {
                cArrM = this.n.m();
                i5 = 0;
            }
            int i7 = i5;
            i5 = i7 + 1;
            cArrM[i7] = (char) i3;
            i4++;
        }
        if (i3 == 46 || i3 == 101 || i3 == 69) {
            return a(cArrM, i5, i3, z, i4);
        }
        this.f1333d--;
        this.n.a(i5);
        if (this.l.b()) {
            byte[] bArr2 = this.U;
            int i8 = this.f1333d;
            this.f1333d = i8 + 1;
            o(bArr2[i8] & UnsignedBytes.MAX_VALUE);
        }
        return a(z, i4);
    }

    private final int Z() throws IOException {
        if (this.f1333d >= this.f1334e && !y()) {
            return 48;
        }
        int i = this.U[this.f1333d] & UnsignedBytes.MAX_VALUE;
        if (i < 48 || i > 57) {
            return 48;
        }
        if (!a(l.ALLOW_NUMERIC_LEADING_ZEROS)) {
            b("Leading zeroes not allowed");
        }
        this.f1333d++;
        if (i == 48) {
            do {
                if (this.f1333d < this.f1334e || y()) {
                    i = this.U[this.f1333d] & UnsignedBytes.MAX_VALUE;
                    if (i < 48 || i > 57) {
                        return 48;
                    }
                    this.f1333d++;
                } else {
                    return i;
                }
            } while (i == 48);
            return i;
        }
        return i;
    }

    private final o a(char[] cArr, int i, int i2, boolean z, int i3) throws IOException {
        int i4;
        int i5;
        char[] cArrM;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        int i10;
        int i11;
        int i12 = 0;
        boolean z3 = false;
        if (i2 != 46) {
            i4 = 0;
            i5 = i2;
            cArrM = cArr;
            i6 = i;
        } else {
            int i13 = i + 1;
            cArr[i] = (char) i2;
            while (true) {
                if (this.f1333d >= this.f1334e && !y()) {
                    z3 = true;
                    i5 = i2;
                    break;
                }
                byte[] bArr = this.U;
                int i14 = this.f1333d;
                this.f1333d = i14 + 1;
                i2 = bArr[i14] & UnsignedBytes.MAX_VALUE;
                if (i2 < 48) {
                    i5 = i2;
                    break;
                }
                if (i2 > 57) {
                    i5 = i2;
                    break;
                }
                i12++;
                if (i13 >= cArr.length) {
                    cArr = this.n.m();
                    i13 = 0;
                }
                int i15 = i13;
                i13 = i15 + 1;
                cArr[i15] = (char) i2;
            }
            if (i12 == 0) {
                a(i5, "Decimal point not followed by a digit");
            }
            i4 = i12;
            i6 = i13;
            cArrM = cArr;
        }
        int i16 = 0;
        if (i5 != 101 && i5 != 69) {
            z2 = z3;
            i8 = i5;
            i10 = i6;
            i11 = 0;
        } else {
            if (i6 >= cArrM.length) {
                cArrM = this.n.m();
                i6 = 0;
            }
            int i17 = i6 + 1;
            cArrM[i6] = (char) i5;
            if (this.f1333d >= this.f1334e) {
                x();
            }
            byte[] bArr2 = this.U;
            int i18 = this.f1333d;
            this.f1333d = i18 + 1;
            int i19 = bArr2[i18] & UnsignedBytes.MAX_VALUE;
            if (i19 == 45 || i19 == 43) {
                if (i17 >= cArrM.length) {
                    cArrM = this.n.m();
                    i7 = 0;
                } else {
                    i7 = i17;
                }
                int i20 = i7 + 1;
                cArrM[i7] = (char) i19;
                if (this.f1333d >= this.f1334e) {
                    x();
                }
                byte[] bArr3 = this.U;
                int i21 = this.f1333d;
                this.f1333d = i21 + 1;
                i8 = bArr3[i21] & UnsignedBytes.MAX_VALUE;
                i9 = i20;
            } else {
                i9 = i17;
                i8 = i19;
            }
            while (i8 <= 57 && i8 >= 48) {
                i16++;
                if (i9 >= cArrM.length) {
                    cArrM = this.n.m();
                    i9 = 0;
                }
                int i22 = i9 + 1;
                cArrM[i9] = (char) i8;
                if (this.f1333d >= this.f1334e && !y()) {
                    i11 = i16;
                    z2 = true;
                    i10 = i22;
                    break;
                }
                byte[] bArr4 = this.U;
                int i23 = this.f1333d;
                this.f1333d = i23 + 1;
                i8 = bArr4[i23] & UnsignedBytes.MAX_VALUE;
                i9 = i22;
            }
            z2 = z3;
            int i24 = i16;
            i10 = i9;
            i11 = i24;
            if (i11 == 0) {
                a(i8, "Exponent indicator not followed by a digit");
            }
        }
        if (!z2) {
            this.f1333d--;
            if (this.l.b()) {
                o(i8);
            }
        }
        this.n.a(i10);
        return b(z, i3, i4, i11);
    }

    private final void o(int i) throws IOException {
        this.f1333d++;
        switch (i) {
            case 9:
            case 32:
                break;
            case 10:
                this.f1336g++;
                this.h = this.f1333d;
                break;
            case 13:
                X();
                break;
            default:
                b(i);
                break;
        }
    }

    protected final String f(int i) throws IOException {
        if (i != 34) {
            return h(i);
        }
        if (this.f1333d + 13 > this.f1334e) {
            return S();
        }
        byte[] bArr = this.U;
        int[] iArr = L;
        int i2 = this.f1333d;
        this.f1333d = i2 + 1;
        int i3 = bArr[i2] & UnsignedBytes.MAX_VALUE;
        if (iArr[i3] == 0) {
            int i4 = this.f1333d;
            this.f1333d = i4 + 1;
            int i5 = bArr[i4] & UnsignedBytes.MAX_VALUE;
            if (iArr[i5] == 0) {
                int i6 = (i3 << 8) | i5;
                int i7 = this.f1333d;
                this.f1333d = i7 + 1;
                int i8 = bArr[i7] & UnsignedBytes.MAX_VALUE;
                if (iArr[i8] == 0) {
                    int i9 = (i6 << 8) | i8;
                    int i10 = this.f1333d;
                    this.f1333d = i10 + 1;
                    int i11 = bArr[i10] & UnsignedBytes.MAX_VALUE;
                    if (iArr[i11] == 0) {
                        int i12 = (i9 << 8) | i11;
                        int i13 = this.f1333d;
                        this.f1333d = i13 + 1;
                        int i14 = bArr[i13] & UnsignedBytes.MAX_VALUE;
                        if (iArr[i14] == 0) {
                            this.X = i12;
                            return g(i14);
                        }
                        if (i14 == 34) {
                            return c(i12, 4);
                        }
                        return b(i12, i14, 4);
                    }
                    if (i11 == 34) {
                        return c(i9, 3);
                    }
                    return b(i9, i11, 3);
                }
                if (i8 == 34) {
                    return c(i6, 2);
                }
                return b(i6, i8, 2);
            }
            if (i5 == 34) {
                return c(i3, 1);
            }
            return b(i3, i5, 1);
        }
        if (i3 == 34) {
            return "";
        }
        return b(0, i3, 0);
    }

    protected final String g(int i) throws IOException {
        byte[] bArr = this.U;
        int[] iArr = L;
        int i2 = this.f1333d;
        this.f1333d = i2 + 1;
        int i3 = bArr[i2] & UnsignedBytes.MAX_VALUE;
        if (iArr[i3] != 0) {
            if (i3 == 34) {
                return c(this.X, i, 1);
            }
            return a(this.X, i, i3, 1);
        }
        int i4 = i3 | (i << 8);
        int i5 = this.f1333d;
        this.f1333d = i5 + 1;
        int i6 = bArr[i5] & UnsignedBytes.MAX_VALUE;
        if (iArr[i6] != 0) {
            if (i6 == 34) {
                return c(this.X, i4, 2);
            }
            return a(this.X, i4, i6, 2);
        }
        int i7 = (i4 << 8) | i6;
        int i8 = this.f1333d;
        this.f1333d = i8 + 1;
        int i9 = bArr[i8] & UnsignedBytes.MAX_VALUE;
        if (iArr[i9] != 0) {
            if (i9 == 34) {
                return c(this.X, i7, 3);
            }
            return a(this.X, i7, i9, 3);
        }
        int i10 = (i7 << 8) | i9;
        int i11 = this.f1333d;
        this.f1333d = i11 + 1;
        int i12 = bArr[i11] & UnsignedBytes.MAX_VALUE;
        if (iArr[i12] != 0) {
            if (i12 == 34) {
                return c(this.X, i10, 4);
            }
            return a(this.X, i10, i12, 4);
        }
        return a(i12, i10);
    }

    protected final String a(int i, int i2) throws IOException {
        byte[] bArr = this.U;
        int[] iArr = L;
        int i3 = this.f1333d;
        this.f1333d = i3 + 1;
        int i4 = bArr[i3] & UnsignedBytes.MAX_VALUE;
        if (iArr[i4] != 0) {
            if (i4 == 34) {
                return b(this.X, i2, i, 1);
            }
            return a(this.X, i2, i, i4, 1);
        }
        int i5 = (i << 8) | i4;
        int i6 = this.f1333d;
        this.f1333d = i6 + 1;
        int i7 = bArr[i6] & UnsignedBytes.MAX_VALUE;
        if (iArr[i7] != 0) {
            if (i7 == 34) {
                return b(this.X, i2, i5, 2);
            }
            return a(this.X, i2, i5, i7, 2);
        }
        int i8 = (i5 << 8) | i7;
        int i9 = this.f1333d;
        this.f1333d = i9 + 1;
        int i10 = bArr[i9] & UnsignedBytes.MAX_VALUE;
        if (iArr[i10] != 0) {
            if (i10 == 34) {
                return b(this.X, i2, i8, 3);
            }
            return a(this.X, i2, i8, i10, 3);
        }
        int i11 = (i8 << 8) | i10;
        int i12 = this.f1333d;
        this.f1333d = i12 + 1;
        int i13 = bArr[i12] & UnsignedBytes.MAX_VALUE;
        if (iArr[i13] != 0) {
            if (i13 == 34) {
                return b(this.X, i2, i11, 4);
            }
            return a(this.X, i2, i11, i13, 4);
        }
        return a(i13, i2, i11);
    }

    protected final String a(int i, int i2, int i3) throws IOException {
        this.O[0] = this.X;
        this.O[1] = i2;
        this.O[2] = i3;
        byte[] bArr = this.U;
        int[] iArr = L;
        int i4 = 3;
        int i5 = i;
        while (this.f1333d + 4 <= this.f1334e) {
            int i6 = this.f1333d;
            this.f1333d = i6 + 1;
            int i7 = bArr[i6] & UnsignedBytes.MAX_VALUE;
            if (iArr[i7] != 0) {
                if (i7 == 34) {
                    return a(this.O, i4, i5, 1);
                }
                return a(this.O, i4, i5, i7, 1);
            }
            int i8 = (i5 << 8) | i7;
            int i9 = this.f1333d;
            this.f1333d = i9 + 1;
            int i10 = bArr[i9] & UnsignedBytes.MAX_VALUE;
            if (iArr[i10] != 0) {
                if (i10 == 34) {
                    return a(this.O, i4, i8, 2);
                }
                return a(this.O, i4, i8, i10, 2);
            }
            int i11 = (i8 << 8) | i10;
            int i12 = this.f1333d;
            this.f1333d = i12 + 1;
            int i13 = bArr[i12] & UnsignedBytes.MAX_VALUE;
            if (iArr[i13] != 0) {
                if (i13 == 34) {
                    return a(this.O, i4, i11, 3);
                }
                return a(this.O, i4, i11, i13, 3);
            }
            int i14 = (i11 << 8) | i13;
            int i15 = this.f1333d;
            this.f1333d = i15 + 1;
            int i16 = bArr[i15] & UnsignedBytes.MAX_VALUE;
            if (iArr[i16] != 0) {
                if (i16 == 34) {
                    return a(this.O, i4, i14, 4);
                }
                return a(this.O, i4, i14, i16, 4);
            }
            if (i4 >= this.O.length) {
                this.O = a(this.O, i4);
            }
            this.O[i4] = i14;
            i4++;
            i5 = i16;
        }
        return a(this.O, i4, 0, i5, 0);
    }

    protected String S() throws IOException {
        if (this.f1333d >= this.f1334e && !y()) {
            c(": was expecting closing '\"' for name");
        }
        byte[] bArr = this.U;
        int i = this.f1333d;
        this.f1333d = i + 1;
        int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
        return i2 == 34 ? "" : a(this.O, 0, 0, i2, 0);
    }

    private final String b(int i, int i2, int i3) throws IOException {
        return a(this.O, 0, i, i2, i3);
    }

    private final String a(int i, int i2, int i3, int i4) throws IOException {
        this.O[0] = i;
        return a(this.O, 1, i2, i3, i4);
    }

    private final String a(int i, int i2, int i3, int i4, int i5) throws IOException {
        this.O[0] = i;
        this.O[1] = i2;
        return a(this.O, 2, i3, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00dd A[PHI: r13
  0x00dd: PHI (r13v2 int) = (r13v1 int), (r13v5 int) binds: [B:4:0x0006, B:20:0x003a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final java.lang.String a(int[] r10, int r11, int r12, int r13, int r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.h.a(int[], int, int, int, int):java.lang.String");
    }

    protected String h(int i) throws IOException {
        int[] iArrA;
        int i2;
        int i3;
        int i4;
        if (i == 39 && a(l.ALLOW_SINGLE_QUOTES)) {
            return T();
        }
        if (!a(l.ALLOW_UNQUOTED_FIELD_NAMES)) {
            b((char) j(i), "was expecting double-quote to start field name");
        }
        int[] iArrD = com.d.a.a.b.a.d();
        if (iArrD[i] != 0) {
            b(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i5 = 0;
        int i6 = 0;
        int i7 = i;
        int i8 = 0;
        int[] iArrA2 = this.O;
        while (true) {
            if (i5 < 4) {
                int i9 = i5 + 1;
                i3 = i7 | (i6 << 8);
                i4 = i8;
                iArrA = iArrA2;
                i2 = i9;
            } else {
                if (i8 >= iArrA2.length) {
                    iArrA2 = a(iArrA2, iArrA2.length);
                    this.O = iArrA2;
                }
                int i10 = i8 + 1;
                iArrA2[i8] = i6;
                iArrA = iArrA2;
                i2 = 1;
                i3 = i7;
                i4 = i10;
            }
            if (this.f1333d >= this.f1334e && !y()) {
                c(" in field name");
            }
            int i11 = this.U[this.f1333d] & UnsignedBytes.MAX_VALUE;
            if (iArrD[i11] != 0) {
                break;
            }
            this.f1333d++;
            i6 = i3;
            i5 = i2;
            iArrA2 = iArrA;
            i8 = i4;
            i7 = i11;
        }
        if (i2 > 0) {
            if (i4 >= iArrA.length) {
                iArrA = a(iArrA, iArrA.length);
                this.O = iArrA;
            }
            iArrA[i4] = i3;
            i4++;
        }
        String strA = this.N.a(iArrA, i4);
        return strA == null ? a(iArrA, i4, i2) : strA;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0120 A[PHI: r5
  0x0120: PHI (r5v2 int) = (r5v1 int), (r5v1 int), (r5v12 int) binds: [B:22:0x0057, B:24:0x005b, B:29:0x0069] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String T() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.h.T():java.lang.String");
    }

    private final String c(int i, int i2) throws j {
        int iD = d(i, i2);
        String strC = this.N.c(iD);
        if (strC == null) {
            this.O[0] = iD;
            return a(this.O, 1, i2);
        }
        return strC;
    }

    private final String c(int i, int i2, int i3) throws j {
        int iD = d(i2, i3);
        String strA = this.N.a(i, iD);
        if (strA == null) {
            this.O[0] = i;
            this.O[1] = iD;
            return a(this.O, 2, i3);
        }
        return strA;
    }

    private final String b(int i, int i2, int i3, int i4) throws j {
        int iD = d(i3, i4);
        String strA = this.N.a(i, i2, iD);
        if (strA == null) {
            int[] iArr = this.O;
            iArr[0] = i;
            iArr[1] = i2;
            iArr[2] = d(iD, i4);
            return a(iArr, 3, i4);
        }
        return strA;
    }

    private final String a(int[] iArr, int i, int i2, int i3) throws j {
        if (i >= iArr.length) {
            iArr = a(iArr, iArr.length);
            this.O = iArr;
        }
        int i4 = i + 1;
        iArr[i] = d(i2, i3);
        String strA = this.N.a(iArr, i4);
        if (strA == null) {
            return a(iArr, i4, i3);
        }
        return strA;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0115 A[PHI: r2 r3
  0x0115: PHI (r2v6 int) = (r2v5 int), (r2v17 int) binds: [B:8:0x0033, B:30:0x00a5] A[DONT_GENERATE, DONT_INLINE]
  0x0115: PHI (r3v4 int) = (r3v3 int), (r3v9 int) binds: [B:8:0x0033, B:30:0x00a5] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String a(int[] r12, int r13, int r14) throws com.d.a.a.j {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.h.a(int[], int, int):java.lang.String");
    }

    @Override // com.d.a.a.a.b
    protected void z() throws IOException {
        int i = this.f1333d;
        if (i >= this.f1334e) {
            x();
            i = this.f1333d;
        }
        char[] cArrK = this.n.k();
        int[] iArr = W;
        int iMin = Math.min(this.f1334e, cArrK.length + i);
        byte[] bArr = this.U;
        int i2 = i;
        int i3 = 0;
        while (true) {
            if (i2 >= iMin) {
                break;
            }
            int i4 = bArr[i2] & UnsignedBytes.MAX_VALUE;
            if (iArr[i4] != 0) {
                if (i4 == 34) {
                    this.f1333d = i2 + 1;
                    this.n.a(i3);
                    return;
                }
            } else {
                cArrK[i3] = (char) i4;
                i3++;
                i2++;
            }
        }
        this.f1333d = i2;
        a(cArrK, i3);
    }

    protected String U() throws IOException {
        int i = this.f1333d;
        if (i >= this.f1334e) {
            x();
            i = this.f1333d;
        }
        char[] cArrK = this.n.k();
        int[] iArr = W;
        int iMin = Math.min(this.f1334e, cArrK.length + i);
        byte[] bArr = this.U;
        int i2 = i;
        int i3 = 0;
        while (true) {
            if (i2 >= iMin) {
                break;
            }
            int i4 = bArr[i2] & UnsignedBytes.MAX_VALUE;
            if (iArr[i4] != 0) {
                if (i4 == 34) {
                    this.f1333d = i2 + 1;
                    return this.n.b(i3);
                }
            } else {
                cArrK[i3] = (char) i4;
                i3++;
                i2++;
            }
        }
        this.f1333d = i2;
        a(cArrK, i3);
        return this.n.f();
    }

    private final void a(char[] cArr, int i) throws IOException {
        int i2;
        int[] iArr = W;
        byte[] bArr = this.U;
        while (true) {
            int i3 = this.f1333d;
            if (i3 >= this.f1334e) {
                x();
                i3 = this.f1333d;
            }
            if (i >= cArr.length) {
                cArr = this.n.m();
                i = 0;
            }
            int iMin = Math.min(this.f1334e, (cArr.length - i) + i3);
            while (true) {
                if (i3 < iMin) {
                    int i4 = i3 + 1;
                    int iQ = bArr[i3] & UnsignedBytes.MAX_VALUE;
                    if (iArr[iQ] != 0) {
                        this.f1333d = i4;
                        if (iQ != 34) {
                            switch (iArr[iQ]) {
                                case 1:
                                    iQ = N();
                                    break;
                                case 2:
                                    iQ = p(iQ);
                                    break;
                                case 3:
                                    if (this.f1334e - this.f1333d >= 2) {
                                        iQ = r(iQ);
                                    } else {
                                        iQ = q(iQ);
                                    }
                                    break;
                                case 4:
                                    int iS = s(iQ);
                                    int i5 = i + 1;
                                    cArr[i] = (char) (55296 | (iS >> 10));
                                    if (i5 >= cArr.length) {
                                        cArr = this.n.m();
                                        i5 = 0;
                                    }
                                    i = i5;
                                    iQ = (iS & 1023) | 56320;
                                    break;
                                default:
                                    if (iQ < 32) {
                                        c(iQ, "string value");
                                    } else {
                                        k(iQ);
                                    }
                                    break;
                            }
                            if (i >= cArr.length) {
                                cArr = this.n.m();
                                i2 = 0;
                            } else {
                                i2 = i;
                            }
                            i = i2 + 1;
                            cArr[i2] = (char) iQ;
                        } else {
                            this.n.a(i);
                            return;
                        }
                    } else {
                        cArr[i] = (char) iQ;
                        i3 = i4;
                        i++;
                    }
                } else {
                    this.f1333d = i3;
                }
            }
        }
    }

    protected void V() throws IOException {
        this.P = false;
        int[] iArr = W;
        byte[] bArr = this.U;
        while (true) {
            int i = this.f1333d;
            int i2 = this.f1334e;
            if (i >= i2) {
                x();
                i = this.f1333d;
                i2 = this.f1334e;
            }
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    int i4 = bArr[i] & UnsignedBytes.MAX_VALUE;
                    if (iArr[i4] != 0) {
                        this.f1333d = i3;
                        if (i4 != 34) {
                            switch (iArr[i4]) {
                                case 1:
                                    N();
                                    break;
                                case 2:
                                    t(i4);
                                    break;
                                case 3:
                                    u(i4);
                                    break;
                                case 4:
                                    v(i4);
                                    break;
                                default:
                                    if (i4 < 32) {
                                        c(i4, "string value");
                                    } else {
                                        k(i4);
                                    }
                                    break;
                            }
                        } else {
                            return;
                        }
                    } else {
                        i = i3;
                    }
                } else {
                    this.f1333d = i;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.d.a.a.o i(int r5) throws java.io.IOException {
        /*
            r4 = this;
            r1 = 1
            switch(r5) {
                case 39: goto L33;
                case 43: goto L7e;
                case 73: goto L5f;
                case 78: goto L40;
                case 93: goto L2d;
                case 125: goto L2d;
                default: goto L4;
            }
        L4:
            boolean r0 = java.lang.Character.isJavaIdentifierStart(r5)
            if (r0 == 0) goto L25
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = ""
            java.lang.StringBuilder r0 = r0.append(r1)
            char r1 = (char) r5
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "('true', 'false' or 'null')"
            r4.a(r0, r1)
        L25:
            java.lang.String r0 = "expected a valid value (number, String, array, object, 'true', 'false' or 'null')"
            r4.b(r5, r0)
            r0 = 0
        L2c:
            return r0
        L2d:
            java.lang.String r0 = "expected a value"
            r4.b(r5, r0)
        L33:
            com.d.a.a.l r0 = com.d.a.a.l.ALLOW_SINGLE_QUOTES
            boolean r0 = r4.a(r0)
            if (r0 == 0) goto L4
            com.d.a.a.o r0 = r4.W()
            goto L2c
        L40:
            java.lang.String r0 = "NaN"
            r4.a(r0, r1)
            com.d.a.a.l r0 = com.d.a.a.l.ALLOW_NON_NUMERIC_NUMBERS
            boolean r0 = r4.a(r0)
            if (r0 == 0) goto L58
            java.lang.String r0 = "NaN"
            r2 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            com.d.a.a.o r0 = r4.a(r0, r2)
            goto L2c
        L58:
            java.lang.String r0 = "Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r4.d(r0)
            goto L4
        L5f:
            java.lang.String r0 = "Infinity"
            r4.a(r0, r1)
            com.d.a.a.l r0 = com.d.a.a.l.ALLOW_NON_NUMERIC_NUMBERS
            boolean r0 = r4.a(r0)
            if (r0 == 0) goto L77
            java.lang.String r0 = "Infinity"
            r2 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            com.d.a.a.o r0 = r4.a(r0, r2)
            goto L2c
        L77:
            java.lang.String r0 = "Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r4.d(r0)
            goto L4
        L7e:
            int r0 = r4.f1333d
            int r1 = r4.f1334e
            if (r0 < r1) goto L8d
            boolean r0 = r4.y()
            if (r0 != 0) goto L8d
            r4.P()
        L8d:
            byte[] r0 = r4.U
            int r1 = r4.f1333d
            int r2 = r1 + 1
            r4.f1333d = r2
            r0 = r0[r1]
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 0
            com.d.a.a.o r0 = r4.a(r0, r1)
            goto L2c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.h.i(int):com.d.a.a.o");
    }

    protected o W() throws IOException {
        int iQ;
        int i;
        char[] cArrK = this.n.k();
        int[] iArr = W;
        byte[] bArr = this.U;
        int i2 = 0;
        while (true) {
            if (this.f1333d >= this.f1334e) {
                x();
            }
            if (i2 >= cArrK.length) {
                cArrK = this.n.m();
                i2 = 0;
            }
            int i3 = this.f1334e;
            int length = this.f1333d + (cArrK.length - i2);
            if (length >= i3) {
                length = i3;
            }
            while (this.f1333d < length) {
                int i4 = this.f1333d;
                this.f1333d = i4 + 1;
                int i5 = bArr[i4] & UnsignedBytes.MAX_VALUE;
                if (i5 != 39 && iArr[i5] == 0) {
                    cArrK[i2] = (char) i5;
                    i2++;
                } else if (i5 != 39) {
                    switch (iArr[i5]) {
                        case 1:
                            iQ = i5 == 39 ? i5 : N();
                            break;
                        case 2:
                            iQ = p(i5);
                            break;
                        case 3:
                            if (this.f1334e - this.f1333d >= 2) {
                                iQ = r(i5);
                            } else {
                                iQ = q(i5);
                            }
                            break;
                        case 4:
                            int iS = s(i5);
                            int i6 = i2 + 1;
                            cArrK[i2] = (char) (55296 | (iS >> 10));
                            if (i6 >= cArrK.length) {
                                cArrK = this.n.m();
                                i2 = 0;
                            } else {
                                i2 = i6;
                            }
                            iQ = 56320 | (iS & 1023);
                            break;
                        default:
                            if (i5 < 32) {
                                c(i5, "string value");
                            }
                            k(i5);
                            break;
                    }
                    if (i2 >= cArrK.length) {
                        cArrK = this.n.m();
                        i = 0;
                    } else {
                        i = i2;
                    }
                    i2 = i + 1;
                    cArrK[i] = (char) iQ;
                } else {
                    this.n.a(i2);
                    return o.VALUE_STRING;
                }
            }
        }
    }

    protected o a(int i, boolean z) throws IOException {
        String str;
        int i2 = i;
        while (true) {
            if (i2 != 73) {
                break;
            }
            if (this.f1333d >= this.f1334e && !y()) {
                P();
            }
            byte[] bArr = this.U;
            int i3 = this.f1333d;
            this.f1333d = i3 + 1;
            byte b2 = bArr[i3];
            if (b2 == 78) {
                str = z ? "-INF" : "+INF";
            } else {
                if (b2 != 110) {
                    i2 = b2;
                    break;
                }
                str = z ? "-Infinity" : "+Infinity";
            }
            a(str, 3);
            if (a(l.ALLOW_NON_NUMERIC_NUMBERS)) {
                return a(str, z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            d("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            i2 = b2;
        }
        a(i2, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    protected final void a(String str, int i) throws IOException {
        int length = str.length();
        if (this.f1333d + length >= this.f1334e) {
            b(str, i);
            return;
        }
        do {
            if (this.U[this.f1333d] != str.charAt(i)) {
                e(str.substring(0, i));
            }
            this.f1333d++;
            i++;
        } while (i < length);
        int i2 = this.U[this.f1333d] & UnsignedBytes.MAX_VALUE;
        if (i2 >= 48 && i2 != 93 && i2 != 125) {
            a(str, i, i2);
        }
    }

    private final void b(String str, int i) throws IOException {
        int i2;
        int length = str.length();
        do {
            if ((this.f1333d >= this.f1334e && !y()) || this.U[this.f1333d] != str.charAt(i)) {
                e(str.substring(0, i));
            }
            this.f1333d++;
            i++;
        } while (i < length);
        if ((this.f1333d < this.f1334e || y()) && (i2 = this.U[this.f1333d] & UnsignedBytes.MAX_VALUE) >= 48 && i2 != 93 && i2 != 125) {
            a(str, i, i2);
        }
    }

    private final void a(String str, int i, int i2) throws IOException {
        if (Character.isJavaIdentifierPart((char) j(i2))) {
            e(str.substring(0, i));
        }
    }

    private final int aa() throws IOException {
        while (this.f1333d < this.f1334e) {
            byte[] bArr = this.U;
            int i = this.f1333d;
            this.f1333d = i + 1;
            int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
            if (i2 > 32) {
                if (i2 == 47 || i2 == 35) {
                    this.f1333d--;
                    return ab();
                }
                return i2;
            }
            if (i2 != 32) {
                if (i2 == 10) {
                    this.f1336g++;
                    this.h = this.f1333d;
                } else if (i2 == 13) {
                    X();
                } else if (i2 != 9) {
                    c(i2);
                }
            }
        }
        return ab();
    }

    private final int ab() throws IOException {
        int i;
        while (true) {
            if (this.f1333d < this.f1334e || y()) {
                byte[] bArr = this.U;
                int i2 = this.f1333d;
                this.f1333d = i2 + 1;
                i = bArr[i2] & UnsignedBytes.MAX_VALUE;
                if (i > 32) {
                    if (i == 47) {
                        af();
                    } else if (i != 35 || !ah()) {
                        break;
                    }
                } else if (i != 32) {
                    if (i == 10) {
                        this.f1336g++;
                        this.h = this.f1333d;
                    } else if (i == 13) {
                        X();
                    } else if (i != 9) {
                        c(i);
                    }
                }
            } else {
                throw a("Unexpected end-of-input within/between " + this.l.d() + " entries");
            }
        }
        return i;
    }

    private final int ac() throws IOException {
        if (this.f1333d >= this.f1334e && !y()) {
            return D();
        }
        byte[] bArr = this.U;
        int i = this.f1333d;
        this.f1333d = i + 1;
        int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
        if (i2 > 32) {
            if (i2 == 47 || i2 == 35) {
                this.f1333d--;
                return ad();
            }
            return i2;
        }
        if (i2 != 32) {
            if (i2 == 10) {
                this.f1336g++;
                this.h = this.f1333d;
            } else if (i2 == 13) {
                X();
            } else if (i2 != 9) {
                c(i2);
            }
        }
        while (this.f1333d < this.f1334e) {
            byte[] bArr2 = this.U;
            int i3 = this.f1333d;
            this.f1333d = i3 + 1;
            int i4 = bArr2[i3] & UnsignedBytes.MAX_VALUE;
            if (i4 > 32) {
                if (i4 == 47 || i4 == 35) {
                    this.f1333d--;
                    return ad();
                }
                return i4;
            }
            if (i4 != 32) {
                if (i4 == 10) {
                    this.f1336g++;
                    this.h = this.f1333d;
                } else if (i4 == 13) {
                    X();
                } else if (i4 != 9) {
                    c(i4);
                }
            }
        }
        return ad();
    }

    private final int ad() throws IOException {
        while (true) {
            if (this.f1333d < this.f1334e || y()) {
                byte[] bArr = this.U;
                int i = this.f1333d;
                this.f1333d = i + 1;
                int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
                if (i2 > 32) {
                    if (i2 == 47) {
                        af();
                    } else if (i2 != 35 || !ah()) {
                        return i2;
                    }
                } else if (i2 != 32) {
                    if (i2 == 10) {
                        this.f1336g++;
                        this.h = this.f1333d;
                    } else if (i2 == 13) {
                        X();
                    } else if (i2 != 9) {
                        c(i2);
                    }
                }
            } else {
                return D();
            }
        }
    }

    private final int ae() throws IOException {
        if (this.f1333d + 4 >= this.f1334e) {
            return a(false);
        }
        byte b2 = this.U[this.f1333d];
        if (b2 == 58) {
            byte[] bArr = this.U;
            int i = this.f1333d + 1;
            this.f1333d = i;
            byte b3 = bArr[i];
            if (b3 > 32) {
                if (b3 == 47 || b3 == 35) {
                    return a(true);
                }
                this.f1333d++;
                return b3;
            }
            if (b3 == 32 || b3 == 9) {
                byte[] bArr2 = this.U;
                int i2 = this.f1333d + 1;
                this.f1333d = i2;
                byte b4 = bArr2[i2];
                if (b4 > 32) {
                    if (b4 == 47 || b4 == 35) {
                        return a(true);
                    }
                    this.f1333d++;
                    return b4;
                }
            }
            return a(true);
        }
        if (b2 == 32 || b2 == 9) {
            byte[] bArr3 = this.U;
            int i3 = this.f1333d + 1;
            this.f1333d = i3;
            b2 = bArr3[i3];
        }
        if (b2 == 58) {
            byte[] bArr4 = this.U;
            int i4 = this.f1333d + 1;
            this.f1333d = i4;
            byte b5 = bArr4[i4];
            if (b5 > 32) {
                if (b5 == 47 || b5 == 35) {
                    return a(true);
                }
                this.f1333d++;
                return b5;
            }
            if (b5 == 32 || b5 == 9) {
                byte[] bArr5 = this.U;
                int i5 = this.f1333d + 1;
                this.f1333d = i5;
                byte b6 = bArr5[i5];
                if (b6 > 32) {
                    if (b6 == 47 || b6 == 35) {
                        return a(true);
                    }
                    this.f1333d++;
                    return b6;
                }
            }
            return a(true);
        }
        return a(false);
    }

    private final int a(boolean z) throws IOException {
        while (true) {
            if (this.f1333d < this.f1334e || y()) {
                byte[] bArr = this.U;
                int i = this.f1333d;
                this.f1333d = i + 1;
                int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
                if (i2 > 32) {
                    if (i2 == 47) {
                        af();
                    } else if (i2 != 35 || !ah()) {
                        if (z) {
                            return i2;
                        }
                        if (i2 != 58) {
                            if (i2 < 32) {
                                c(i2);
                            }
                            b(i2, "was expecting a colon to separate field name and value");
                        }
                        z = true;
                    }
                } else if (i2 != 32) {
                    if (i2 == 10) {
                        this.f1336g++;
                        this.h = this.f1333d;
                    } else if (i2 == 13) {
                        X();
                    } else if (i2 != 9) {
                        c(i2);
                    }
                }
            } else {
                throw a("Unexpected end-of-input within/between " + this.l.d() + " entries");
            }
        }
    }

    private final void af() throws IOException {
        if (!a(l.ALLOW_COMMENTS)) {
            b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.f1333d >= this.f1334e && !y()) {
            c(" in a comment");
        }
        byte[] bArr = this.U;
        int i = this.f1333d;
        this.f1333d = i + 1;
        int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
        if (i2 == 47) {
            ai();
        } else if (i2 == 42) {
            ag();
        } else {
            b(i2, "was expecting either '*' or '/' for a comment");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        c(" in a comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void ag() throws java.io.IOException {
        /*
            r4 = this;
            int[] r0 = com.d.a.a.b.a.e()
        L4:
            int r1 = r4.f1333d
            int r2 = r4.f1334e
            if (r1 < r2) goto L10
            boolean r1 = r4.y()
            if (r1 == 0) goto L33
        L10:
            byte[] r1 = r4.U
            int r2 = r4.f1333d
            int r3 = r2 + 1
            r4.f1333d = r3
            r1 = r1[r2]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = r0[r1]
            if (r2 == 0) goto L4
            switch(r2) {
                case 2: goto L5a;
                case 3: goto L5e;
                case 4: goto L62;
                case 10: goto L4b;
                case 13: goto L56;
                case 42: goto L27;
                default: goto L23;
            }
        L23:
            r4.k(r1)
            goto L4
        L27:
            int r1 = r4.f1333d
            int r2 = r4.f1334e
            if (r1 < r2) goto L3a
            boolean r1 = r4.y()
            if (r1 != 0) goto L3a
        L33:
            java.lang.String r0 = " in a comment"
            r4.c(r0)
        L39:
            return
        L3a:
            byte[] r1 = r4.U
            int r2 = r4.f1333d
            r1 = r1[r2]
            r2 = 47
            if (r1 != r2) goto L4
            int r0 = r4.f1333d
            int r0 = r0 + 1
            r4.f1333d = r0
            goto L39
        L4b:
            int r1 = r4.f1336g
            int r1 = r1 + 1
            r4.f1336g = r1
            int r1 = r4.f1333d
            r4.h = r1
            goto L4
        L56:
            r4.X()
            goto L4
        L5a:
            r4.t(r1)
            goto L4
        L5e:
            r4.u(r1)
            goto L4
        L62:
            r4.v(r1)
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.h.ag():void");
    }

    private final boolean ah() throws IOException {
        if (!a(l.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        ai();
        return true;
    }

    private final void ai() throws IOException {
        int[] iArrE = com.d.a.a.b.a.e();
        while (true) {
            if (this.f1333d < this.f1334e || y()) {
                byte[] bArr = this.U;
                int i = this.f1333d;
                this.f1333d = i + 1;
                int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
                int i3 = iArrE[i2];
                if (i3 != 0) {
                    switch (i3) {
                        case 2:
                            t(i2);
                            break;
                        case 3:
                            u(i2);
                            break;
                        case 4:
                            v(i2);
                            break;
                        case 10:
                            this.f1336g++;
                            this.h = this.f1333d;
                            return;
                        case 13:
                            X();
                            return;
                        case 42:
                            break;
                        default:
                            if (i3 < 0) {
                                k(i2);
                            }
                            break;
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // com.d.a.a.a.b
    protected char N() throws IOException {
        if (this.f1333d >= this.f1334e && !y()) {
            c(" in character escape sequence");
        }
        byte[] bArr = this.U;
        int i = this.f1333d;
        this.f1333d = i + 1;
        byte b2 = bArr[i];
        switch (b2) {
            case 34:
            case 47:
            case 92:
                return (char) b2;
            case 98:
                return '\b';
            case 102:
                return '\f';
            case 110:
                return '\n';
            case 114:
                return CharUtils.CR;
            case 116:
                return '\t';
            case 117:
                int i2 = 0;
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this.f1333d >= this.f1334e && !y()) {
                        c(" in character escape sequence");
                    }
                    byte[] bArr2 = this.U;
                    int i4 = this.f1333d;
                    this.f1333d = i4 + 1;
                    byte b3 = bArr2[i4];
                    int iA = com.d.a.a.b.a.a(b3);
                    if (iA < 0) {
                        b(b3, "expected a hex-digit for character escape sequence");
                    }
                    i2 = (i2 << 4) | iA;
                }
                return (char) i2;
            default:
                return a((char) j(b2));
        }
    }

    protected int j(int i) throws IOException {
        int i2;
        char c2;
        int i3 = i & 255;
        if (i3 > 127) {
            if ((i3 & 224) == 192) {
                i2 = i3 & 31;
                c2 = 1;
            } else if ((i3 & 240) == 224) {
                i2 = i3 & 15;
                c2 = 2;
            } else if ((i3 & 248) == 240) {
                i2 = i3 & 7;
                c2 = 3;
            } else {
                l(i3 & 255);
                i2 = i3;
                c2 = 1;
            }
            int iAj = aj();
            if ((iAj & 192) != 128) {
                m(iAj & 255);
            }
            int i4 = (i2 << 6) | (iAj & 63);
            if (c2 <= 1) {
                return i4;
            }
            int iAj2 = aj();
            if ((iAj2 & 192) != 128) {
                m(iAj2 & 255);
            }
            int i5 = (iAj2 & 63) | (i4 << 6);
            if (c2 <= 2) {
                return i5;
            }
            int iAj3 = aj();
            if ((iAj3 & 192) != 128) {
                m(iAj3 & 255);
            }
            return (iAj3 & 63) | (i5 << 6);
        }
        return i3;
    }

    private final int p(int i) throws IOException {
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr = this.U;
        int i2 = this.f1333d;
        this.f1333d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            b(b2 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        return (b2 & 63) | ((i & 31) << 6);
    }

    private final int q(int i) throws IOException {
        if (this.f1333d >= this.f1334e) {
            x();
        }
        int i2 = i & 15;
        byte[] bArr = this.U;
        int i3 = this.f1333d;
        this.f1333d = i3 + 1;
        byte b2 = bArr[i3];
        if ((b2 & 192) != 128) {
            b(b2 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        int i4 = (i2 << 6) | (b2 & 63);
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr2 = this.U;
        int i5 = this.f1333d;
        this.f1333d = i5 + 1;
        byte b3 = bArr2[i5];
        if ((b3 & 192) != 128) {
            b(b3 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        return (i4 << 6) | (b3 & 63);
    }

    private final int r(int i) throws IOException {
        int i2 = i & 15;
        byte[] bArr = this.U;
        int i3 = this.f1333d;
        this.f1333d = i3 + 1;
        byte b2 = bArr[i3];
        if ((b2 & 192) != 128) {
            b(b2 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        int i4 = (i2 << 6) | (b2 & 63);
        byte[] bArr2 = this.U;
        int i5 = this.f1333d;
        this.f1333d = i5 + 1;
        byte b3 = bArr2[i5];
        if ((b3 & 192) != 128) {
            b(b3 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        return (i4 << 6) | (b3 & 63);
    }

    private final int s(int i) throws IOException {
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr = this.U;
        int i2 = this.f1333d;
        this.f1333d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            b(b2 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        int i3 = (b2 & 63) | ((i & 7) << 6);
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr2 = this.U;
        int i4 = this.f1333d;
        this.f1333d = i4 + 1;
        byte b3 = bArr2[i4];
        if ((b3 & 192) != 128) {
            b(b3 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        int i5 = (i3 << 6) | (b3 & 63);
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr3 = this.U;
        int i6 = this.f1333d;
        this.f1333d = i6 + 1;
        byte b4 = bArr3[i6];
        if ((b4 & 192) != 128) {
            b(b4 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        return ((i5 << 6) | (b4 & 63)) - 65536;
    }

    private final void t(int i) throws IOException {
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr = this.U;
        int i2 = this.f1333d;
        this.f1333d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            b(b2 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
    }

    private final void u(int i) throws IOException {
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr = this.U;
        int i2 = this.f1333d;
        this.f1333d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            b(b2 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr2 = this.U;
        int i3 = this.f1333d;
        this.f1333d = i3 + 1;
        byte b3 = bArr2[i3];
        if ((b3 & 192) != 128) {
            b(b3 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
    }

    private final void v(int i) throws IOException {
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr = this.U;
        int i2 = this.f1333d;
        this.f1333d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            b(b2 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr2 = this.U;
        int i3 = this.f1333d;
        this.f1333d = i3 + 1;
        byte b3 = bArr2[i3];
        if ((b3 & 192) != 128) {
            b(b3 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr3 = this.U;
        int i4 = this.f1333d;
        this.f1333d = i4 + 1;
        byte b4 = bArr3[i4];
        if ((b4 & 192) != 128) {
            b(b4 & UnsignedBytes.MAX_VALUE, this.f1333d);
        }
    }

    protected final void X() throws IOException {
        if ((this.f1333d < this.f1334e || y()) && this.U[this.f1333d] == 10) {
            this.f1333d++;
        }
        this.f1336g++;
        this.h = this.f1333d;
    }

    private int aj() throws IOException {
        if (this.f1333d >= this.f1334e) {
            x();
        }
        byte[] bArr = this.U;
        int i = this.f1333d;
        this.f1333d = i + 1;
        return bArr[i] & UnsignedBytes.MAX_VALUE;
    }

    protected void e(String str) throws IOException {
        a(str, "'null', 'true', 'false' or NaN");
    }

    protected void a(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.f1333d >= this.f1334e && !y()) {
                break;
            }
            byte[] bArr = this.U;
            int i = this.f1333d;
            this.f1333d = i + 1;
            char cJ = (char) j(bArr[i]);
            if (!Character.isJavaIdentifierPart(cJ)) {
                break;
            } else {
                sb.append(cJ);
            }
        }
        d("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }

    protected void k(int i) throws j {
        if (i < 32) {
            c(i);
        }
        l(i);
    }

    protected void l(int i) throws j {
        d("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }

    protected void m(int i) throws j {
        d("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    protected void b(int i, int i2) throws j {
        this.f1333d = i2;
        m(i);
    }

    public static int[] a(int[] iArr, int i) {
        return iArr == null ? new int[i] : Arrays.copyOf(iArr, iArr.length + i);
    }

    protected final byte[] b(com.d.a.a.a aVar) throws IOException {
        com.d.a.a.e.b bVarE = E();
        while (true) {
            if (this.f1333d >= this.f1334e) {
                x();
            }
            byte[] bArr = this.U;
            int i = this.f1333d;
            this.f1333d = i + 1;
            int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
            if (i2 > 32) {
                int iB = aVar.b(i2);
                if (iB < 0) {
                    if (i2 == 34) {
                        return bVarE.b();
                    }
                    iB = a(aVar, i2, 0);
                    if (iB < 0) {
                        continue;
                    }
                }
                if (this.f1333d >= this.f1334e) {
                    x();
                }
                byte[] bArr2 = this.U;
                int i3 = this.f1333d;
                this.f1333d = i3 + 1;
                int i4 = bArr2[i3] & UnsignedBytes.MAX_VALUE;
                int iB2 = aVar.b(i4);
                if (iB2 < 0) {
                    iB2 = a(aVar, i4, 1);
                }
                int i5 = iB2 | (iB << 6);
                if (this.f1333d >= this.f1334e) {
                    x();
                }
                byte[] bArr3 = this.U;
                int i6 = this.f1333d;
                this.f1333d = i6 + 1;
                int i7 = bArr3[i6] & UnsignedBytes.MAX_VALUE;
                int iB3 = aVar.b(i7);
                if (iB3 < 0) {
                    if (iB3 != -2) {
                        if (i7 == 34 && !aVar.a()) {
                            bVarE.a(i5 >> 4);
                            return bVarE.b();
                        }
                        iB3 = a(aVar, i7, 2);
                    }
                    if (iB3 == -2) {
                        if (this.f1333d >= this.f1334e) {
                            x();
                        }
                        byte[] bArr4 = this.U;
                        int i8 = this.f1333d;
                        this.f1333d = i8 + 1;
                        int i9 = bArr4[i8] & UnsignedBytes.MAX_VALUE;
                        if (!aVar.a(i9)) {
                            throw a(aVar, i9, 3, "expected padding character '" + aVar.b() + "'");
                        }
                        bVarE.a(i5 >> 4);
                    }
                }
                int i10 = (i5 << 6) | iB3;
                if (this.f1333d >= this.f1334e) {
                    x();
                }
                byte[] bArr5 = this.U;
                int i11 = this.f1333d;
                this.f1333d = i11 + 1;
                int i12 = bArr5[i11] & UnsignedBytes.MAX_VALUE;
                int iB4 = aVar.b(i12);
                if (iB4 < 0) {
                    if (iB4 != -2) {
                        if (i12 == 34 && !aVar.a()) {
                            bVarE.b(i10 >> 2);
                            return bVarE.b();
                        }
                        iB4 = a(aVar, i12, 3);
                    }
                    if (iB4 == -2) {
                        bVarE.b(i10 >> 2);
                    }
                }
                bVarE.c(iB4 | (i10 << 6));
            }
        }
    }

    @Override // com.d.a.a.a.b, com.d.a.a.k
    public com.d.a.a.i e() {
        Object objA = this.f1331b.a();
        return this.K == o.FIELD_NAME ? new com.d.a.a.i(objA, this.f1335f + ((long) (this.Q - 1)), -1L, this.R, this.S) : new com.d.a.a.i(objA, this.i - 1, -1L, this.j, this.k);
    }

    @Override // com.d.a.a.a.b, com.d.a.a.k
    public com.d.a.a.i f() {
        return new com.d.a.a.i(this.f1331b.a(), this.f1335f + ((long) this.f1333d), -1L, this.f1336g, (this.f1333d - this.h) + 1);
    }

    private final void ak() {
        this.j = this.f1336g;
        int i = this.f1333d;
        this.i = this.f1335f + ((long) i);
        this.k = i - this.h;
    }

    private final void al() {
        this.R = this.f1336g;
        int i = this.f1333d;
        this.Q = i;
        this.S = i - this.h;
    }

    private static final int d(int i, int i2) {
        return i2 == 4 ? i : i | ((-1) << (i2 << 3));
    }
}
