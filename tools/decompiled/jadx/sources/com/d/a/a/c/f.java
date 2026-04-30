package com.d.a.a.c;

import com.d.a.a.l;
import com.d.a.a.o;
import com.d.a.a.p;
import com.google.gdata.data.Category;
import java.io.IOException;
import java.io.Reader;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: compiled from: ReaderBasedJsonParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends com.d.a.a.a.b {
    protected static final int[] L = com.d.a.a.b.a.a();
    protected Reader M;
    protected char[] N;
    protected boolean O;
    protected p P;
    protected final com.d.a.a.d.c Q;
    protected final int R;
    protected boolean S;
    protected long T;
    protected int U;
    protected int V;

    public f(com.d.a.a.b.c cVar, int i, Reader reader, p pVar, com.d.a.a.d.c cVar2, char[] cArr, int i2, int i3, boolean z) {
        super(cVar, i);
        this.M = reader;
        this.N = cArr;
        this.f1333d = i2;
        this.f1334e = i3;
        this.P = pVar;
        this.Q = cVar2;
        this.R = cVar2.e();
        this.O = z;
    }

    public f(com.d.a.a.b.c cVar, int i, Reader reader, p pVar, com.d.a.a.d.c cVar2) {
        super(cVar, i);
        this.M = reader;
        this.N = cVar.g();
        this.f1333d = 0;
        this.f1334e = 0;
        this.P = pVar;
        this.Q = cVar2;
        this.R = cVar2.e();
        this.O = true;
    }

    @Override // com.d.a.a.a.b
    protected boolean y() throws IOException {
        int i = this.f1334e;
        this.f1335f += (long) i;
        this.h -= i;
        this.T -= (long) i;
        if (this.M == null) {
            return false;
        }
        int i2 = this.M.read(this.N, 0, this.N.length);
        if (i2 > 0) {
            this.f1333d = 0;
            this.f1334e = i2;
            return true;
        }
        A();
        if (i2 == 0) {
            throw new IOException("Reader returned 0 characters when trying to read " + this.f1334e);
        }
        return false;
    }

    protected char e(String str) throws IOException {
        if (this.f1333d >= this.f1334e && !y()) {
            c(str);
        }
        char[] cArr = this.N;
        int i = this.f1333d;
        this.f1333d = i + 1;
        return cArr[i];
    }

    @Override // com.d.a.a.a.b
    protected void A() throws IOException {
        if (this.M != null) {
            if (this.f1331b.c() || a(l.AUTO_CLOSE_SOURCE)) {
                this.M.close();
            }
            this.M = null;
        }
    }

    @Override // com.d.a.a.a.b
    protected void B() throws IOException {
        char[] cArr;
        super.B();
        this.Q.b();
        if (this.O && (cArr = this.N) != null) {
            this.N = null;
            this.f1331b.a(cArr);
        }
    }

    @Override // com.d.a.a.a.c, com.d.a.a.k
    public final String g() throws IOException {
        o oVar = this.K;
        if (oVar != o.VALUE_STRING) {
            return a(oVar);
        }
        if (this.S) {
            this.S = false;
            z();
        }
        return this.n.f();
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
    public final char[] h() throws IOException {
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
                    if (this.S) {
                        this.S = false;
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
    public final int i() throws IOException {
        if (this.K == null) {
            return 0;
        }
        switch (this.K.a()) {
            case 5:
                return this.l.g().length();
            case 6:
                if (this.S) {
                    this.S = false;
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
    public final int j() throws IOException {
        if (this.K == null) {
            return 0;
        }
        switch (this.K.a()) {
            case 5:
            default:
                return 0;
            case 6:
                if (this.S) {
                    this.S = false;
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
        if (this.S) {
            try {
                this.r = b(aVar);
                this.S = false;
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.d.a.a.a.c, com.d.a.a.k
    public final o a() throws IOException {
        o oVarE;
        if (this.K == o.FIELD_NAME) {
            return Y();
        }
        this.A = 0;
        if (this.S) {
            W();
        }
        int iAd = ad();
        if (iAd < 0) {
            close();
            this.K = null;
            return null;
        }
        this.r = null;
        if (iAd == 93) {
            am();
            if (!this.l.a()) {
                a(iAd, Category.SCHEME_SUFFIX);
            }
            this.l = this.l.i();
            o oVar = o.END_ARRAY;
            this.K = oVar;
            return oVar;
        }
        if (iAd == 125) {
            am();
            if (!this.l.c()) {
                a(iAd, ']');
            }
            this.l = this.l.i();
            o oVar2 = o.END_OBJECT;
            this.K = oVar2;
            return oVar2;
        }
        if (this.l.j()) {
            iAd = i(iAd);
        }
        boolean zC = this.l.c();
        if (zC) {
            an();
            this.l.a(iAd == 34 ? S() : f(iAd));
            this.K = o.FIELD_NAME;
            iAd = ab();
        }
        am();
        switch (iAd) {
            case 34:
                this.S = true;
                oVarE = o.VALUE_STRING;
                break;
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
                oVarE = e(iAd);
                break;
            case 91:
                if (!zC) {
                    this.l = this.l.a(this.j, this.k);
                }
                oVarE = o.START_ARRAY;
                break;
            case 93:
            case 125:
                b(iAd, "expected a value");
                aj();
                oVarE = o.VALUE_TRUE;
                break;
            case 102:
                ak();
                oVarE = o.VALUE_FALSE;
                break;
            case 110:
                al();
                oVarE = o.VALUE_NULL;
                break;
            case 116:
                aj();
                oVarE = o.VALUE_TRUE;
                break;
            case 123:
                if (!zC) {
                    this.l = this.l.b(this.j, this.k);
                }
                oVarE = o.START_OBJECT;
                break;
            default:
                oVarE = g(iAd);
                break;
        }
        if (zC) {
            this.m = oVarE;
            return this.K;
        }
        this.K = oVarE;
        return oVarE;
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

    protected final o e(int i) throws IOException {
        int i2 = this.f1333d;
        int i3 = i2 - 1;
        int i4 = this.f1334e;
        if (i == 48) {
            return b(false, i3);
        }
        int i5 = 1;
        int i6 = i2;
        while (i6 < i4) {
            int i7 = i6 + 1;
            char c2 = this.N[i6];
            if (c2 >= '0' && c2 <= '9') {
                i5++;
                i6 = i7;
            } else {
                if (c2 == '.' || c2 == 'e' || c2 == 'E') {
                    this.f1333d = i7;
                    return a(c2, i3, i7, false, i5);
                }
                int i8 = i7 - 1;
                this.f1333d = i8;
                if (this.l.b()) {
                    h(c2);
                }
                this.n.a(this.N, i3, i8 - i3);
                return a(false, i5);
            }
        }
        this.f1333d = i3;
        return b(false, i3);
    }

    private final o a(int i, int i2, int i3, boolean z, int i4) throws IOException {
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        int i9 = this.f1334e;
        if (i == 46) {
            int i10 = 0;
            int i11 = i3;
            while (i11 < i9) {
                int i12 = i11 + 1;
                char c2 = this.N[i11];
                if (c2 >= '0' && c2 <= '9') {
                    i10++;
                    i11 = i12;
                } else {
                    if (i10 == 0) {
                        a(c2, "Decimal point not followed by a digit");
                    }
                    i5 = i10;
                    i6 = i12;
                    i7 = c2;
                }
            }
            return b(z, i2);
        }
        i5 = 0;
        i6 = i3;
        i7 = i;
        if (i7 == 101 || i7 == 69) {
            if (i6 >= i9) {
                this.f1333d = i2;
                return b(z, i2);
            }
            int i13 = i6 + 1;
            char c3 = this.N[i6];
            if (c3 != '-' && c3 != '+') {
                i7 = c3;
                i6 = i13;
            } else {
                if (i13 >= i9) {
                    this.f1333d = i2;
                    return b(z, i2);
                }
                i6 = i13 + 1;
                i7 = this.N[i13];
            }
            while (i7 <= 57 && i7 >= 48) {
                i8++;
                if (i6 >= i9) {
                    this.f1333d = i2;
                    return b(z, i2);
                }
                i7 = this.N[i6];
                i6++;
            }
            if (i8 == 0) {
                a(i7, "Exponent indicator not followed by a digit");
            }
        }
        int i14 = i6 - 1;
        this.f1333d = i14;
        if (this.l.b()) {
            h(i7);
        }
        this.n.a(this.N, i2, i14 - i2);
        return b(z, i4, i5, i8);
    }

    protected final o R() throws IOException {
        int i = this.f1333d;
        int i2 = i - 1;
        int i3 = this.f1334e;
        if (i >= i3) {
            return b(true, i2);
        }
        int i4 = i + 1;
        char c2 = this.N[i];
        if (c2 > '9' || c2 < '0') {
            this.f1333d = i4;
            return a((int) c2, true);
        }
        if (c2 == '0') {
            return b(true, i2);
        }
        int i5 = 1;
        int i6 = i4;
        while (i6 < i3) {
            int i7 = i6 + 1;
            char c3 = this.N[i6];
            if (c3 >= '0' && c3 <= '9') {
                i5++;
                i6 = i7;
            } else {
                if (c3 == '.' || c3 == 'e' || c3 == 'E') {
                    this.f1333d = i7;
                    return a(c3, i2, i7, true, i5);
                }
                int i8 = i7 - 1;
                this.f1333d = i8;
                if (this.l.b()) {
                    h(c3);
                }
                this.n.a(this.N, i2, i8 - i2);
                return a(true, i5);
            }
        }
        return b(true, i2);
    }

    private final o b(boolean z, int i) throws IOException {
        int i2;
        char cE;
        int i3;
        int i4;
        char[] cArrM;
        char c2;
        int i5;
        int i6;
        boolean z2;
        char c3;
        char[] cArrM2;
        char cE2;
        int i7;
        char cE3;
        int i8;
        char c4;
        boolean z3;
        int i9;
        int i10;
        if (z) {
            i++;
        }
        this.f1333d = i;
        char[] cArrK = this.n.k();
        if (!z) {
            i2 = 0;
        } else {
            i2 = 1;
            cArrK[0] = '-';
        }
        int i11 = 0;
        if (this.f1333d < this.f1334e) {
            char[] cArr = this.N;
            int i12 = this.f1333d;
            this.f1333d = i12 + 1;
            cE = cArr[i12];
        } else {
            cE = e("No digit following minus sign");
        }
        if (cE == '0') {
            cE = Z();
        }
        boolean z4 = false;
        char c5 = cE;
        char[] cArrM3 = cArrK;
        char c6 = c5;
        while (c6 >= '0' && c6 <= '9') {
            i11++;
            if (i2 >= cArrM3.length) {
                cArrM3 = this.n.m();
                i2 = 0;
            }
            i4 = i2 + 1;
            cArrM3[i2] = c6;
            if (this.f1333d >= this.f1334e && !y()) {
                z4 = true;
                i3 = i11;
                cArrM = cArrM3;
                c2 = 0;
                break;
            }
            char[] cArr2 = this.N;
            int i13 = this.f1333d;
            this.f1333d = i13 + 1;
            c6 = cArr2[i13];
            i2 = i4;
        }
        i3 = i11;
        i4 = i2;
        cArrM = cArrM3;
        c2 = c6;
        if (i3 == 0) {
            return a(c2, z);
        }
        int i14 = 0;
        if (c2 != '.') {
            i5 = 0;
            i6 = i4;
            z2 = z4;
            c3 = c2;
            cArrM2 = cArrM;
        } else {
            int i15 = i4 + 1;
            cArrM[i4] = c2;
            while (true) {
                if (this.f1333d >= this.f1334e && !y()) {
                    z2 = true;
                    c3 = c2;
                    break;
                }
                char[] cArr3 = this.N;
                int i16 = this.f1333d;
                this.f1333d = i16 + 1;
                c2 = cArr3[i16];
                if (c2 < '0') {
                    z2 = z4;
                    c3 = c2;
                    break;
                }
                if (c2 > '9') {
                    z2 = z4;
                    c3 = c2;
                    break;
                }
                i14++;
                if (i15 >= cArrM.length) {
                    cArrM = this.n.m();
                    i15 = 0;
                }
                int i17 = i15;
                i15 = i17 + 1;
                cArrM[i17] = c2;
            }
            if (i14 == 0) {
                a(c3, "Decimal point not followed by a digit");
            }
            i5 = i14;
            cArrM2 = cArrM;
            i6 = i15;
        }
        int i18 = 0;
        if (c3 != 'e' && c3 != 'E') {
            z3 = z2;
            c4 = c3;
            i9 = i6;
            i10 = 0;
        } else {
            if (i6 >= cArrM2.length) {
                cArrM2 = this.n.m();
                i6 = 0;
            }
            int i19 = i6 + 1;
            cArrM2[i6] = c3;
            if (this.f1333d < this.f1334e) {
                char[] cArr4 = this.N;
                int i20 = this.f1333d;
                this.f1333d = i20 + 1;
                cE2 = cArr4[i20];
            } else {
                cE2 = e("expected a digit for number exponent");
            }
            if (cE2 == '-' || cE2 == '+') {
                if (i19 >= cArrM2.length) {
                    cArrM2 = this.n.m();
                    i7 = 0;
                } else {
                    i7 = i19;
                }
                int i21 = i7 + 1;
                cArrM2[i7] = cE2;
                if (this.f1333d < this.f1334e) {
                    char[] cArr5 = this.N;
                    int i22 = this.f1333d;
                    this.f1333d = i22 + 1;
                    cE3 = cArr5[i22];
                } else {
                    cE3 = e("expected a digit for number exponent");
                }
                char c7 = cE3;
                i8 = i21;
                c4 = c7;
            } else {
                i8 = i19;
                c4 = cE2;
            }
            while (c4 <= '9' && c4 >= '0') {
                i18++;
                if (i8 >= cArrM2.length) {
                    cArrM2 = this.n.m();
                    i8 = 0;
                }
                int i23 = i8 + 1;
                cArrM2[i8] = c4;
                if (this.f1333d >= this.f1334e && !y()) {
                    i10 = i18;
                    z3 = true;
                    i9 = i23;
                    break;
                }
                char[] cArr6 = this.N;
                int i24 = this.f1333d;
                this.f1333d = i24 + 1;
                c4 = cArr6[i24];
                i8 = i23;
            }
            z3 = z2;
            int i25 = i18;
            i9 = i8;
            i10 = i25;
            if (i10 == 0) {
                a(c4, "Exponent indicator not followed by a digit");
            }
        }
        if (!z3) {
            this.f1333d--;
            if (this.l.b()) {
                h(c4);
            }
        }
        this.n.a(i9);
        return a(z, i3, i5, i10);
    }

    private final char Z() throws IOException {
        char c2;
        if (this.f1333d >= this.f1334e || ((c2 = this.N[this.f1333d]) >= '0' && c2 <= '9')) {
            return aa();
        }
        return '0';
    }

    private char aa() throws IOException {
        if (this.f1333d >= this.f1334e && !y()) {
            return '0';
        }
        char c2 = this.N[this.f1333d];
        if (c2 < '0' || c2 > '9') {
            return '0';
        }
        if (!a(l.ALLOW_NUMERIC_LEADING_ZEROS)) {
            b("Leading zeroes not allowed");
        }
        this.f1333d++;
        if (c2 == '0') {
            do {
                if (this.f1333d < this.f1334e || y()) {
                    c2 = this.N[this.f1333d];
                    if (c2 < '0' || c2 > '9') {
                        return '0';
                    }
                    this.f1333d++;
                } else {
                    return c2;
                }
            } while (c2 == '0');
            return c2;
        }
        return c2;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ??, r9v1 ??, r9v2 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    protected com.d.a.a.o a(
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ??, r9v1 ??, r9v2 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r9v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:407)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    private final void h(int i) throws IOException {
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

    protected final String S() throws IOException {
        int i = this.f1333d;
        int i2 = this.R;
        int[] iArr = L;
        while (true) {
            if (i >= this.f1334e) {
                break;
            }
            char c2 = this.N[i];
            if (c2 < iArr.length && iArr[c2] != 0) {
                if (c2 == '\"') {
                    int i3 = this.f1333d;
                    this.f1333d = i + 1;
                    return this.Q.a(this.N, i3, i - i3, i2);
                }
            } else {
                i2 = (i2 * 33) + c2;
                i++;
            }
        }
        int i4 = this.f1333d;
        this.f1333d = i;
        return a(i4, i2, 34);
    }

    private String a(int i, int i2, int i3) throws IOException {
        this.n.a(this.N, i, this.f1333d - i);
        char[] cArrJ = this.n.j();
        int iL = this.n.l();
        while (true) {
            if (this.f1333d >= this.f1334e && !y()) {
                c(": was expecting closing '" + ((char) i3) + "' for name");
            }
            char[] cArr = this.N;
            int i4 = this.f1333d;
            this.f1333d = i4 + 1;
            char cN = cArr[i4];
            if (cN <= '\\') {
                if (cN == '\\') {
                    cN = N();
                } else if (cN <= i3) {
                    if (cN != i3) {
                        if (cN < ' ') {
                            c(cN, "name");
                        }
                    } else {
                        this.n.a(iL);
                        com.d.a.a.e.i iVar = this.n;
                        return this.Q.a(iVar.e(), iVar.d(), iVar.c(), i2);
                    }
                }
            }
            i2 = (i2 * 33) + cN;
            int i5 = iL + 1;
            cArrJ[iL] = cN;
            if (i5 >= cArrJ.length) {
                cArrJ = this.n.m();
                iL = 0;
            } else {
                iL = i5;
            }
        }
    }

    protected String f(int i) throws IOException {
        boolean zIsJavaIdentifierPart;
        if (i == 39 && a(l.ALLOW_SINGLE_QUOTES)) {
            return T();
        }
        if (!a(l.ALLOW_UNQUOTED_FIELD_NAMES)) {
            b(i, "was expecting double-quote to start field name");
        }
        int[] iArrC = com.d.a.a.b.a.c();
        int length = iArrC.length;
        if (i < length) {
            zIsJavaIdentifierPart = iArrC[i] == 0;
        } else {
            zIsJavaIdentifierPart = Character.isJavaIdentifierPart((char) i);
        }
        if (!zIsJavaIdentifierPart) {
            b(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i2 = this.f1333d;
        int i3 = this.R;
        int i4 = this.f1334e;
        if (i2 < i4) {
            do {
                char c2 = this.N[i2];
                if (c2 < length) {
                    if (iArrC[c2] != 0) {
                        int i5 = this.f1333d - 1;
                        this.f1333d = i2;
                        return this.Q.a(this.N, i5, i2 - i5, i3);
                    }
                } else if (!Character.isJavaIdentifierPart(c2)) {
                    int i6 = this.f1333d - 1;
                    this.f1333d = i2;
                    return this.Q.a(this.N, i6, i2 - i6, i3);
                }
                i3 = (i3 * 33) + c2;
                i2++;
            } while (i2 < i4);
        }
        int i7 = this.f1333d - 1;
        this.f1333d = i2;
        return a(i7, i3, iArrC);
    }

    protected String T() throws IOException {
        int i = this.f1333d;
        int i2 = this.R;
        int i3 = this.f1334e;
        if (i < i3) {
            int[] iArr = L;
            int length = iArr.length;
            do {
                char c2 = this.N[i];
                if (c2 == '\'') {
                    int i4 = this.f1333d;
                    this.f1333d = i + 1;
                    return this.Q.a(this.N, i4, i - i4, i2);
                }
                if (c2 < length && iArr[c2] != 0) {
                    break;
                }
                i2 = (i2 * 33) + c2;
                i++;
            } while (i < i3);
        }
        int i5 = this.f1333d;
        this.f1333d = i;
        return a(i5, i2, 39);
    }

    protected o g(int i) throws IOException {
        switch (i) {
            case 39:
                if (a(l.ALLOW_SINGLE_QUOTES)) {
                    return U();
                }
                break;
            case 43:
                if (this.f1333d >= this.f1334e && !y()) {
                    P();
                }
                char[] cArr = this.N;
                int i2 = this.f1333d;
                this.f1333d = i2 + 1;
                return a((int) cArr[i2], false);
            case 73:
                a("Infinity", 1);
                if (a(l.ALLOW_NON_NUMERIC_NUMBERS)) {
                    return a("Infinity", Double.POSITIVE_INFINITY);
                }
                d("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                break;
                break;
            case 78:
                a("NaN", 1);
                if (a(l.ALLOW_NON_NUMERIC_NUMBERS)) {
                    return a("NaN", Double.NaN);
                }
                d("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                break;
                break;
        }
        if (Character.isJavaIdentifierStart(i)) {
            a("" + ((char) i), "('true', 'false' or 'null')");
        }
        b(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    protected o U() throws IOException {
        char[] cArrK = this.n.k();
        int iL = this.n.l();
        while (true) {
            if (this.f1333d >= this.f1334e && !y()) {
                c(": was expecting closing quote for a string value");
            }
            char[] cArr = this.N;
            int i = this.f1333d;
            this.f1333d = i + 1;
            char cN = cArr[i];
            if (cN <= '\\') {
                if (cN == '\\') {
                    cN = N();
                } else if (cN <= '\'') {
                    if (cN != '\'') {
                        if (cN < ' ') {
                            c(cN, "string value");
                        }
                    } else {
                        this.n.a(iL);
                        return o.VALUE_STRING;
                    }
                }
            }
            if (iL >= cArrK.length) {
                cArrK = this.n.m();
                iL = 0;
            }
            int i2 = iL;
            iL = i2 + 1;
            cArrK[i2] = cN;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(int r6, int r7, int[] r8) throws java.io.IOException {
        /*
            r5 = this;
            com.d.a.a.e.i r0 = r5.n
            char[] r1 = r5.N
            int r2 = r5.f1333d
            int r2 = r2 - r6
            r0.a(r1, r6, r2)
            com.d.a.a.e.i r0 = r5.n
            char[] r1 = r0.j()
            com.d.a.a.e.i r0 = r5.n
            int r0 = r0.l()
            int r3 = r8.length
        L17:
            int r2 = r5.f1333d
            int r4 = r5.f1334e
            if (r2 < r4) goto L3d
            boolean r2 = r5.y()
            if (r2 != 0) goto L3d
        L23:
            com.d.a.a.e.i r1 = r5.n
            r1.a(r0)
            com.d.a.a.e.i r0 = r5.n
            char[] r1 = r0.e()
            int r2 = r0.d()
            int r0 = r0.c()
            com.d.a.a.d.c r3 = r5.Q
            java.lang.String r0 = r3.a(r1, r2, r0, r7)
            return r0
        L3d:
            char[] r2 = r5.N
            int r4 = r5.f1333d
            char r4 = r2[r4]
            if (r4 > r3) goto L62
            r2 = r8[r4]
            if (r2 != 0) goto L23
        L49:
            int r2 = r5.f1333d
            int r2 = r2 + 1
            r5.f1333d = r2
            int r2 = r7 * 33
            int r7 = r2 + r4
            int r2 = r0 + 1
            r1[r0] = r4
            int r0 = r1.length
            if (r2 < r0) goto L69
            com.d.a.a.e.i r0 = r5.n
            char[] r1 = r0.m()
            r0 = 0
            goto L17
        L62:
            boolean r2 = java.lang.Character.isJavaIdentifierPart(r4)
            if (r2 != 0) goto L49
            goto L23
        L69:
            r0 = r2
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.f.a(int, int, int[]):java.lang.String");
    }

    @Override // com.d.a.a.a.b
    protected final void z() throws IOException {
        int i = this.f1333d;
        int i2 = this.f1334e;
        if (i < i2) {
            int[] iArr = L;
            int length = iArr.length;
            while (true) {
                char c2 = this.N[i];
                if (c2 < length && iArr[c2] != 0) {
                    if (c2 == '\"') {
                        this.n.a(this.N, this.f1333d, i - this.f1333d);
                        this.f1333d = i + 1;
                        return;
                    }
                } else {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                }
            }
        }
        this.n.b(this.N, this.f1333d, i - this.f1333d);
        this.f1333d = i;
        V();
    }

    protected void V() throws IOException {
        char[] cArrJ = this.n.j();
        int iL = this.n.l();
        int[] iArr = L;
        int length = iArr.length;
        while (true) {
            if (this.f1333d >= this.f1334e && !y()) {
                c(": was expecting closing quote for a string value");
            }
            char[] cArr = this.N;
            int i = this.f1333d;
            this.f1333d = i + 1;
            char cN = cArr[i];
            if (cN < length && iArr[cN] != 0) {
                if (cN != '\"') {
                    if (cN == '\\') {
                        cN = N();
                    } else if (cN < ' ') {
                        c(cN, "string value");
                    }
                } else {
                    this.n.a(iL);
                    return;
                }
            }
            if (iL >= cArrJ.length) {
                cArrJ = this.n.m();
                iL = 0;
            }
            int i2 = iL;
            iL = i2 + 1;
            cArrJ[i2] = cN;
        }
    }

    protected final void W() throws IOException {
        this.S = false;
        int i = this.f1333d;
        int i2 = this.f1334e;
        char[] cArr = this.N;
        while (true) {
            if (i >= i2) {
                this.f1333d = i;
                if (!y()) {
                    c(": was expecting closing quote for a string value");
                }
                i = this.f1333d;
                i2 = this.f1334e;
            }
            int i3 = i + 1;
            char c2 = cArr[i];
            if (c2 <= '\\') {
                if (c2 == '\\') {
                    this.f1333d = i3;
                    N();
                    i = this.f1333d;
                    i2 = this.f1334e;
                } else if (c2 <= '\"') {
                    if (c2 == '\"') {
                        this.f1333d = i3;
                        return;
                    } else if (c2 < ' ') {
                        this.f1333d = i3;
                        c(c2, "string value");
                    }
                }
            }
            i = i3;
        }
    }

    protected final void X() throws IOException {
        if ((this.f1333d < this.f1334e || y()) && this.N[this.f1333d] == '\n') {
            this.f1333d++;
        }
        this.f1336g++;
        this.h = this.f1333d;
    }

    private final int ab() throws IOException {
        if (this.f1333d + 4 >= this.f1334e) {
            return a(false);
        }
        char c2 = this.N[this.f1333d];
        if (c2 == ':') {
            char[] cArr = this.N;
            int i = this.f1333d + 1;
            this.f1333d = i;
            char c3 = cArr[i];
            if (c3 > ' ') {
                if (c3 == '/' || c3 == '#') {
                    return a(true);
                }
                this.f1333d++;
                return c3;
            }
            if (c3 == ' ' || c3 == '\t') {
                char[] cArr2 = this.N;
                int i2 = this.f1333d + 1;
                this.f1333d = i2;
                char c4 = cArr2[i2];
                if (c4 > ' ') {
                    if (c4 == '/' || c4 == '#') {
                        return a(true);
                    }
                    this.f1333d++;
                    return c4;
                }
            }
            return a(true);
        }
        if (c2 == ' ' || c2 == '\t') {
            char[] cArr3 = this.N;
            int i3 = this.f1333d + 1;
            this.f1333d = i3;
            c2 = cArr3[i3];
        }
        if (c2 == ':') {
            char[] cArr4 = this.N;
            int i4 = this.f1333d + 1;
            this.f1333d = i4;
            char c5 = cArr4[i4];
            if (c5 > ' ') {
                if (c5 == '/' || c5 == '#') {
                    return a(true);
                }
                this.f1333d++;
                return c5;
            }
            if (c5 == ' ' || c5 == '\t') {
                char[] cArr5 = this.N;
                int i5 = this.f1333d + 1;
                this.f1333d = i5;
                char c6 = cArr5[i5];
                if (c6 > ' ') {
                    if (c6 == '/' || c6 == '#') {
                        return a(true);
                    }
                    this.f1333d++;
                    return c6;
                }
            }
            return a(true);
        }
        return a(false);
    }

    private final int a(boolean z) throws IOException {
        while (true) {
            if (this.f1333d >= this.f1334e) {
                x();
            }
            char[] cArr = this.N;
            int i = this.f1333d;
            this.f1333d = i + 1;
            char c2 = cArr[i];
            if (c2 > ' ') {
                if (c2 == '/') {
                    af();
                } else if (c2 != '#' || !ah()) {
                    if (z) {
                        return c2;
                    }
                    if (c2 != ':') {
                        if (c2 < ' ') {
                            c(c2);
                        }
                        b(c2, "was expecting a colon to separate field name and value");
                    }
                    z = true;
                }
            } else if (c2 < ' ') {
                if (c2 == '\n') {
                    this.f1336g++;
                    this.h = this.f1333d;
                } else if (c2 == '\r') {
                    X();
                } else if (c2 != '\t') {
                    c(c2);
                }
            }
        }
    }

    private final int i(int i) throws IOException {
        if (i != 44) {
            b(i, "was expecting comma to separate " + this.l.d() + " entries");
        }
        while (this.f1333d < this.f1334e) {
            char[] cArr = this.N;
            int i2 = this.f1333d;
            this.f1333d = i2 + 1;
            char c2 = cArr[i2];
            if (c2 > ' ') {
                if (c2 == '/' || c2 == '#') {
                    this.f1333d--;
                    return ac();
                }
                return c2;
            }
            if (c2 < ' ') {
                if (c2 == '\n') {
                    this.f1336g++;
                    this.h = this.f1333d;
                } else if (c2 == '\r') {
                    X();
                } else if (c2 != '\t') {
                    c(c2);
                }
            }
        }
        return ac();
    }

    private final int ac() throws IOException {
        char c2;
        while (true) {
            if (this.f1333d < this.f1334e || y()) {
                char[] cArr = this.N;
                int i = this.f1333d;
                this.f1333d = i + 1;
                c2 = cArr[i];
                if (c2 > ' ') {
                    if (c2 == '/') {
                        af();
                    } else if (c2 != '#' || !ah()) {
                        break;
                    }
                } else if (c2 < ' ') {
                    if (c2 == '\n') {
                        this.f1336g++;
                        this.h = this.f1333d;
                    } else if (c2 == '\r') {
                        X();
                    } else if (c2 != '\t') {
                        c(c2);
                    }
                }
            } else {
                throw a("Unexpected end-of-input within/between " + this.l.d() + " entries");
            }
        }
        return c2;
    }

    private final int ad() throws IOException {
        if (this.f1333d >= this.f1334e && !y()) {
            return D();
        }
        char[] cArr = this.N;
        int i = this.f1333d;
        this.f1333d = i + 1;
        char c2 = cArr[i];
        if (c2 > ' ') {
            if (c2 == '/' || c2 == '#') {
                this.f1333d--;
                return ae();
            }
            return c2;
        }
        if (c2 != ' ') {
            if (c2 == '\n') {
                this.f1336g++;
                this.h = this.f1333d;
            } else if (c2 == '\r') {
                X();
            } else if (c2 != '\t') {
                c(c2);
            }
        }
        while (this.f1333d < this.f1334e) {
            char[] cArr2 = this.N;
            int i2 = this.f1333d;
            this.f1333d = i2 + 1;
            char c3 = cArr2[i2];
            if (c3 > ' ') {
                if (c3 == '/' || c3 == '#') {
                    this.f1333d--;
                    return ae();
                }
                return c3;
            }
            if (c3 != ' ') {
                if (c3 == '\n') {
                    this.f1336g++;
                    this.h = this.f1333d;
                } else if (c3 == '\r') {
                    X();
                } else if (c3 != '\t') {
                    c(c3);
                }
            }
        }
        return ae();
    }

    private int ae() throws IOException {
        while (true) {
            if (this.f1333d >= this.f1334e && !y()) {
                return D();
            }
            char[] cArr = this.N;
            int i = this.f1333d;
            this.f1333d = i + 1;
            char c2 = cArr[i];
            if (c2 > ' ') {
                if (c2 == '/') {
                    af();
                } else if (c2 != '#' || !ah()) {
                    return c2;
                }
            } else if (c2 != ' ') {
                if (c2 == '\n') {
                    this.f1336g++;
                    this.h = this.f1333d;
                } else if (c2 == '\r') {
                    X();
                } else if (c2 != '\t') {
                    c(c2);
                }
            }
        }
    }

    private void af() throws IOException {
        if (!a(l.ALLOW_COMMENTS)) {
            b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.f1333d >= this.f1334e && !y()) {
            c(" in a comment");
        }
        char[] cArr = this.N;
        int i = this.f1333d;
        this.f1333d = i + 1;
        char c2 = cArr[i];
        if (c2 == '/') {
            ai();
        } else if (c2 == '*') {
            ag();
        } else {
            b(c2, "was expecting either '*' or '/' for a comment");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        c(" in a comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void ag() throws java.io.IOException {
        /*
            r4 = this;
            r3 = 42
        L2:
            int r0 = r4.f1333d
            int r1 = r4.f1334e
            if (r0 < r1) goto Le
            boolean r0 = r4.y()
            if (r0 == 0) goto L28
        Le:
            char[] r0 = r4.N
            int r1 = r4.f1333d
            int r2 = r1 + 1
            r4.f1333d = r2
            char r0 = r0[r1]
            if (r0 > r3) goto L2
            if (r0 != r3) goto L40
            int r0 = r4.f1333d
            int r1 = r4.f1334e
            if (r0 < r1) goto L2f
            boolean r0 = r4.y()
            if (r0 != 0) goto L2f
        L28:
            java.lang.String r0 = " in a comment"
            r4.c(r0)
        L2e:
            return
        L2f:
            char[] r0 = r4.N
            int r1 = r4.f1333d
            char r0 = r0[r1]
            r1 = 47
            if (r0 != r1) goto L2
            int r0 = r4.f1333d
            int r0 = r0 + 1
            r4.f1333d = r0
            goto L2e
        L40:
            r1 = 32
            if (r0 >= r1) goto L2
            r1 = 10
            if (r0 != r1) goto L53
            int r0 = r4.f1336g
            int r0 = r0 + 1
            r4.f1336g = r0
            int r0 = r4.f1333d
            r4.h = r0
            goto L2
        L53:
            r1 = 13
            if (r0 != r1) goto L5b
            r4.X()
            goto L2
        L5b:
            r1 = 9
            if (r0 == r1) goto L2
            r4.c(r0)
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.f.ag():void");
    }

    private boolean ah() throws IOException {
        if (!a(l.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        ai();
        return true;
    }

    private void ai() throws IOException {
        while (true) {
            if (this.f1333d < this.f1334e || y()) {
                char[] cArr = this.N;
                int i = this.f1333d;
                this.f1333d = i + 1;
                char c2 = cArr[i];
                if (c2 < ' ') {
                    if (c2 == '\n') {
                        this.f1336g++;
                        this.h = this.f1333d;
                        return;
                    } else if (c2 == '\r') {
                        X();
                        return;
                    } else if (c2 != '\t') {
                        c(c2);
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // com.d.a.a.a.b
    protected char N() throws IOException {
        int i = 0;
        if (this.f1333d >= this.f1334e && !y()) {
            c(" in character escape sequence");
        }
        char[] cArr = this.N;
        int i2 = this.f1333d;
        this.f1333d = i2 + 1;
        char c2 = cArr[i2];
        switch (c2) {
            case '\"':
            case '/':
            case '\\':
                return c2;
            case 'b':
                return '\b';
            case 'f':
                return '\f';
            case 'n':
                return '\n';
            case 'r':
                return CharUtils.CR;
            case 't':
                return '\t';
            case 'u':
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this.f1333d >= this.f1334e && !y()) {
                        c(" in character escape sequence");
                    }
                    char[] cArr2 = this.N;
                    int i4 = this.f1333d;
                    this.f1333d = i4 + 1;
                    char c3 = cArr2[i4];
                    int iA = com.d.a.a.b.a.a(c3);
                    if (iA < 0) {
                        b(c3, "expected a hex-digit for character escape sequence");
                    }
                    i = (i << 4) | iA;
                }
                return (char) i;
            default:
                return a(c2);
        }
    }

    private final void aj() throws IOException {
        int i;
        char c2;
        int i2 = this.f1333d;
        if (i2 + 3 < this.f1334e) {
            char[] cArr = this.N;
            if (cArr[i2] == 'r') {
                int i3 = i2 + 1;
                if (cArr[i3] == 'u') {
                    int i4 = i3 + 1;
                    if (cArr[i4] == 'e' && ((c2 = cArr[(i = i4 + 1)]) < '0' || c2 == ']' || c2 == '}')) {
                        this.f1333d = i;
                        return;
                    }
                }
            }
        }
        a("true", 1);
    }

    private final void ak() throws IOException {
        int i;
        char c2;
        int i2 = this.f1333d;
        if (i2 + 4 < this.f1334e) {
            char[] cArr = this.N;
            if (cArr[i2] == 'a') {
                int i3 = i2 + 1;
                if (cArr[i3] == 'l') {
                    int i4 = i3 + 1;
                    if (cArr[i4] == 's') {
                        int i5 = i4 + 1;
                        if (cArr[i5] == 'e' && ((c2 = cArr[(i = i5 + 1)]) < '0' || c2 == ']' || c2 == '}')) {
                            this.f1333d = i;
                            return;
                        }
                    }
                }
            }
        }
        a("false", 1);
    }

    private final void al() throws IOException {
        int i;
        char c2;
        int i2 = this.f1333d;
        if (i2 + 3 < this.f1334e) {
            char[] cArr = this.N;
            if (cArr[i2] == 'u') {
                int i3 = i2 + 1;
                if (cArr[i3] == 'l') {
                    int i4 = i3 + 1;
                    if (cArr[i4] == 'l' && ((c2 = cArr[(i = i4 + 1)]) < '0' || c2 == ']' || c2 == '}')) {
                        this.f1333d = i;
                        return;
                    }
                }
            }
        }
        a("null", 1);
    }

    protected final void a(String str, int i) throws IOException {
        char c2;
        int length = str.length();
        do {
            if (this.f1333d >= this.f1334e && !y()) {
                f(str.substring(0, i));
            }
            if (this.N[this.f1333d] != str.charAt(i)) {
                f(str.substring(0, i));
            }
            this.f1333d++;
            i++;
        } while (i < length);
        if ((this.f1333d < this.f1334e || y()) && (c2 = this.N[this.f1333d]) >= '0' && c2 != ']' && c2 != '}' && Character.isJavaIdentifierPart(c2)) {
            f(str.substring(0, i));
        }
    }

    protected byte[] b(com.d.a.a.a aVar) throws IOException {
        com.d.a.a.e.b bVarE = E();
        while (true) {
            if (this.f1333d >= this.f1334e) {
                x();
            }
            char[] cArr = this.N;
            int i = this.f1333d;
            this.f1333d = i + 1;
            char c2 = cArr[i];
            if (c2 > ' ') {
                int iB = aVar.b(c2);
                if (iB < 0) {
                    if (c2 == '\"') {
                        return bVarE.b();
                    }
                    iB = a(aVar, c2, 0);
                    if (iB < 0) {
                        continue;
                    }
                }
                if (this.f1333d >= this.f1334e) {
                    x();
                }
                char[] cArr2 = this.N;
                int i2 = this.f1333d;
                this.f1333d = i2 + 1;
                char c3 = cArr2[i2];
                int iB2 = aVar.b(c3);
                if (iB2 < 0) {
                    iB2 = a(aVar, c3, 1);
                }
                int i3 = iB2 | (iB << 6);
                if (this.f1333d >= this.f1334e) {
                    x();
                }
                char[] cArr3 = this.N;
                int i4 = this.f1333d;
                this.f1333d = i4 + 1;
                char c4 = cArr3[i4];
                int iB3 = aVar.b(c4);
                if (iB3 < 0) {
                    if (iB3 != -2) {
                        if (c4 == '\"' && !aVar.a()) {
                            bVarE.a(i3 >> 4);
                            return bVarE.b();
                        }
                        iB3 = a(aVar, c4, 2);
                    }
                    if (iB3 == -2) {
                        if (this.f1333d >= this.f1334e) {
                            x();
                        }
                        char[] cArr4 = this.N;
                        int i5 = this.f1333d;
                        this.f1333d = i5 + 1;
                        char c5 = cArr4[i5];
                        if (!aVar.a(c5)) {
                            throw a(aVar, c5, 3, "expected padding character '" + aVar.b() + "'");
                        }
                        bVarE.a(i3 >> 4);
                    }
                }
                int i6 = (i3 << 6) | iB3;
                if (this.f1333d >= this.f1334e) {
                    x();
                }
                char[] cArr5 = this.N;
                int i7 = this.f1333d;
                this.f1333d = i7 + 1;
                char c6 = cArr5[i7];
                int iB4 = aVar.b(c6);
                if (iB4 < 0) {
                    if (iB4 != -2) {
                        if (c6 == '\"' && !aVar.a()) {
                            bVarE.b(i6 >> 2);
                            return bVarE.b();
                        }
                        iB4 = a(aVar, c6, 3);
                    }
                    if (iB4 == -2) {
                        bVarE.b(i6 >> 2);
                    }
                }
                bVarE.c(iB4 | (i6 << 6));
            }
        }
    }

    @Override // com.d.a.a.a.b, com.d.a.a.k
    public com.d.a.a.i e() {
        Object objA = this.f1331b.a();
        return this.K == o.FIELD_NAME ? new com.d.a.a.i(objA, -1L, this.f1335f + (this.T - 1), this.U, this.V) : new com.d.a.a.i(objA, -1L, this.i - 1, this.j, this.k);
    }

    @Override // com.d.a.a.a.b, com.d.a.a.k
    public com.d.a.a.i f() {
        return new com.d.a.a.i(this.f1331b.a(), -1L, this.f1335f + ((long) this.f1333d), this.f1336g, (this.f1333d - this.h) + 1);
    }

    private final void am() {
        int i = this.f1333d;
        this.i = this.f1335f + ((long) i);
        this.j = this.f1336g;
        this.k = i - this.h;
    }

    private final void an() {
        int i = this.f1333d;
        this.T = i;
        this.U = this.f1336g;
        this.V = i - this.h;
    }

    protected void f(String str) throws IOException {
        a(str, "'null', 'true', 'false' or NaN");
    }

    protected void a(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.f1333d >= this.f1334e && !y()) {
                break;
            }
            char c2 = this.N[this.f1333d];
            if (!Character.isJavaIdentifierPart(c2)) {
                break;
            }
            this.f1333d++;
            sb.append(c2);
        }
        d("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }
}
