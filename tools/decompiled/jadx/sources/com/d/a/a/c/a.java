package com.d.a.a.c;

import com.d.a.a.b.k;
import com.d.a.a.p;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/* JADX INFO: compiled from: ByteSourceJsonBootstrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final com.d.a.a.b.c f1396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final InputStream f1397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final byte[] f1398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f1399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f1400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f1401f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1402g;
    private int h;
    private final boolean i;

    public a(com.d.a.a.b.c cVar, InputStream inputStream) {
        this.f1400e = true;
        this.f1396a = cVar;
        this.f1397b = inputStream;
        this.f1398c = cVar.e();
        this.f1402g = 0;
        this.h = 0;
        this.f1399d = 0;
        this.i = true;
    }

    public a(com.d.a.a.b.c cVar, byte[] bArr, int i, int i2) {
        this.f1400e = true;
        this.f1396a = cVar;
        this.f1397b = null;
        this.f1398c = bArr;
        this.f1402g = i;
        this.h = i + i2;
        this.f1399d = -i;
        this.i = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.d.a.a.c a() throws java.io.IOException {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            r2 = 4
            boolean r2 = r5.a(r2)
            if (r2 == 0) goto L56
            byte[] r2 = r5.f1398c
            int r3 = r5.f1402g
            r2 = r2[r3]
            int r2 = r2 << 24
            byte[] r3 = r5.f1398c
            int r4 = r5.f1402g
            int r4 = r4 + 1
            r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << 16
            r2 = r2 | r3
            byte[] r3 = r5.f1398c
            int r4 = r5.f1402g
            int r4 = r4 + 2
            r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << 8
            r2 = r2 | r3
            byte[] r3 = r5.f1398c
            int r4 = r5.f1402g
            int r4 = r4 + 3
            r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r2 = r2 | r3
            boolean r3 = r5.b(r2)
            if (r3 == 0) goto L46
        L3c:
            if (r0 != 0) goto L79
            com.d.a.a.c r0 = com.d.a.a.c.UTF8
        L40:
            com.d.a.a.b.c r1 = r5.f1396a
            r1.a(r0)
            return r0
        L46:
            boolean r3 = r5.c(r2)
            if (r3 != 0) goto L3c
            int r2 = r2 >>> 16
            boolean r2 = r5.d(r2)
            if (r2 != 0) goto L3c
        L54:
            r0 = r1
            goto L3c
        L56:
            r2 = 2
            boolean r2 = r5.a(r2)
            if (r2 == 0) goto L54
            byte[] r2 = r5.f1398c
            int r3 = r5.f1402g
            r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 8
            byte[] r3 = r5.f1398c
            int r4 = r5.f1402g
            int r4 = r4 + 1
            r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r2 = r2 | r3
            boolean r2 = r5.d(r2)
            if (r2 == 0) goto L54
            goto L3c
        L79:
            int r0 = r5.f1401f
            switch(r0) {
                case 1: goto L87;
                case 2: goto L8a;
                case 3: goto L7e;
                case 4: goto L94;
                default: goto L7e;
            }
        L7e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "Internal error"
            r0.<init>(r1)
            throw r0
        L87:
            com.d.a.a.c r0 = com.d.a.a.c.UTF8
            goto L40
        L8a:
            boolean r0 = r5.f1400e
            if (r0 == 0) goto L91
            com.d.a.a.c r0 = com.d.a.a.c.UTF16_BE
            goto L40
        L91:
            com.d.a.a.c r0 = com.d.a.a.c.UTF16_LE
            goto L40
        L94:
            boolean r0 = r5.f1400e
            if (r0 == 0) goto L9b
            com.d.a.a.c r0 = com.d.a.a.c.UTF32_BE
            goto L40
        L9b:
            com.d.a.a.c r0 = com.d.a.a.c.UTF32_LE
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.a.a():com.d.a.a.c");
    }

    public Reader b() throws IOException {
        InputStream fVar;
        com.d.a.a.c cVarB = this.f1396a.b();
        switch (cVarB.c()) {
            case 8:
            case 16:
                InputStream inputStream = this.f1397b;
                if (inputStream == null) {
                    fVar = new ByteArrayInputStream(this.f1398c, this.f1402g, this.h);
                } else {
                    fVar = this.f1402g < this.h ? new com.d.a.a.b.f(this.f1396a, inputStream, this.f1398c, this.f1402g, this.h) : inputStream;
                }
                return new InputStreamReader(fVar, cVarB.a());
            case 32:
                return new k(this.f1396a, this.f1397b, this.f1398c, this.f1402g, this.h, this.f1396a.b().b());
            default:
                throw new RuntimeException("Internal error");
        }
    }

    public com.d.a.a.k a(int i, p pVar, com.d.a.a.d.a aVar, com.d.a.a.d.c cVar, int i2) throws IOException {
        if (a() == com.d.a.a.c.UTF8 && com.d.a.a.e.CANONICALIZE_FIELD_NAMES.a(i2)) {
            return new h(this.f1396a, i, this.f1397b, pVar, aVar.b(i2), this.f1398c, this.f1402g, this.h, this.i);
        }
        return new f(this.f1396a, i, b(), pVar, cVar.b(i2));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(int r6) throws java.io.IOException {
        /*
            r5 = this;
            r3 = 4
            r4 = 2
            r1 = 0
            r0 = 1
            switch(r6) {
                case -16842752: goto L35;
                case -131072: goto L24;
                case 65279: goto L19;
                case 65534: goto L2f;
                default: goto L7;
            }
        L7:
            int r2 = r6 >>> 16
            r3 = 65279(0xfeff, float:9.1475E-41)
            if (r2 != r3) goto L3c
            int r1 = r5.f1402g
            int r1 = r1 + 2
            r5.f1402g = r1
            r5.f1401f = r4
            r5.f1400e = r0
        L18:
            return r0
        L19:
            r5.f1400e = r0
            int r1 = r5.f1402g
            int r1 = r1 + 4
            r5.f1402g = r1
            r5.f1401f = r3
            goto L18
        L24:
            int r2 = r5.f1402g
            int r2 = r2 + 4
            r5.f1402g = r2
            r5.f1401f = r3
            r5.f1400e = r1
            goto L18
        L2f:
            java.lang.String r2 = "2143"
            r5.a(r2)
        L35:
            java.lang.String r2 = "3412"
            r5.a(r2)
            goto L7
        L3c:
            r3 = 65534(0xfffe, float:9.1833E-41)
            if (r2 != r3) goto L4c
            int r2 = r5.f1402g
            int r2 = r2 + 2
            r5.f1402g = r2
            r5.f1401f = r4
            r5.f1400e = r1
            goto L18
        L4c:
            int r2 = r6 >>> 8
            r3 = 15711167(0xefbbbf, float:2.2016034E-38)
            if (r2 != r3) goto L5e
            int r1 = r5.f1402g
            int r1 = r1 + 3
            r5.f1402g = r1
            r5.f1401f = r0
            r5.f1400e = r0
            goto L18
        L5e:
            r0 = r1
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.c.a.b(int):boolean");
    }

    private boolean c(int i) throws IOException {
        if ((i >> 8) == 0) {
            this.f1400e = true;
        } else if ((16777215 & i) == 0) {
            this.f1400e = false;
        } else if (((-16711681) & i) == 0) {
            a("3412");
        } else {
            if (((-65281) & i) != 0) {
                return false;
            }
            a("2143");
        }
        this.f1401f = 4;
        return true;
    }

    private boolean d(int i) {
        if ((65280 & i) == 0) {
            this.f1400e = true;
        } else {
            if ((i & 255) != 0) {
                return false;
            }
            this.f1400e = false;
        }
        this.f1401f = 2;
        return true;
    }

    private void a(String str) throws IOException {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    protected boolean a(int i) throws IOException {
        int i2;
        int i3 = this.h - this.f1402g;
        while (i3 < i) {
            if (this.f1397b == null) {
                i2 = -1;
            } else {
                i2 = this.f1397b.read(this.f1398c, this.h, this.f1398c.length - this.h);
            }
            if (i2 < 1) {
                return false;
            }
            this.h += i2;
            i3 = i2 + i3;
        }
        return true;
    }
}
