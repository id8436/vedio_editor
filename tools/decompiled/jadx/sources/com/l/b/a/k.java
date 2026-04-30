package com.l.b.a;

import com.google.common.primitives.UnsignedBytes;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: UUDecoderStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class k extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f3624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3627f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3628g;
    private e h;

    public k(InputStream inputStream) {
        super(inputStream);
        this.f3625d = 0;
        this.f3626e = 0;
        this.f3627f = false;
        this.f3628g = false;
        this.h = new e(inputStream);
        this.f3624c = new byte[45];
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f3626e >= this.f3625d) {
            a();
            if (!b()) {
                return -1;
            }
            this.f3626e = 0;
        }
        byte[] bArr = this.f3624c;
        int i = this.f3626e;
        this.f3626e = i + 1;
        return bArr[i] & UnsignedBytes.MAX_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int i4 = read();
            if (i4 == -1) {
                if (i3 == 0) {
                    return -1;
                }
            } else {
                bArr[i + i3] = (byte) i4;
                i3++;
            }
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return ((this.in.available() * 3) / 4) + (this.f3625d - this.f3626e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
    
        throw new java.io.IOException(new java.lang.StringBuffer().append("UUDecoder error: ").append(r0.toString()).toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() throws java.io.IOException {
        /*
            r6 = this;
            r1 = 1
            r2 = 0
            boolean r0 = r6.f3627f
            if (r0 == 0) goto L7
        L6:
            return
        L7:
            com.l.b.a.e r0 = r6.h
            java.lang.String r0 = r0.a()
            if (r0 != 0) goto L18
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "UUDecoder error: No Begin"
            r0.<init>(r1)
            throw r0
        L18:
            java.lang.String r3 = "begin"
            r5 = 5
            r4 = r2
            boolean r3 = r0.regionMatches(r1, r2, r3, r4, r5)
            if (r3 == 0) goto L7
            r2 = 6
            r3 = 9
            java.lang.String r2 = r0.substring(r2, r3)     // Catch: java.lang.NumberFormatException -> L3b
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.NumberFormatException -> L3b
            r6.f3623b = r2     // Catch: java.lang.NumberFormatException -> L3b
            r2 = 10
            java.lang.String r0 = r0.substring(r2)
            r6.f3622a = r0
            r6.f3627f = r1
            goto L6
        L3b:
            r0 = move-exception
            java.io.IOException r1 = new java.io.IOException
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
            java.lang.String r3 = "UUDecoder error: "
            java.lang.StringBuffer r2 = r2.append(r3)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuffer r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.l.b.a.k.a():void");
    }

    private boolean b() throws IOException {
        String strA;
        byte b2;
        int i;
        if (this.f3628g) {
            return false;
        }
        this.f3625d = 0;
        do {
            strA = this.h.a();
            if (strA == null) {
                throw new IOException("Missing End");
            }
            if (strA.regionMatches(true, 0, "end", 0, 3)) {
                this.f3628g = true;
                return false;
            }
        } while (strA.length() == 0);
        char cCharAt = strA.charAt(0);
        if (cCharAt < ' ') {
            throw new IOException("Buffer format error");
        }
        int i2 = (cCharAt - ' ') & 63;
        if (i2 == 0) {
            String strA2 = this.h.a();
            if (strA2 == null || !strA2.regionMatches(true, 0, "end", 0, 3)) {
                throw new IOException("Missing End");
            }
            this.f3628g = true;
            return false;
        }
        if (strA.length() < (((i2 * 8) + 5) / 6) + 1) {
            throw new IOException("Short buffer error");
        }
        int i3 = 1;
        while (this.f3625d < i2) {
            byte bCharAt = (byte) ((strA.charAt(i3) - ' ') & 63);
            int i4 = i3 + 1 + 1;
            byte bCharAt2 = (byte) ((strA.charAt(r3) - ' ') & 63);
            byte[] bArr = this.f3624c;
            int i5 = this.f3625d;
            this.f3625d = i5 + 1;
            bArr[i5] = (byte) (((bCharAt << 2) & 252) | ((bCharAt2 >>> 4) & 3));
            if (this.f3625d < i2) {
                int i6 = i4 + 1;
                byte bCharAt3 = (byte) ((strA.charAt(i4) - ' ') & 63);
                byte[] bArr2 = this.f3624c;
                int i7 = this.f3625d;
                this.f3625d = i7 + 1;
                bArr2[i7] = (byte) (((bCharAt2 << 4) & 240) | ((bCharAt3 >>> 2) & 15));
                i = i6;
                b2 = bCharAt3;
            } else {
                b2 = bCharAt2;
                i = i4;
            }
            if (this.f3625d < i2) {
                i3 = i + 1;
                byte[] bArr3 = this.f3624c;
                int i8 = this.f3625d;
                this.f3625d = i8 + 1;
                bArr3[i8] = (byte) ((((byte) ((strA.charAt(i) - ' ') & 63)) & 63) | ((b2 << 6) & 192));
            } else {
                i3 = i;
            }
        }
        return true;
    }
}
