package com.d.a.a;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: compiled from: Base64Variant.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f1318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final transient boolean f1319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final transient char f1320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final transient int f1321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final transient int[] f1322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final transient char[] f1323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final transient byte[] f1324g;

    public a(String str, String str2, boolean z, char c2, int i) {
        this.f1322e = new int[128];
        this.f1323f = new char[64];
        this.f1324g = new byte[64];
        this.f1318a = str;
        this.f1319b = z;
        this.f1320c = c2;
        this.f1321d = i;
        int length = str2.length();
        if (length != 64) {
            throw new IllegalArgumentException("Base64Alphabet length must be exactly 64 (was " + length + ")");
        }
        str2.getChars(0, length, this.f1323f, 0);
        Arrays.fill(this.f1322e, -1);
        for (int i2 = 0; i2 < length; i2++) {
            char c3 = this.f1323f[i2];
            this.f1324g[i2] = (byte) c3;
            this.f1322e[c3] = i2;
        }
        if (z) {
            this.f1322e[c2] = -2;
        }
    }

    public a(a aVar, String str, int i) {
        this(aVar, str, aVar.f1319b, aVar.f1320c, i);
    }

    public a(a aVar, String str, boolean z, char c2, int i) {
        this.f1322e = new int[128];
        this.f1323f = new char[64];
        this.f1324g = new byte[64];
        this.f1318a = str;
        byte[] bArr = aVar.f1324g;
        System.arraycopy(bArr, 0, this.f1324g, 0, bArr.length);
        char[] cArr = aVar.f1323f;
        System.arraycopy(cArr, 0, this.f1323f, 0, cArr.length);
        int[] iArr = aVar.f1322e;
        System.arraycopy(iArr, 0, this.f1322e, 0, iArr.length);
        this.f1319b = z;
        this.f1320c = c2;
        this.f1321d = i;
    }

    public boolean a() {
        return this.f1319b;
    }

    public boolean a(char c2) {
        return c2 == this.f1320c;
    }

    public boolean a(int i) {
        return i == this.f1320c;
    }

    public char b() {
        return this.f1320c;
    }

    public int c() {
        return this.f1321d;
    }

    public int b(char c2) {
        if (c2 <= 127) {
            return this.f1322e[c2];
        }
        return -1;
    }

    public int b(int i) {
        if (i <= 127) {
            return this.f1322e[i];
        }
        return -1;
    }

    public int a(int i, char[] cArr, int i2) {
        int i3 = i2 + 1;
        cArr[i2] = this.f1323f[(i >> 18) & 63];
        int i4 = i3 + 1;
        cArr[i3] = this.f1323f[(i >> 12) & 63];
        int i5 = i4 + 1;
        cArr[i4] = this.f1323f[(i >> 6) & 63];
        int i6 = i5 + 1;
        cArr[i5] = this.f1323f[i & 63];
        return i6;
    }

    public int a(int i, int i2, char[] cArr, int i3) {
        int i4 = i3 + 1;
        cArr[i3] = this.f1323f[(i >> 18) & 63];
        int i5 = i4 + 1;
        cArr[i4] = this.f1323f[(i >> 12) & 63];
        if (this.f1319b) {
            int i6 = i5 + 1;
            cArr[i5] = i2 == 2 ? this.f1323f[(i >> 6) & 63] : this.f1320c;
            int i7 = i6 + 1;
            cArr[i6] = this.f1320c;
            return i7;
        }
        if (i2 != 2) {
            return i5;
        }
        int i8 = i5 + 1;
        cArr[i5] = this.f1323f[(i >> 6) & 63];
        return i8;
    }

    public int a(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = this.f1324g[(i >> 18) & 63];
        int i4 = i3 + 1;
        bArr[i3] = this.f1324g[(i >> 12) & 63];
        int i5 = i4 + 1;
        bArr[i4] = this.f1324g[(i >> 6) & 63];
        int i6 = i5 + 1;
        bArr[i5] = this.f1324g[i & 63];
        return i6;
    }

    public int a(int i, int i2, byte[] bArr, int i3) {
        int i4 = i3 + 1;
        bArr[i3] = this.f1324g[(i >> 18) & 63];
        int i5 = i4 + 1;
        bArr[i4] = this.f1324g[(i >> 12) & 63];
        if (this.f1319b) {
            byte b2 = (byte) this.f1320c;
            int i6 = i5 + 1;
            bArr[i5] = i2 == 2 ? this.f1324g[(i >> 6) & 63] : b2;
            int i7 = i6 + 1;
            bArr[i6] = b2;
            return i7;
        }
        if (i2 != 2) {
            return i5;
        }
        int i8 = i5 + 1;
        bArr[i5] = this.f1324g[(i >> 6) & 63];
        return i8;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if (r4 >= 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        a(r0, 0, (java.lang.String) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        if (r1 < r3) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        r0 = r1 + 1;
        r1 = r11.charAt(r1);
        r5 = b(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        if (r5 >= 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        a(r1, 1, (java.lang.String) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
    
        r1 = (r4 << 6) | r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        if (r0 < r3) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
    
        if (a() != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0041, code lost:
    
        r12.a(r1 >> 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
    
        d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004a, code lost:
    
        r4 = r0 + 1;
        r0 = r11.charAt(r0);
        r5 = b(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
    
        if (r5 >= 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
    
        if (r5 == (-2)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0058, code lost:
    
        a(r0, 2, (java.lang.String) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005c, code lost:
    
        if (r4 < r3) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
    
        d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0061, code lost:
    
        r0 = r4 + 1;
        r4 = r11.charAt(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006b, code lost:
    
        if (a(r4) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006d, code lost:
    
        a(r4, 3, "expected padding character '" + b() + "'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008f, code lost:
    
        r12.a(r1 >> 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
    
        r1 = (r1 << 6) | r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009a, code lost:
    
        if (r4 < r3) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a0, code lost:
    
        if (a() != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a2, code lost:
    
        r12.b(r1 >> 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a9, code lost:
    
        d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ac, code lost:
    
        r0 = r4 + 1;
        r4 = r11.charAt(r4);
        r5 = b(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b6, code lost:
    
        if (r5 >= 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b8, code lost:
    
        if (r5 == (-2)) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ba, code lost:
    
        a(r4, 3, (java.lang.String) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bd, code lost:
    
        r12.b(r1 >> 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c4, code lost:
    
        r12.c((r1 << 6) | r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
    
        r4 = b(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r11, com.d.a.a.e.b r12) throws java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.a.a.a(java.lang.String, com.d.a.a.e.b):void");
    }

    public String toString() {
        return this.f1318a;
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return this.f1318a.hashCode();
    }

    protected void a(char c2, int i, String str) throws IllegalArgumentException {
        String str2;
        if (c2 <= ' ') {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(c2) + ") as character #" + (i + 1) + " of 4-char base64 unit: can only used between units";
        } else if (a(c2)) {
            str2 = "Unexpected padding character ('" + b() + "') as character #" + (i + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (!Character.isDefined(c2) || Character.isISOControl(c2)) {
            str2 = "Illegal character (code 0x" + Integer.toHexString(c2) + ") in base64 content";
        } else {
            str2 = "Illegal character '" + c2 + "' (code 0x" + Integer.toHexString(c2) + ") in base64 content";
        }
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        throw new IllegalArgumentException(str2);
    }

    protected void d() throws IllegalArgumentException {
        throw new IllegalArgumentException("Unexpected end-of-String in base64 content");
    }
}
