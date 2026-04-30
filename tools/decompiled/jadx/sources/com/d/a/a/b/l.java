package com.d.a.a.b;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* JADX INFO: compiled from: UTF8Writer.java */
/* JADX INFO: loaded from: classes2.dex */
public final class l extends Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f1383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private OutputStream f1384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f1385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f1386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1387e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1388f;

    public l(c cVar, OutputStream outputStream) {
        this.f1383a = cVar;
        this.f1384b = outputStream;
        this.f1385c = cVar.f();
        this.f1386d = this.f1385c.length - 4;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c2) throws IOException {
        write(c2);
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f1384b != null) {
            if (this.f1387e > 0) {
                this.f1384b.write(this.f1385c, 0, this.f1387e);
                this.f1387e = 0;
            }
            OutputStream outputStream = this.f1384b;
            this.f1384b = null;
            byte[] bArr = this.f1385c;
            if (bArr != null) {
                this.f1385c = null;
                this.f1383a.b(bArr);
            }
            outputStream.close();
            int i = this.f1388f;
            this.f1388f = 0;
            if (i > 0) {
                b(i);
            }
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        if (this.f1384b != null) {
            if (this.f1387e > 0) {
                this.f1384b.write(this.f1385c, 0, this.f1387e);
                this.f1387e = 0;
            }
            this.f1384b.flush();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        char c2;
        if (i2 < 2) {
            if (i2 == 1) {
                write(cArr[i]);
                return;
            }
            return;
        }
        if (this.f1388f > 0) {
            i2--;
            write(a(cArr[i]));
            i++;
        }
        int i3 = this.f1387e;
        byte[] bArr = this.f1385c;
        int i4 = this.f1386d;
        int i5 = i2 + i;
        int i6 = i;
        while (i6 < i5) {
            if (i3 >= i4) {
                this.f1384b.write(bArr, 0, i3);
                i3 = 0;
            }
            int i7 = i6 + 1;
            char c3 = cArr[i6];
            if (c3 < 128) {
                int i8 = i3 + 1;
                bArr[i3] = (byte) c3;
                int i9 = i5 - i7;
                int i10 = i4 - i8;
                if (i9 <= i10) {
                    i10 = i9;
                }
                int i11 = i10 + i7;
                int i12 = i8;
                int i13 = i7;
                while (i13 < i11) {
                    int i14 = i13 + 1;
                    char c4 = cArr[i13];
                    if (c4 >= 128) {
                        i3 = i12;
                        i6 = i14;
                        c2 = c4;
                    } else {
                        bArr[i12] = (byte) c4;
                        i12++;
                        i13 = i14;
                    }
                }
                int i15 = i12;
                i6 = i13;
                i3 = i15;
            } else {
                i6 = i7;
                c2 = c3;
            }
            if (c2 < 2048) {
                int i16 = i3 + 1;
                bArr[i3] = (byte) ((c2 >> 6) | 192);
                i3 = i16 + 1;
                bArr[i16] = (byte) ((c2 & '?') | 128);
            } else if (c2 < 55296 || c2 > 57343) {
                int i17 = i3 + 1;
                bArr[i3] = (byte) ((c2 >> '\f') | 224);
                int i18 = i17 + 1;
                bArr[i17] = (byte) (((c2 >> 6) & 63) | 128);
                i3 = i18 + 1;
                bArr[i18] = (byte) ((c2 & '?') | 128);
            } else {
                if (c2 > 56319) {
                    this.f1387e = i3;
                    b(c2);
                }
                this.f1388f = c2;
                if (i6 >= i5) {
                    break;
                }
                int i19 = i6 + 1;
                int iA = a(cArr[i6]);
                if (iA > 1114111) {
                    this.f1387e = i3;
                    b(iA);
                }
                int i20 = i3 + 1;
                bArr[i3] = (byte) ((iA >> 18) | 240);
                int i21 = i20 + 1;
                bArr[i20] = (byte) (((iA >> 12) & 63) | 128);
                int i22 = i21 + 1;
                bArr[i21] = (byte) (((iA >> 6) & 63) | 128);
                i3 = i22 + 1;
                bArr[i22] = (byte) ((iA & 63) | 128);
                i6 = i19;
            }
        }
        this.f1387e = i3;
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        int i2;
        if (this.f1388f > 0) {
            i = a(i);
        } else if (i >= 55296 && i <= 57343) {
            if (i > 56319) {
                b(i);
            }
            this.f1388f = i;
            return;
        }
        if (this.f1387e >= this.f1386d) {
            this.f1384b.write(this.f1385c, 0, this.f1387e);
            this.f1387e = 0;
        }
        if (i < 128) {
            byte[] bArr = this.f1385c;
            int i3 = this.f1387e;
            this.f1387e = i3 + 1;
            bArr[i3] = (byte) i;
            return;
        }
        int i4 = this.f1387e;
        if (i < 2048) {
            int i5 = i4 + 1;
            this.f1385c[i4] = (byte) ((i >> 6) | 192);
            i2 = i5 + 1;
            this.f1385c[i5] = (byte) ((i & 63) | 128);
        } else if (i <= 65535) {
            int i6 = i4 + 1;
            this.f1385c[i4] = (byte) ((i >> 12) | 224);
            int i7 = i6 + 1;
            this.f1385c[i6] = (byte) (((i >> 6) & 63) | 128);
            i2 = i7 + 1;
            this.f1385c[i7] = (byte) ((i & 63) | 128);
        } else {
            if (i > 1114111) {
                b(i);
            }
            int i8 = i4 + 1;
            this.f1385c[i4] = (byte) ((i >> 18) | 240);
            int i9 = i8 + 1;
            this.f1385c[i8] = (byte) (((i >> 12) & 63) | 128);
            int i10 = i9 + 1;
            this.f1385c[i9] = (byte) (((i >> 6) & 63) | 128);
            i2 = i10 + 1;
            this.f1385c[i10] = (byte) ((i & 63) | 128);
        }
        this.f1387e = i2;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        write(str, 0, str.length());
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        char c2;
        if (i2 < 2) {
            if (i2 == 1) {
                write(str.charAt(i));
                return;
            }
            return;
        }
        if (this.f1388f > 0) {
            i2--;
            write(a(str.charAt(i)));
            i++;
        }
        int i3 = this.f1387e;
        byte[] bArr = this.f1385c;
        int i4 = this.f1386d;
        int i5 = i2 + i;
        int i6 = i;
        while (i6 < i5) {
            if (i3 >= i4) {
                this.f1384b.write(bArr, 0, i3);
                i3 = 0;
            }
            int i7 = i6 + 1;
            char cCharAt = str.charAt(i6);
            if (cCharAt < 128) {
                int i8 = i3 + 1;
                bArr[i3] = (byte) cCharAt;
                int i9 = i5 - i7;
                int i10 = i4 - i8;
                if (i9 <= i10) {
                    i10 = i9;
                }
                int i11 = i10 + i7;
                int i12 = i8;
                int i13 = i7;
                while (i13 < i11) {
                    int i14 = i13 + 1;
                    char cCharAt2 = str.charAt(i13);
                    if (cCharAt2 >= 128) {
                        i3 = i12;
                        i6 = i14;
                        c2 = cCharAt2;
                    } else {
                        bArr[i12] = (byte) cCharAt2;
                        i12++;
                        i13 = i14;
                    }
                }
                int i15 = i12;
                i6 = i13;
                i3 = i15;
            } else {
                i6 = i7;
                c2 = cCharAt;
            }
            if (c2 < 2048) {
                int i16 = i3 + 1;
                bArr[i3] = (byte) ((c2 >> 6) | 192);
                i3 = i16 + 1;
                bArr[i16] = (byte) ((c2 & '?') | 128);
            } else if (c2 < 55296 || c2 > 57343) {
                int i17 = i3 + 1;
                bArr[i3] = (byte) ((c2 >> '\f') | 224);
                int i18 = i17 + 1;
                bArr[i17] = (byte) (((c2 >> 6) & 63) | 128);
                i3 = i18 + 1;
                bArr[i18] = (byte) ((c2 & '?') | 128);
            } else {
                if (c2 > 56319) {
                    this.f1387e = i3;
                    b(c2);
                }
                this.f1388f = c2;
                if (i6 >= i5) {
                    break;
                }
                int i19 = i6 + 1;
                int iA = a(str.charAt(i6));
                if (iA > 1114111) {
                    this.f1387e = i3;
                    b(iA);
                }
                int i20 = i3 + 1;
                bArr[i3] = (byte) ((iA >> 18) | 240);
                int i21 = i20 + 1;
                bArr[i20] = (byte) (((iA >> 12) & 63) | 128);
                int i22 = i21 + 1;
                bArr[i21] = (byte) (((iA >> 6) & 63) | 128);
                i3 = i22 + 1;
                bArr[i22] = (byte) ((iA & 63) | 128);
                i6 = i19;
            }
        }
        this.f1387e = i3;
    }

    protected int a(int i) throws IOException {
        int i2 = this.f1388f;
        this.f1388f = 0;
        if (i < 56320 || i > 57343) {
            throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(i) + "; illegal combination");
        }
        return ((i2 - 55296) << 10) + 65536 + (i - 56320);
    }

    protected static void b(int i) throws IOException {
        throw new IOException(c(i));
    }

    protected static String c(int i) {
        if (i > 1114111) {
            return "Illegal character point (0x" + Integer.toHexString(i) + ") to output; max is 0x10FFFF as per RFC 4627";
        }
        if (i >= 55296) {
            if (i <= 56319) {
                return "Unmatched first part of surrogate pair (0x" + Integer.toHexString(i) + ")";
            }
            return "Unmatched second part of surrogate pair (0x" + Integer.toHexString(i) + ")";
        }
        return "Illegal character point (0x" + Integer.toHexString(i) + ") to output";
    }
}
