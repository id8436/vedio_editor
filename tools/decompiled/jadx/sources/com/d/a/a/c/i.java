package com.d.a.a.c;

import com.d.a.a.p;
import com.d.a.a.r;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import com.google.gdata.data.Category;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: WriterBasedJsonGenerator.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i extends c {
    protected static final char[] u = com.d.a.a.b.a.g();
    protected char[] A;
    protected r B;
    protected final Writer v;
    protected char[] w;
    protected int x;
    protected int y;
    protected int z;

    public i(com.d.a.a.b.c cVar, int i, p pVar, Writer writer) {
        super(cVar, i, pVar);
        this.v = writer;
        this.w = cVar.h();
        this.z = this.w.length;
    }

    @Override // com.d.a.a.g
    public void a(String str) throws IOException {
        int iA = this.l.a(str);
        if (iA == 4) {
            e("Can not write a field name, expecting a value");
        }
        a(str, iA == 1);
    }

    protected void a(String str, boolean z) throws IOException {
        if (this.f1488a != null) {
            b(str, z);
            return;
        }
        if (this.y + 1 >= this.z) {
            l();
        }
        if (z) {
            char[] cArr = this.w;
            int i = this.y;
            this.y = i + 1;
            cArr[i] = ',';
        }
        if (this.t) {
            j(str);
            return;
        }
        char[] cArr2 = this.w;
        int i2 = this.y;
        this.y = i2 + 1;
        cArr2[i2] = '\"';
        j(str);
        if (this.y >= this.z) {
            l();
        }
        char[] cArr3 = this.w;
        int i3 = this.y;
        this.y = i3 + 1;
        cArr3[i3] = '\"';
    }

    @Override // com.d.a.a.g
    public void c() throws IOException {
        f("start an array");
        this.l = this.l.g();
        if (this.f1488a != null) {
            this.f1488a.e(this);
            return;
        }
        if (this.y >= this.z) {
            l();
        }
        char[] cArr = this.w;
        int i = this.y;
        this.y = i + 1;
        cArr[i] = '[';
    }

    @Override // com.d.a.a.g
    public void d() throws IOException {
        if (!this.l.a()) {
            e("Current context not an ARRAY but " + this.l.d());
        }
        if (this.f1488a != null) {
            this.f1488a.b(this, this.l.e());
        } else {
            if (this.y >= this.z) {
                l();
            }
            char[] cArr = this.w;
            int i = this.y;
            this.y = i + 1;
            cArr[i] = ']';
        }
        this.l = this.l.i();
    }

    @Override // com.d.a.a.g
    public void e() throws IOException {
        f("start an object");
        this.l = this.l.h();
        if (this.f1488a != null) {
            this.f1488a.b(this);
            return;
        }
        if (this.y >= this.z) {
            l();
        }
        char[] cArr = this.w;
        int i = this.y;
        this.y = i + 1;
        cArr[i] = Category.SCHEME_PREFIX;
    }

    @Override // com.d.a.a.g
    public void f() throws IOException {
        if (!this.l.c()) {
            e("Current context not an object but " + this.l.d());
        }
        if (this.f1488a != null) {
            this.f1488a.a(this, this.l.e());
        } else {
            if (this.y >= this.z) {
                l();
            }
            char[] cArr = this.w;
            int i = this.y;
            this.y = i + 1;
            cArr[i] = Category.SCHEME_SUFFIX;
        }
        this.l = this.l.i();
    }

    protected void b(String str, boolean z) throws IOException {
        if (z) {
            this.f1488a.c(this);
        } else {
            this.f1488a.h(this);
        }
        if (this.t) {
            j(str);
            return;
        }
        if (this.y >= this.z) {
            l();
        }
        char[] cArr = this.w;
        int i = this.y;
        this.y = i + 1;
        cArr[i] = '\"';
        j(str);
        if (this.y >= this.z) {
            l();
        }
        char[] cArr2 = this.w;
        int i2 = this.y;
        this.y = i2 + 1;
        cArr2[i2] = '\"';
    }

    @Override // com.d.a.a.g
    public void b(String str) throws IOException {
        f("write a string");
        if (str == null) {
            m();
            return;
        }
        if (this.y >= this.z) {
            l();
        }
        char[] cArr = this.w;
        int i = this.y;
        this.y = i + 1;
        cArr[i] = '\"';
        j(str);
        if (this.y >= this.z) {
            l();
        }
        char[] cArr2 = this.w;
        int i2 = this.y;
        this.y = i2 + 1;
        cArr2[i2] = '\"';
    }

    @Override // com.d.a.a.g
    public void c(String str) throws IOException {
        int length = str.length();
        int i = this.z - this.y;
        if (i == 0) {
            l();
            i = this.z - this.y;
        }
        if (i >= length) {
            str.getChars(0, length, this.w, this.y);
            this.y += length;
        } else {
            h(str);
        }
    }

    @Override // com.d.a.a.g
    public void b(r rVar) throws IOException {
        c(rVar.a());
    }

    @Override // com.d.a.a.g
    public void a(char[] cArr, int i, int i2) throws IOException {
        if (i2 < 32) {
            if (i2 > this.z - this.y) {
                l();
            }
            System.arraycopy(cArr, i, this.w, this.y, i2);
            this.y += i2;
            return;
        }
        l();
        this.v.write(cArr, i, i2);
    }

    @Override // com.d.a.a.g
    public void a(char c2) throws IOException {
        if (this.y >= this.z) {
            l();
        }
        char[] cArr = this.w;
        int i = this.y;
        this.y = i + 1;
        cArr[i] = c2;
    }

    private void h(String str) throws IOException {
        int i = this.z - this.y;
        str.getChars(0, i, this.w, this.y);
        this.y += i;
        l();
        int length = str.length() - i;
        while (length > this.z) {
            int i2 = this.z;
            str.getChars(i, i + i2, this.w, 0);
            this.x = 0;
            this.y = i2;
            l();
            i += i2;
            length -= i2;
        }
        str.getChars(i, i + length, this.w, 0);
        this.x = 0;
        this.y = length;
    }

    @Override // com.d.a.a.g
    public void a(com.d.a.a.a aVar, byte[] bArr, int i, int i2) throws IOException {
        f("write a binary value");
        if (this.y >= this.z) {
            l();
        }
        char[] cArr = this.w;
        int i3 = this.y;
        this.y = i3 + 1;
        cArr[i3] = '\"';
        b(aVar, bArr, i, i + i2);
        if (this.y >= this.z) {
            l();
        }
        char[] cArr2 = this.w;
        int i4 = this.y;
        this.y = i4 + 1;
        cArr2[i4] = '\"';
    }

    @Override // com.d.a.a.g
    public void c(int i) throws IOException {
        f("write a number");
        if (this.k) {
            d(i);
            return;
        }
        if (this.y + 11 >= this.z) {
            l();
        }
        this.y = com.d.a.a.b.h.a(i, this.w, this.y);
    }

    private void d(int i) throws IOException {
        if (this.y + 13 >= this.z) {
            l();
        }
        char[] cArr = this.w;
        int i2 = this.y;
        this.y = i2 + 1;
        cArr[i2] = '\"';
        this.y = com.d.a.a.b.h.a(i, this.w, this.y);
        char[] cArr2 = this.w;
        int i3 = this.y;
        this.y = i3 + 1;
        cArr2[i3] = '\"';
    }

    @Override // com.d.a.a.g
    public void a(long j) throws IOException {
        f("write a number");
        if (this.k) {
            b(j);
            return;
        }
        if (this.y + 21 >= this.z) {
            l();
        }
        this.y = com.d.a.a.b.h.a(j, this.w, this.y);
    }

    private void b(long j) throws IOException {
        if (this.y + 23 >= this.z) {
            l();
        }
        char[] cArr = this.w;
        int i = this.y;
        this.y = i + 1;
        cArr[i] = '\"';
        this.y = com.d.a.a.b.h.a(j, this.w, this.y);
        char[] cArr2 = this.w;
        int i2 = this.y;
        this.y = i2 + 1;
        cArr2[i2] = '\"';
    }

    @Override // com.d.a.a.g
    public void a(BigInteger bigInteger) throws IOException {
        f("write a number");
        if (bigInteger == null) {
            m();
        } else if (this.k) {
            i(bigInteger.toString());
        } else {
            c(bigInteger.toString());
        }
    }

    @Override // com.d.a.a.g
    public void a(double d2) throws IOException {
        if (this.k || (a(com.d.a.a.h.QUOTE_NON_NUMERIC_NUMBERS) && (Double.isNaN(d2) || Double.isInfinite(d2)))) {
            b(String.valueOf(d2));
        } else {
            f("write a number");
            c(String.valueOf(d2));
        }
    }

    @Override // com.d.a.a.g
    public void a(float f2) throws IOException {
        if (this.k || (a(com.d.a.a.h.QUOTE_NON_NUMERIC_NUMBERS) && (Float.isNaN(f2) || Float.isInfinite(f2)))) {
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
            i(a(com.d.a.a.h.WRITE_BIGDECIMAL_AS_PLAIN) ? bigDecimal.toPlainString() : bigDecimal.toString());
        } else if (a(com.d.a.a.h.WRITE_BIGDECIMAL_AS_PLAIN)) {
            c(bigDecimal.toPlainString());
        } else {
            c(bigDecimal.toString());
        }
    }

    @Override // com.d.a.a.g
    public void d(String str) throws IOException {
        f("write a number");
        if (this.k) {
            i(str);
        } else {
            c(str);
        }
    }

    private void i(String str) throws IOException {
        if (this.y >= this.z) {
            l();
        }
        char[] cArr = this.w;
        int i = this.y;
        this.y = i + 1;
        cArr[i] = '\"';
        c(str);
        if (this.y >= this.z) {
            l();
        }
        char[] cArr2 = this.w;
        int i2 = this.y;
        this.y = i2 + 1;
        cArr2[i2] = '\"';
    }

    @Override // com.d.a.a.g
    public void a(boolean z) throws IOException {
        int i;
        f("write a boolean value");
        if (this.y + 5 >= this.z) {
            l();
        }
        int i2 = this.y;
        char[] cArr = this.w;
        if (z) {
            cArr[i2] = 't';
            int i3 = i2 + 1;
            cArr[i3] = 'r';
            int i4 = i3 + 1;
            cArr[i4] = 'u';
            i = i4 + 1;
            cArr[i] = 'e';
        } else {
            cArr[i2] = 'f';
            int i5 = i2 + 1;
            cArr[i5] = 'a';
            int i6 = i5 + 1;
            cArr[i6] = 'l';
            int i7 = i6 + 1;
            cArr[i7] = 's';
            i = i7 + 1;
            cArr[i] = 'e';
        }
        this.y = i + 1;
    }

    @Override // com.d.a.a.g
    public void g() throws IOException {
        f("write a null");
        m();
    }

    @Override // com.d.a.a.a.a
    protected void f(String str) throws IOException {
        char c2;
        if (this.f1488a != null) {
            g(str);
            return;
        }
        int iJ = this.l.j();
        if (iJ == 5) {
            e("Can not " + str + ", expecting field name");
        }
        switch (iJ) {
            case 1:
                c2 = ',';
                break;
            case 2:
                c2 = ':';
                break;
            case 3:
                if (this.s != null) {
                    c(this.s.a());
                    return;
                }
                return;
            default:
                return;
        }
        if (this.y >= this.z) {
            l();
        }
        this.w[this.y] = c2;
        this.y++;
    }

    protected void g(String str) throws IOException {
        int iJ = this.l.j();
        if (iJ == 5) {
            e("Can not " + str + ", expecting field name");
        }
        switch (iJ) {
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
        if (this.v != null && a(com.d.a.a.h.FLUSH_PASSED_TO_STREAM)) {
            this.v.flush();
        }
    }

    @Override // com.d.a.a.a.a, com.d.a.a.g, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this.w != null && a(com.d.a.a.h.AUTO_CLOSE_JSON_CONTENT)) {
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
        this.x = 0;
        this.y = 0;
        if (this.v != null) {
            if (this.o.c() || a(com.d.a.a.h.AUTO_CLOSE_TARGET)) {
                this.v.close();
            } else if (a(com.d.a.a.h.FLUSH_PASSED_TO_STREAM)) {
                this.v.flush();
            }
        }
        j();
    }

    @Override // com.d.a.a.a.a
    protected void j() {
        char[] cArr = this.w;
        if (cArr != null) {
            this.w = null;
            this.o.b(cArr);
        }
    }

    private void j(String str) throws IOException {
        int length = str.length();
        if (length > this.z) {
            k(str);
            return;
        }
        if (this.y + length > this.z) {
            l();
        }
        str.getChars(0, length, this.w, this.y);
        if (this.r != null) {
            g(length);
        } else if (this.q != 0) {
            b(length, this.q);
        } else {
            e(length);
        }
    }

    private void e(int i) throws IOException {
        int i2;
        int i3 = this.y + i;
        int[] iArr = this.p;
        int length = iArr.length;
        while (this.y < i3) {
            do {
                char c2 = this.w[this.y];
                if (c2 >= length || iArr[c2] == 0) {
                    i2 = this.y + 1;
                    this.y = i2;
                } else {
                    int i4 = this.y - this.x;
                    if (i4 > 0) {
                        this.v.write(this.w, this.x, i4);
                    }
                    char[] cArr = this.w;
                    int i5 = this.y;
                    this.y = i5 + 1;
                    char c3 = cArr[i5];
                    a(c3, iArr[c3]);
                }
            } while (i2 < i3);
            return;
        }
    }

    private void k(String str) throws IOException {
        l();
        int length = str.length();
        int i = 0;
        do {
            int i2 = this.z;
            if (i + i2 > length) {
                i2 = length - i;
            }
            str.getChars(i, i + i2, this.w, 0);
            if (this.r != null) {
                h(i2);
            } else if (this.q != 0) {
                c(i2, this.q);
            } else {
                f(i2);
            }
            i += i2;
        } while (i < length);
    }

    private void f(int i) throws IOException {
        char c2;
        int[] iArr = this.p;
        int length = iArr.length;
        int i2 = 0;
        int iA = 0;
        while (i2 < i) {
            do {
                c2 = this.w[i2];
                if (c2 < length && iArr[c2] != 0) {
                    break;
                } else {
                    i2++;
                }
            } while (i2 < i);
            int i3 = i2 - iA;
            if (i3 > 0) {
                this.v.write(this.w, iA, i3);
                if (i2 >= i) {
                    return;
                }
            }
            int i4 = i2 + 1;
            iA = a(this.w, i4, i, c2, iArr[c2]);
            i2 = i4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(int r10, int r11) throws java.io.IOException {
        /*
            r9 = this;
            int r0 = r9.y
            int r1 = r0 + r10
            int[] r2 = r9.p
            int r0 = r2.length
            int r3 = r11 + 1
            int r3 = java.lang.Math.min(r0, r3)
        Ld:
            int r0 = r9.y
            if (r0 >= r1) goto L43
        L11:
            char[] r0 = r9.w
            int r4 = r9.y
            char r4 = r0[r4]
            if (r4 >= r3) goto L37
            r0 = r2[r4]
            if (r0 == 0) goto L3b
        L1d:
            int r5 = r9.y
            int r6 = r9.x
            int r5 = r5 - r6
            if (r5 <= 0) goto L2d
            java.io.Writer r6 = r9.v
            char[] r7 = r9.w
            int r8 = r9.x
            r6.write(r7, r8, r5)
        L2d:
            int r5 = r9.y
            int r5 = r5 + 1
            r9.y = r5
            r9.a(r4, r0)
            goto Ld
        L37:
            if (r4 <= r11) goto L3b
            r0 = -1
            goto L1d
        L3b:
            int r0 = r9.y
            int r0 = r0 + 1
            r9.y = r0
            if (r0 < r1) goto L11
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.i.b(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x002f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[LOOP:1: B:4:0x000e->B:27:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(int r10, int r11) throws java.io.IOException {
        /*
            r9 = this;
            r0 = 0
            int[] r6 = r9.p
            int r1 = r6.length
            int r2 = r11 + 1
            int r7 = java.lang.Math.min(r1, r2)
            r2 = r0
            r1 = r0
        Lc:
            if (r1 >= r10) goto L25
        Le:
            char[] r3 = r9.w
            char r4 = r3[r1]
            if (r4 >= r7) goto L26
            r5 = r6[r4]
            if (r5 == 0) goto L2a
        L18:
            int r0 = r1 - r2
            if (r0 <= 0) goto L31
            java.io.Writer r3 = r9.v
            char[] r8 = r9.w
            r3.write(r8, r2, r0)
            if (r1 < r10) goto L31
        L25:
            return
        L26:
            if (r4 <= r11) goto L2b
            r5 = -1
            goto L18
        L2a:
            r0 = r5
        L2b:
            int r1 = r1 + 1
            if (r1 < r10) goto Le
            r5 = r0
            goto L18
        L31:
            int r2 = r1 + 1
            char[] r1 = r9.w
            r0 = r9
            r3 = r10
            int r0 = r0.a(r1, r2, r3, r4, r5)
            r1 = r2
            r2 = r0
            r0 = r5
            goto Lc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.i.c(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0037 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g(int r12) throws java.io.IOException {
        /*
            r11 = this;
            int r0 = r11.y
            int r2 = r0 + r12
            int[] r3 = r11.p
            int r0 = r11.q
            r1 = 1
            if (r0 >= r1) goto L41
            r0 = 65535(0xffff, float:9.1834E-41)
        Le:
            int r1 = r3.length
            int r4 = r0 + 1
            int r4 = java.lang.Math.min(r1, r4)
            com.d.a.a.b.b r5 = r11.r
        L17:
            int r1 = r11.y
            if (r1 >= r2) goto L5a
        L1b:
            char[] r1 = r11.w
            int r6 = r11.y
            char r6 = r1[r6]
            if (r6 >= r4) goto L44
            r1 = r3[r6]
            if (r1 == 0) goto L52
        L27:
            int r7 = r11.y
            int r8 = r11.x
            int r7 = r7 - r8
            if (r7 <= 0) goto L37
            java.io.Writer r8 = r11.v
            char[] r9 = r11.w
            int r10 = r11.x
            r8.write(r9, r10, r7)
        L37:
            int r7 = r11.y
            int r7 = r7 + 1
            r11.y = r7
            r11.a(r6, r1)
            goto L17
        L41:
            int r0 = r11.q
            goto Le
        L44:
            if (r6 <= r0) goto L48
            r1 = -1
            goto L27
        L48:
            com.d.a.a.r r1 = r5.a(r6)
            r11.B = r1
            if (r1 == 0) goto L52
            r1 = -2
            goto L27
        L52:
            int r1 = r11.y
            int r1 = r1 + 1
            r11.y = r1
            if (r1 < r2) goto L1b
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.i.g(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[LOOP:1: B:7:0x0019->B:35:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void h(int r12) throws java.io.IOException {
        /*
            r11 = this;
            r1 = 0
            int[] r7 = r11.p
            int r0 = r11.q
            r2 = 1
            if (r0 >= r2) goto L31
            r0 = 65535(0xffff, float:9.1834E-41)
            r6 = r0
        Lc:
            int r0 = r7.length
            int r2 = r6 + 1
            int r8 = java.lang.Math.min(r0, r2)
            com.d.a.a.b.b r9 = r11.r
            r2 = r1
            r0 = r1
        L17:
            if (r1 >= r12) goto L30
        L19:
            char[] r3 = r11.w
            char r4 = r3[r1]
            if (r4 >= r8) goto L35
            r5 = r7[r4]
            if (r5 == 0) goto L43
        L23:
            int r0 = r1 - r2
            if (r0 <= 0) goto L4a
            java.io.Writer r3 = r11.v
            char[] r10 = r11.w
            r3.write(r10, r2, r0)
            if (r1 < r12) goto L4a
        L30:
            return
        L31:
            int r0 = r11.q
            r6 = r0
            goto Lc
        L35:
            if (r4 <= r6) goto L39
            r5 = -1
            goto L23
        L39:
            com.d.a.a.r r3 = r9.a(r4)
            r11.B = r3
            if (r3 == 0) goto L44
            r5 = -2
            goto L23
        L43:
            r0 = r5
        L44:
            int r1 = r1 + 1
            if (r1 < r12) goto L19
            r5 = r0
            goto L23
        L4a:
            int r2 = r1 + 1
            char[] r1 = r11.w
            r0 = r11
            r3 = r12
            int r0 = r0.a(r1, r2, r3, r4, r5)
            r1 = r2
            r2 = r0
            r0 = r5
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.i.h(int):void");
    }

    protected void b(com.d.a.a.a aVar, byte[] bArr, int i, int i2) throws IOException {
        int i3 = i2 - 3;
        int i4 = this.z - 6;
        int iC = aVar.c() >> 2;
        while (i <= i3) {
            if (this.y > i4) {
                l();
            }
            int i5 = i + 1;
            int i6 = bArr[i] << 8;
            int i7 = i5 + 1;
            i = i7 + 1;
            this.y = aVar.a((((bArr[i5] & UnsignedBytes.MAX_VALUE) | i6) << 8) | (bArr[i7] & UnsignedBytes.MAX_VALUE), this.w, this.y);
            iC--;
            if (iC <= 0) {
                char[] cArr = this.w;
                int i8 = this.y;
                this.y = i8 + 1;
                cArr[i8] = IOUtils.DIR_SEPARATOR_WINDOWS;
                char[] cArr2 = this.w;
                int i9 = this.y;
                this.y = i9 + 1;
                cArr2[i9] = 'n';
                iC = aVar.c() >> 2;
            }
        }
        int i10 = i2 - i;
        if (i10 > 0) {
            if (this.y > i4) {
                l();
            }
            int i11 = i + 1;
            int i12 = bArr[i] << Ascii.DLE;
            if (i10 == 2) {
                int i13 = i11 + 1;
                i12 |= (bArr[i11] & UnsignedBytes.MAX_VALUE) << 8;
            }
            this.y = aVar.a(i12, i10, this.w, this.y);
        }
    }

    private final void m() throws IOException {
        if (this.y + 4 >= this.z) {
            l();
        }
        int i = this.y;
        char[] cArr = this.w;
        cArr[i] = 'n';
        int i2 = i + 1;
        cArr[i2] = 'u';
        int i3 = i2 + 1;
        cArr[i3] = 'l';
        int i4 = i3 + 1;
        cArr[i4] = 'l';
        this.y = i4 + 1;
    }

    private void a(char c2, int i) throws IOException {
        String strA;
        int i2;
        if (i >= 0) {
            if (this.y >= 2) {
                int i3 = this.y - 2;
                this.x = i3;
                this.w[i3] = IOUtils.DIR_SEPARATOR_WINDOWS;
                this.w[i3 + 1] = (char) i;
                return;
            }
            char[] cArrN = this.A;
            if (cArrN == null) {
                cArrN = n();
            }
            this.x = this.y;
            cArrN[1] = (char) i;
            this.v.write(cArrN, 0, 2);
            return;
        }
        if (i != -2) {
            if (this.y >= 6) {
                char[] cArr = this.w;
                int i4 = this.y - 6;
                this.x = i4;
                cArr[i4] = IOUtils.DIR_SEPARATOR_WINDOWS;
                int i5 = i4 + 1;
                cArr[i5] = 'u';
                if (c2 > 255) {
                    int i6 = (c2 >> '\b') & 255;
                    int i7 = i5 + 1;
                    cArr[i7] = u[i6 >> 4];
                    i2 = i7 + 1;
                    cArr[i2] = u[i6 & 15];
                    c2 = (char) (c2 & 255);
                } else {
                    int i8 = i5 + 1;
                    cArr[i8] = '0';
                    i2 = i8 + 1;
                    cArr[i2] = '0';
                }
                int i9 = i2 + 1;
                cArr[i9] = u[c2 >> 4];
                cArr[i9 + 1] = u[c2 & 15];
                return;
            }
            char[] cArrN2 = this.A;
            if (cArrN2 == null) {
                cArrN2 = n();
            }
            this.x = this.y;
            if (c2 > 255) {
                int i10 = (c2 >> '\b') & 255;
                int i11 = c2 & 255;
                cArrN2[10] = u[i10 >> 4];
                cArrN2[11] = u[i10 & 15];
                cArrN2[12] = u[i11 >> 4];
                cArrN2[13] = u[i11 & 15];
                this.v.write(cArrN2, 8, 6);
                return;
            }
            cArrN2[6] = u[c2 >> 4];
            cArrN2[7] = u[c2 & 15];
            this.v.write(cArrN2, 2, 6);
            return;
        }
        if (this.B == null) {
            strA = this.r.a(c2).a();
        } else {
            strA = this.B.a();
            this.B = null;
        }
        int length = strA.length();
        if (this.y >= length) {
            int i12 = this.y - length;
            this.x = i12;
            strA.getChars(0, length, this.w, i12);
        } else {
            this.x = this.y;
            this.v.write(strA);
        }
    }

    private int a(char[] cArr, int i, int i2, char c2, int i3) throws IOException {
        String strA;
        int i4;
        if (i3 >= 0) {
            if (i > 1 && i < i2) {
                int i5 = i - 2;
                cArr[i5] = IOUtils.DIR_SEPARATOR_WINDOWS;
                cArr[i5 + 1] = (char) i3;
                return i5;
            }
            char[] cArrN = this.A;
            if (cArrN == null) {
                cArrN = n();
            }
            cArrN[1] = (char) i3;
            this.v.write(cArrN, 0, 2);
            return i;
        }
        if (i3 != -2) {
            if (i > 5 && i < i2) {
                int i6 = i - 6;
                int i7 = i6 + 1;
                cArr[i6] = IOUtils.DIR_SEPARATOR_WINDOWS;
                int i8 = i7 + 1;
                cArr[i7] = 'u';
                if (c2 > 255) {
                    int i9 = (c2 >> '\b') & 255;
                    int i10 = i8 + 1;
                    cArr[i8] = u[i9 >> 4];
                    i4 = i10 + 1;
                    cArr[i10] = u[i9 & 15];
                    c2 = (char) (c2 & 255);
                } else {
                    int i11 = i8 + 1;
                    cArr[i8] = '0';
                    i4 = i11 + 1;
                    cArr[i11] = '0';
                }
                int i12 = i4 + 1;
                cArr[i4] = u[c2 >> 4];
                cArr[i12] = u[c2 & 15];
                return i12 - 5;
            }
            char[] cArrN2 = this.A;
            if (cArrN2 == null) {
                cArrN2 = n();
            }
            this.x = this.y;
            if (c2 > 255) {
                int i13 = (c2 >> '\b') & 255;
                int i14 = c2 & 255;
                cArrN2[10] = u[i13 >> 4];
                cArrN2[11] = u[i13 & 15];
                cArrN2[12] = u[i14 >> 4];
                cArrN2[13] = u[i14 & 15];
                this.v.write(cArrN2, 8, 6);
                return i;
            }
            cArrN2[6] = u[c2 >> 4];
            cArrN2[7] = u[c2 & 15];
            this.v.write(cArrN2, 2, 6);
            return i;
        }
        if (this.B == null) {
            strA = this.r.a(c2).a();
        } else {
            strA = this.B.a();
            this.B = null;
        }
        int length = strA.length();
        if (i >= length && i < i2) {
            int i15 = i - length;
            strA.getChars(0, length, cArr, i15);
            return i15;
        }
        this.v.write(strA);
        return i;
    }

    private char[] n() {
        char[] cArr = {IOUtils.DIR_SEPARATOR_WINDOWS, 0, IOUtils.DIR_SEPARATOR_WINDOWS, 'u', '0', '0', 0, 0, IOUtils.DIR_SEPARATOR_WINDOWS, 'u', 0, 0, 0, 0};
        this.A = cArr;
        return cArr;
    }

    protected void l() throws IOException {
        int i = this.y - this.x;
        if (i > 0) {
            int i2 = this.x;
            this.x = 0;
            this.y = 0;
            this.v.write(this.w, i2, i);
        }
    }
}
