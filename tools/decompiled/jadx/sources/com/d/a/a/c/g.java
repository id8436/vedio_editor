package com.d.a.a.c;

import com.d.a.a.p;
import com.d.a.a.r;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.mortbay.jetty.HttpTokens;

/* JADX INFO: compiled from: UTF8JsonGenerator.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends c {
    private static final byte[] C = com.d.a.a.b.a.h();
    private static final byte[] D = {110, 117, 108, 108};
    private static final byte[] E = {116, 114, 117, 101};
    private static final byte[] F = {102, 97, 108, 115, 101};
    protected final int A;
    protected boolean B;
    protected final OutputStream u;
    protected byte[] v;
    protected int w;
    protected final int x;
    protected final int y;
    protected char[] z;

    public g(com.d.a.a.b.c cVar, int i, p pVar, OutputStream outputStream) {
        super(cVar, i, pVar);
        this.u = outputStream;
        this.B = true;
        this.v = cVar.f();
        this.x = this.v.length;
        this.y = this.x >> 3;
        this.z = cVar.h();
        this.A = this.z.length;
        if (a(com.d.a.a.h.ESCAPE_NON_ASCII)) {
            a(127);
        }
    }

    @Override // com.d.a.a.g
    public void a(String str) throws IOException {
        if (this.f1488a != null) {
            g(str);
            return;
        }
        int iA = this.l.a(str);
        if (iA == 4) {
            e("Can not write a field name, expecting a value");
        }
        if (iA == 1) {
            if (this.w >= this.x) {
                l();
            }
            byte[] bArr = this.v;
            int i = this.w;
            this.w = i + 1;
            bArr[i] = ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY;
        }
        if (this.t) {
            a(str, false);
            return;
        }
        int length = str.length();
        if (length > this.A) {
            a(str, true);
            return;
        }
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr2 = this.v;
        int i2 = this.w;
        this.w = i2 + 1;
        bArr2[i2] = 34;
        if (length <= this.y) {
            if (this.w + length > this.x) {
                l();
            }
            b(str, 0, length);
        } else {
            a(str, 0, length);
        }
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr3 = this.v;
        int i3 = this.w;
        this.w = i3 + 1;
        bArr3[i3] = 34;
    }

    @Override // com.d.a.a.g
    public final void c() throws IOException {
        f("start an array");
        this.l = this.l.g();
        if (this.f1488a != null) {
            this.f1488a.e(this);
            return;
        }
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr = this.v;
        int i = this.w;
        this.w = i + 1;
        bArr[i] = 91;
    }

    @Override // com.d.a.a.g
    public final void d() throws IOException {
        if (!this.l.a()) {
            e("Current context not an ARRAY but " + this.l.d());
        }
        if (this.f1488a != null) {
            this.f1488a.b(this, this.l.e());
        } else {
            if (this.w >= this.x) {
                l();
            }
            byte[] bArr = this.v;
            int i = this.w;
            this.w = i + 1;
            bArr[i] = 93;
        }
        this.l = this.l.i();
    }

    @Override // com.d.a.a.g
    public final void e() throws IOException {
        f("start an object");
        this.l = this.l.h();
        if (this.f1488a != null) {
            this.f1488a.b(this);
            return;
        }
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr = this.v;
        int i = this.w;
        this.w = i + 1;
        bArr[i] = 123;
    }

    @Override // com.d.a.a.g
    public final void f() throws IOException {
        if (!this.l.c()) {
            e("Current context not an object but " + this.l.d());
        }
        if (this.f1488a != null) {
            this.f1488a.a(this, this.l.e());
        } else {
            if (this.w >= this.x) {
                l();
            }
            byte[] bArr = this.v;
            int i = this.w;
            this.w = i + 1;
            bArr[i] = 125;
        }
        this.l = this.l.i();
    }

    protected final void g(String str) throws IOException {
        int iA = this.l.a(str);
        if (iA == 4) {
            e("Can not write a field name, expecting a value");
        }
        if (iA == 1) {
            this.f1488a.c(this);
        } else {
            this.f1488a.h(this);
        }
        if (this.t) {
            a(str, false);
            return;
        }
        int length = str.length();
        if (length > this.A) {
            a(str, true);
            return;
        }
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr = this.v;
        int i = this.w;
        this.w = i + 1;
        bArr[i] = 34;
        str.getChars(0, length, this.z, 0);
        if (length <= this.y) {
            if (this.w + length > this.x) {
                l();
            }
            d(this.z, 0, length);
        } else {
            c(this.z, 0, length);
        }
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr2 = this.v;
        int i2 = this.w;
        this.w = i2 + 1;
        bArr2[i2] = 34;
    }

    @Override // com.d.a.a.g
    public void b(String str) throws IOException {
        f("write a string");
        if (str == null) {
            m();
            return;
        }
        int length = str.length();
        if (length > this.y) {
            a(str, true);
            return;
        }
        if (this.w + length >= this.x) {
            l();
        }
        byte[] bArr = this.v;
        int i = this.w;
        this.w = i + 1;
        bArr[i] = 34;
        b(str, 0, length);
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr2 = this.v;
        int i2 = this.w;
        this.w = i2 + 1;
        bArr2[i2] = 34;
    }

    @Override // com.d.a.a.g
    public void c(String str) throws IOException {
        int length = str.length();
        int i = 0;
        while (length > 0) {
            char[] cArr = this.z;
            int length2 = cArr.length;
            if (length < length2) {
                length2 = length;
            }
            str.getChars(i, i + length2, cArr, 0);
            a(cArr, 0, length2);
            i += length2;
            length -= length2;
        }
    }

    @Override // com.d.a.a.g
    public void b(r rVar) throws IOException {
        byte[] bArrB = rVar.b();
        if (bArrB.length > 0) {
            b(bArrB);
        }
    }

    @Override // com.d.a.a.g
    public final void a(char[] cArr, int i, int i2) throws IOException {
        int i3 = i2 + i2 + i2;
        if (this.w + i3 > this.x) {
            if (this.x < i3) {
                b(cArr, i, i2);
                return;
            }
            l();
        }
        int i4 = i2 + i;
        int iA = i;
        while (iA < i4) {
            do {
                char c2 = cArr[iA];
                if (c2 <= 127) {
                    byte[] bArr = this.v;
                    int i5 = this.w;
                    this.w = i5 + 1;
                    bArr[i5] = (byte) c2;
                    iA++;
                } else {
                    int i6 = iA + 1;
                    char c3 = cArr[iA];
                    if (c3 < 2048) {
                        byte[] bArr2 = this.v;
                        int i7 = this.w;
                        this.w = i7 + 1;
                        bArr2[i7] = (byte) ((c3 >> 6) | 192);
                        byte[] bArr3 = this.v;
                        int i8 = this.w;
                        this.w = i8 + 1;
                        bArr3[i8] = (byte) ((c3 & '?') | 128);
                        iA = i6;
                    } else {
                        iA = a(c3, cArr, i6, i4);
                    }
                }
            } while (iA < i4);
            return;
        }
    }

    @Override // com.d.a.a.g
    public void a(char c2) throws IOException {
        if (this.w + 3 >= this.x) {
            l();
        }
        byte[] bArr = this.v;
        if (c2 <= 127) {
            int i = this.w;
            this.w = i + 1;
            bArr[i] = (byte) c2;
        } else {
            if (c2 < 2048) {
                int i2 = this.w;
                this.w = i2 + 1;
                bArr[i2] = (byte) ((c2 >> 6) | 192);
                int i3 = this.w;
                this.w = i3 + 1;
                bArr[i3] = (byte) ((c2 & '?') | 128);
                return;
            }
            a(c2, (char[]) null, 0, 0);
        }
    }

    private final void b(char[] cArr, int i, int i2) throws IOException {
        int i3 = this.x;
        byte[] bArr = this.v;
        int iA = i;
        while (iA < i2) {
            do {
                char c2 = cArr[iA];
                if (c2 < 128) {
                    if (this.w >= i3) {
                        l();
                    }
                    int i4 = this.w;
                    this.w = i4 + 1;
                    bArr[i4] = (byte) c2;
                    iA++;
                } else {
                    if (this.w + 3 >= this.x) {
                        l();
                    }
                    int i5 = iA + 1;
                    char c3 = cArr[iA];
                    if (c3 < 2048) {
                        int i6 = this.w;
                        this.w = i6 + 1;
                        bArr[i6] = (byte) ((c3 >> 6) | 192);
                        int i7 = this.w;
                        this.w = i7 + 1;
                        bArr[i7] = (byte) ((c3 & '?') | 128);
                        iA = i5;
                    } else {
                        iA = a(c3, cArr, i5, i2);
                    }
                }
            } while (iA < i2);
            return;
        }
    }

    @Override // com.d.a.a.g
    public void a(com.d.a.a.a aVar, byte[] bArr, int i, int i2) throws IOException {
        f("write a binary value");
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr2 = this.v;
        int i3 = this.w;
        this.w = i3 + 1;
        bArr2[i3] = 34;
        b(aVar, bArr, i, i + i2);
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr3 = this.v;
        int i4 = this.w;
        this.w = i4 + 1;
        bArr3[i4] = 34;
    }

    @Override // com.d.a.a.g
    public void c(int i) throws IOException {
        f("write a number");
        if (this.w + 11 >= this.x) {
            l();
        }
        if (this.k) {
            d(i);
        } else {
            this.w = com.d.a.a.b.h.a(i, this.v, this.w);
        }
    }

    private final void d(int i) throws IOException {
        if (this.w + 13 >= this.x) {
            l();
        }
        byte[] bArr = this.v;
        int i2 = this.w;
        this.w = i2 + 1;
        bArr[i2] = 34;
        this.w = com.d.a.a.b.h.a(i, this.v, this.w);
        byte[] bArr2 = this.v;
        int i3 = this.w;
        this.w = i3 + 1;
        bArr2[i3] = 34;
    }

    @Override // com.d.a.a.g
    public void a(long j) throws IOException {
        f("write a number");
        if (this.k) {
            b(j);
            return;
        }
        if (this.w + 21 >= this.x) {
            l();
        }
        this.w = com.d.a.a.b.h.a(j, this.v, this.w);
    }

    private final void b(long j) throws IOException {
        if (this.w + 23 >= this.x) {
            l();
        }
        byte[] bArr = this.v;
        int i = this.w;
        this.w = i + 1;
        bArr[i] = 34;
        this.w = com.d.a.a.b.h.a(j, this.v, this.w);
        byte[] bArr2 = this.v;
        int i2 = this.w;
        this.w = i2 + 1;
        bArr2[i2] = 34;
    }

    @Override // com.d.a.a.g
    public void a(BigInteger bigInteger) throws IOException {
        f("write a number");
        if (bigInteger == null) {
            m();
        } else if (this.k) {
            h(bigInteger.toString());
        } else {
            c(bigInteger.toString());
        }
    }

    @Override // com.d.a.a.g
    public void a(double d2) throws IOException {
        if (this.k || ((Double.isNaN(d2) || Double.isInfinite(d2)) && com.d.a.a.h.QUOTE_NON_NUMERIC_NUMBERS.a(this.j))) {
            b(String.valueOf(d2));
        } else {
            f("write a number");
            c(String.valueOf(d2));
        }
    }

    @Override // com.d.a.a.g
    public void a(float f2) throws IOException {
        if (this.k || ((Float.isNaN(f2) || Float.isInfinite(f2)) && com.d.a.a.h.QUOTE_NON_NUMERIC_NUMBERS.a(this.j))) {
            b(String.valueOf(f2));
        } else {
            f("write a number");
            c(String.valueOf(f2));
        }
    }

    @Override // com.d.a.a.g
    public void a(BigDecimal bigDecimal) throws IOException {
        f("write a number");
        if (bigDecimal == null) {
            m();
            return;
        }
        if (this.k) {
            h(com.d.a.a.h.WRITE_BIGDECIMAL_AS_PLAIN.a(this.j) ? bigDecimal.toPlainString() : bigDecimal.toString());
        } else if (com.d.a.a.h.WRITE_BIGDECIMAL_AS_PLAIN.a(this.j)) {
            c(bigDecimal.toPlainString());
        } else {
            c(bigDecimal.toString());
        }
    }

    @Override // com.d.a.a.g
    public void d(String str) throws IOException {
        f("write a number");
        if (this.k) {
            h(str);
        } else {
            c(str);
        }
    }

    private final void h(String str) throws IOException {
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr = this.v;
        int i = this.w;
        this.w = i + 1;
        bArr[i] = 34;
        c(str);
        if (this.w >= this.x) {
            l();
        }
        byte[] bArr2 = this.v;
        int i2 = this.w;
        this.w = i2 + 1;
        bArr2[i2] = 34;
    }

    @Override // com.d.a.a.g
    public void a(boolean z) throws IOException {
        f("write a boolean value");
        if (this.w + 5 >= this.x) {
            l();
        }
        byte[] bArr = z ? E : F;
        int length = bArr.length;
        System.arraycopy(bArr, 0, this.v, this.w, length);
        this.w += length;
    }

    @Override // com.d.a.a.g
    public void g() throws IOException {
        f("write a null");
        m();
    }

    @Override // com.d.a.a.a.a
    protected final void f(String str) throws IOException {
        byte b2;
        int iJ = this.l.j();
        if (iJ == 5) {
            e("Can not " + str + ", expecting field name");
        }
        if (this.f1488a == null) {
            switch (iJ) {
                case 1:
                    b2 = ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY;
                    break;
                case 2:
                    b2 = HttpTokens.COLON;
                    break;
                case 3:
                    if (this.s != null) {
                        byte[] bArrB = this.s.b();
                        if (bArrB.length > 0) {
                            b(bArrB);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
            if (this.w >= this.x) {
                l();
            }
            this.v[this.w] = b2;
            this.w++;
            return;
        }
        a(str, iJ);
    }

    protected final void a(String str, int i) throws IOException {
        switch (i) {
            case 0:
                if (this.l.a()) {
                    this.f1488a.g(this);
                } else if (this.l.c()) {
                    this.f1488a.h(this);
                }
                break;
            case 1:
                this.f1488a.f(this);
                break;
            case 2:
                this.f1488a.d(this);
                break;
            case 3:
                this.f1488a.a(this);
                break;
            default:
                h();
                break;
        }
    }

    @Override // com.d.a.a.g, java.io.Flushable
    public void flush() throws IOException {
        l();
        if (this.u != null && a(com.d.a.a.h.FLUSH_PASSED_TO_STREAM)) {
            this.u.flush();
        }
    }

    @Override // com.d.a.a.a.a, com.d.a.a.g, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this.v != null && a(com.d.a.a.h.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                e eVarI = i();
                if (eVarI.a()) {
                    d();
                } else if (!eVarI.c()) {
                    break;
                } else {
                    f();
                }
            }
        }
        l();
        this.w = 0;
        if (this.u != null) {
            if (this.o.c() || a(com.d.a.a.h.AUTO_CLOSE_TARGET)) {
                this.u.close();
            } else if (a(com.d.a.a.h.FLUSH_PASSED_TO_STREAM)) {
                this.u.flush();
            }
        }
        j();
    }

    @Override // com.d.a.a.a.a
    protected void j() {
        byte[] bArr = this.v;
        if (bArr != null && this.B) {
            this.v = null;
            this.o.b(bArr);
        }
        char[] cArr = this.z;
        if (cArr != null) {
            this.z = null;
            this.o.b(cArr);
        }
    }

    private final void b(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.w + length > this.x) {
            l();
            if (length > 512) {
                this.u.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this.v, this.w, length);
        this.w = length + this.w;
    }

    private final void a(String str, boolean z) throws IOException {
        if (z) {
            if (this.w >= this.x) {
                l();
            }
            byte[] bArr = this.v;
            int i = this.w;
            this.w = i + 1;
            bArr[i] = 34;
        }
        int length = str.length();
        int i2 = 0;
        while (length > 0) {
            int iMin = Math.min(this.y, length);
            if (this.w + iMin > this.x) {
                l();
            }
            b(str, i2, iMin);
            i2 += iMin;
            length -= iMin;
        }
        if (z) {
            if (this.w >= this.x) {
                l();
            }
            byte[] bArr2 = this.v;
            int i3 = this.w;
            this.w = i3 + 1;
            bArr2[i3] = 34;
        }
    }

    private final void c(char[] cArr, int i, int i2) throws IOException {
        do {
            int iMin = Math.min(this.y, i2);
            if (this.w + iMin > this.x) {
                l();
            }
            d(cArr, i, iMin);
            i += iMin;
            i2 -= iMin;
        } while (i2 > 0);
    }

    private final void a(String str, int i, int i2) throws IOException {
        do {
            int iMin = Math.min(this.y, i2);
            if (this.w + iMin > this.x) {
                l();
            }
            b(str, i, iMin);
            i += iMin;
            i2 -= iMin;
        } while (i2 > 0);
    }

    private final void d(char[] cArr, int i, int i2) throws IOException {
        int i3 = i2 + i;
        int i4 = this.w;
        byte[] bArr = this.v;
        int[] iArr = this.p;
        while (i < i3) {
            char c2 = cArr[i];
            if (c2 > 127 || iArr[c2] != 0) {
                break;
            }
            bArr[i4] = (byte) c2;
            i++;
            i4++;
        }
        this.w = i4;
        if (i < i3) {
            if (this.r != null) {
                g(cArr, i, i3);
            } else if (this.q == 0) {
                e(cArr, i, i3);
            } else {
                f(cArr, i, i3);
            }
        }
    }

    private final void b(String str, int i, int i2) throws IOException {
        int i3 = i2 + i;
        int i4 = this.w;
        byte[] bArr = this.v;
        int[] iArr = this.p;
        while (i < i3) {
            char cCharAt = str.charAt(i);
            if (cCharAt > 127 || iArr[cCharAt] != 0) {
                break;
            }
            bArr[i4] = (byte) cCharAt;
            i++;
            i4++;
        }
        this.w = i4;
        if (i < i3) {
            if (this.r != null) {
                e(str, i, i3);
            } else if (this.q == 0) {
                c(str, i, i3);
            } else {
                d(str, i, i3);
            }
        }
    }

    private final void e(char[] cArr, int i, int i2) throws IOException {
        if (this.w + ((i2 - i) * 6) > this.x) {
            l();
        }
        int iD = this.w;
        byte[] bArr = this.v;
        int[] iArr = this.p;
        while (i < i2) {
            int i3 = i + 1;
            char c2 = cArr[i];
            if (c2 <= 127) {
                if (iArr[c2] == 0) {
                    bArr[iD] = (byte) c2;
                    iD++;
                    i = i3;
                } else {
                    int i4 = iArr[c2];
                    if (i4 > 0) {
                        int i5 = iD + 1;
                        bArr[iD] = 92;
                        iD = i5 + 1;
                        bArr[i5] = (byte) i4;
                        i = i3;
                    } else {
                        iD = d(c2, iD);
                        i = i3;
                    }
                }
            } else {
                if (c2 <= 2047) {
                    int i6 = iD + 1;
                    bArr[iD] = (byte) ((c2 >> 6) | 192);
                    iD = i6 + 1;
                    bArr[i6] = (byte) ((c2 & '?') | 128);
                } else {
                    iD = c(c2, iD);
                }
                i = i3;
            }
        }
        this.w = iD;
    }

    private final void c(String str, int i, int i2) throws IOException {
        if (this.w + ((i2 - i) * 6) > this.x) {
            l();
        }
        int iD = this.w;
        byte[] bArr = this.v;
        int[] iArr = this.p;
        while (i < i2) {
            int i3 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt <= 127) {
                if (iArr[cCharAt] == 0) {
                    bArr[iD] = (byte) cCharAt;
                    iD++;
                    i = i3;
                } else {
                    int i4 = iArr[cCharAt];
                    if (i4 > 0) {
                        int i5 = iD + 1;
                        bArr[iD] = 92;
                        iD = i5 + 1;
                        bArr[i5] = (byte) i4;
                        i = i3;
                    } else {
                        iD = d(cCharAt, iD);
                        i = i3;
                    }
                }
            } else {
                if (cCharAt <= 2047) {
                    int i6 = iD + 1;
                    bArr[iD] = (byte) ((cCharAt >> 6) | 192);
                    iD = i6 + 1;
                    bArr[i6] = (byte) ((cCharAt & '?') | 128);
                } else {
                    iD = c(cCharAt, iD);
                }
                i = i3;
            }
        }
        this.w = iD;
    }

    private final void f(char[] cArr, int i, int i2) throws IOException {
        if (this.w + ((i2 - i) * 6) > this.x) {
            l();
        }
        int iD = this.w;
        byte[] bArr = this.v;
        int[] iArr = this.p;
        int i3 = this.q;
        while (i < i2) {
            int i4 = i + 1;
            char c2 = cArr[i];
            if (c2 <= 127) {
                if (iArr[c2] == 0) {
                    bArr[iD] = (byte) c2;
                    iD++;
                    i = i4;
                } else {
                    int i5 = iArr[c2];
                    if (i5 > 0) {
                        int i6 = iD + 1;
                        bArr[iD] = 92;
                        iD = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else {
                        iD = d(c2, iD);
                        i = i4;
                    }
                }
            } else if (c2 > i3) {
                iD = d(c2, iD);
                i = i4;
            } else {
                if (c2 <= 2047) {
                    int i7 = iD + 1;
                    bArr[iD] = (byte) ((c2 >> 6) | 192);
                    iD = i7 + 1;
                    bArr[i7] = (byte) ((c2 & '?') | 128);
                } else {
                    iD = c(c2, iD);
                }
                i = i4;
            }
        }
        this.w = iD;
    }

    private final void d(String str, int i, int i2) throws IOException {
        if (this.w + ((i2 - i) * 6) > this.x) {
            l();
        }
        int iD = this.w;
        byte[] bArr = this.v;
        int[] iArr = this.p;
        int i3 = this.q;
        while (i < i2) {
            int i4 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt <= 127) {
                if (iArr[cCharAt] == 0) {
                    bArr[iD] = (byte) cCharAt;
                    iD++;
                    i = i4;
                } else {
                    int i5 = iArr[cCharAt];
                    if (i5 > 0) {
                        int i6 = iD + 1;
                        bArr[iD] = 92;
                        iD = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else {
                        iD = d(cCharAt, iD);
                        i = i4;
                    }
                }
            } else if (cCharAt > i3) {
                iD = d(cCharAt, iD);
                i = i4;
            } else {
                if (cCharAt <= 2047) {
                    int i7 = iD + 1;
                    bArr[iD] = (byte) ((cCharAt >> 6) | 192);
                    iD = i7 + 1;
                    bArr[i7] = (byte) ((cCharAt & '?') | 128);
                } else {
                    iD = c(cCharAt, iD);
                }
                i = i4;
            }
        }
        this.w = iD;
    }

    private final void g(char[] cArr, int i, int i2) throws IOException {
        if (this.w + ((i2 - i) * 6) > this.x) {
            l();
        }
        int iA = this.w;
        byte[] bArr = this.v;
        int[] iArr = this.p;
        int i3 = this.q <= 0 ? 65535 : this.q;
        com.d.a.a.b.b bVar = this.r;
        while (i < i2) {
            int i4 = i + 1;
            char c2 = cArr[i];
            if (c2 <= 127) {
                if (iArr[c2] == 0) {
                    bArr[iA] = (byte) c2;
                    iA++;
                    i = i4;
                } else {
                    int i5 = iArr[c2];
                    if (i5 > 0) {
                        int i6 = iA + 1;
                        bArr[iA] = 92;
                        iA = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else if (i5 == -2) {
                        r rVarA = bVar.a(c2);
                        if (rVarA == null) {
                            e("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c2) + ", although was supposed to have one");
                        }
                        iA = a(bArr, iA, rVarA, i2 - i4);
                        i = i4;
                    } else {
                        iA = d(c2, iA);
                        i = i4;
                    }
                }
            } else if (c2 > i3) {
                iA = d(c2, iA);
                i = i4;
            } else {
                r rVarA2 = bVar.a(c2);
                if (rVarA2 != null) {
                    iA = a(bArr, iA, rVarA2, i2 - i4);
                    i = i4;
                } else {
                    if (c2 <= 2047) {
                        int i7 = iA + 1;
                        bArr[iA] = (byte) ((c2 >> 6) | 192);
                        iA = i7 + 1;
                        bArr[i7] = (byte) ((c2 & '?') | 128);
                    } else {
                        iA = c(c2, iA);
                    }
                    i = i4;
                }
            }
        }
        this.w = iA;
    }

    private final void e(String str, int i, int i2) throws IOException {
        if (this.w + ((i2 - i) * 6) > this.x) {
            l();
        }
        int iA = this.w;
        byte[] bArr = this.v;
        int[] iArr = this.p;
        int i3 = this.q <= 0 ? 65535 : this.q;
        com.d.a.a.b.b bVar = this.r;
        while (i < i2) {
            int i4 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt <= 127) {
                if (iArr[cCharAt] == 0) {
                    bArr[iA] = (byte) cCharAt;
                    iA++;
                    i = i4;
                } else {
                    int i5 = iArr[cCharAt];
                    if (i5 > 0) {
                        int i6 = iA + 1;
                        bArr[iA] = 92;
                        iA = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else if (i5 == -2) {
                        r rVarA = bVar.a(cCharAt);
                        if (rVarA == null) {
                            e("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(cCharAt) + ", although was supposed to have one");
                        }
                        iA = a(bArr, iA, rVarA, i2 - i4);
                        i = i4;
                    } else {
                        iA = d(cCharAt, iA);
                        i = i4;
                    }
                }
            } else if (cCharAt > i3) {
                iA = d(cCharAt, iA);
                i = i4;
            } else {
                r rVarA2 = bVar.a(cCharAt);
                if (rVarA2 != null) {
                    iA = a(bArr, iA, rVarA2, i2 - i4);
                    i = i4;
                } else {
                    if (cCharAt <= 2047) {
                        int i7 = iA + 1;
                        bArr[iA] = (byte) ((cCharAt >> 6) | 192);
                        iA = i7 + 1;
                        bArr[i7] = (byte) ((cCharAt & '?') | 128);
                    } else {
                        iA = c(cCharAt, iA);
                    }
                    i = i4;
                }
            }
        }
        this.w = iA;
    }

    private final int a(byte[] bArr, int i, r rVar, int i2) throws IOException {
        byte[] bArrB = rVar.b();
        int length = bArrB.length;
        if (length > 6) {
            return a(bArr, i, this.x, bArrB, i2);
        }
        System.arraycopy(bArrB, 0, bArr, i, length);
        return length + i;
    }

    private final int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IOException {
        int i4;
        int length = bArr2.length;
        if (i + length > i2) {
            this.w = i;
            l();
            int i5 = this.w;
            if (length > bArr.length) {
                this.u.write(bArr2, 0, length);
                return i5;
            }
            System.arraycopy(bArr2, 0, bArr, i5, length);
            i4 = i5 + length;
        } else {
            i4 = i;
        }
        if ((i3 * 6) + i4 > i2) {
            l();
            return this.w;
        }
        return i4;
    }

    protected final void b(com.d.a.a.a aVar, byte[] bArr, int i, int i2) throws IOException {
        int i3 = i2 - 3;
        int i4 = this.x - 6;
        int iC = aVar.c() >> 2;
        while (i <= i3) {
            if (this.w > i4) {
                l();
            }
            int i5 = i + 1;
            int i6 = bArr[i] << 8;
            int i7 = i5 + 1;
            i = i7 + 1;
            this.w = aVar.a((((bArr[i5] & UnsignedBytes.MAX_VALUE) | i6) << 8) | (bArr[i7] & UnsignedBytes.MAX_VALUE), this.v, this.w);
            iC--;
            if (iC <= 0) {
                byte[] bArr2 = this.v;
                int i8 = this.w;
                this.w = i8 + 1;
                bArr2[i8] = 92;
                byte[] bArr3 = this.v;
                int i9 = this.w;
                this.w = i9 + 1;
                bArr3[i9] = 110;
                iC = aVar.c() >> 2;
            }
        }
        int i10 = i2 - i;
        if (i10 > 0) {
            if (this.w > i4) {
                l();
            }
            int i11 = i + 1;
            int i12 = bArr[i] << Ascii.DLE;
            if (i10 == 2) {
                int i13 = i11 + 1;
                i12 |= (bArr[i11] & UnsignedBytes.MAX_VALUE) << 8;
            }
            this.w = aVar.a(i12, i10, this.v, this.w);
        }
    }

    private final int a(int i, char[] cArr, int i2, int i3) throws IOException {
        if (i >= 55296 && i <= 57343) {
            if (i2 >= i3 || cArr == null) {
                e("Split surrogate on writeRaw() input (last character)");
            }
            b(i, cArr[i2]);
            return i2 + 1;
        }
        byte[] bArr = this.v;
        int i4 = this.w;
        this.w = i4 + 1;
        bArr[i4] = (byte) ((i >> 12) | 224);
        int i5 = this.w;
        this.w = i5 + 1;
        bArr[i5] = (byte) (((i >> 6) & 63) | 128);
        int i6 = this.w;
        this.w = i6 + 1;
        bArr[i6] = (byte) ((i & 63) | 128);
        return i2;
    }

    protected final void b(int i, int i2) throws IOException {
        int iA = a(i, i2);
        if (this.w + 4 > this.x) {
            l();
        }
        byte[] bArr = this.v;
        int i3 = this.w;
        this.w = i3 + 1;
        bArr[i3] = (byte) ((iA >> 18) | 240);
        int i4 = this.w;
        this.w = i4 + 1;
        bArr[i4] = (byte) (((iA >> 12) & 63) | 128);
        int i5 = this.w;
        this.w = i5 + 1;
        bArr[i5] = (byte) (((iA >> 6) & 63) | 128);
        int i6 = this.w;
        this.w = i6 + 1;
        bArr[i6] = (byte) ((iA & 63) | 128);
    }

    private final int c(int i, int i2) throws IOException {
        byte[] bArr = this.v;
        if (i >= 55296 && i <= 57343) {
            int i3 = i2 + 1;
            bArr[i2] = 92;
            int i4 = i3 + 1;
            bArr[i3] = 117;
            int i5 = i4 + 1;
            bArr[i4] = C[(i >> 12) & 15];
            int i6 = i5 + 1;
            bArr[i5] = C[(i >> 8) & 15];
            int i7 = i6 + 1;
            bArr[i6] = C[(i >> 4) & 15];
            int i8 = i7 + 1;
            bArr[i7] = C[i & 15];
            return i8;
        }
        int i9 = i2 + 1;
        bArr[i2] = (byte) ((i >> 12) | 224);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (((i >> 6) & 63) | 128);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((i & 63) | 128);
        return i11;
    }

    private final void m() throws IOException {
        if (this.w + 4 >= this.x) {
            l();
        }
        System.arraycopy(D, 0, this.v, this.w, 4);
        this.w += 4;
    }

    private int d(int i, int i2) throws IOException {
        int i3;
        byte[] bArr = this.v;
        int i4 = i2 + 1;
        bArr[i2] = 92;
        int i5 = i4 + 1;
        bArr[i4] = 117;
        if (i > 255) {
            int i6 = (i >> 8) & 255;
            int i7 = i5 + 1;
            bArr[i5] = C[i6 >> 4];
            i3 = i7 + 1;
            bArr[i7] = C[i6 & 15];
            i &= 255;
        } else {
            int i8 = i5 + 1;
            bArr[i5] = 48;
            i3 = i8 + 1;
            bArr[i8] = 48;
        }
        int i9 = i3 + 1;
        bArr[i3] = C[i >> 4];
        int i10 = i9 + 1;
        bArr[i9] = C[i & 15];
        return i10;
    }

    protected final void l() throws IOException {
        int i = this.w;
        if (i > 0) {
            this.w = 0;
            this.u.write(this.v, 0, i);
        }
    }
}
