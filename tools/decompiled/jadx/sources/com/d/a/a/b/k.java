package com.d.a.a.b;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* JADX INFO: compiled from: UTF32Reader.java */
/* JADX INFO: loaded from: classes2.dex */
public class k extends Reader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final c f1376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected InputStream f1377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected byte[] f1378c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f1379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f1380e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final boolean f1381f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected char f1382g = 0;
    protected int h;
    protected int i;
    protected final boolean j;
    protected char[] k;

    public k(c cVar, InputStream inputStream, byte[] bArr, int i, int i2, boolean z) {
        this.f1376a = cVar;
        this.f1377b = inputStream;
        this.f1378c = bArr;
        this.f1379d = i;
        this.f1380e = i2;
        this.f1381f = z;
        this.j = inputStream != null;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f1377b;
        if (inputStream != null) {
            this.f1377b = null;
            a();
            inputStream.close();
        }
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this.k == null) {
            this.k = new char[1];
        }
        if (read(this.k, 0, 1) < 1) {
            return -1;
        }
        return this.k[0];
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        if (this.f1378c == null) {
            return -1;
        }
        if (i2 >= 1) {
            if (i < 0 || i + i2 > cArr.length) {
                a(cArr, i, i2);
            }
            int i6 = i2 + i;
            if (this.f1382g != 0) {
                i3 = i + 1;
                cArr[i] = this.f1382g;
                this.f1382g = (char) 0;
            } else {
                int i7 = this.f1380e - this.f1379d;
                if (i7 < 4 && !a(i7)) {
                    return -1;
                }
                i3 = i;
            }
            while (true) {
                if (i3 >= i6) {
                    i4 = i3;
                    break;
                }
                int i8 = this.f1379d;
                if (this.f1381f) {
                    i5 = (this.f1378c[i8 + 3] & UnsignedBytes.MAX_VALUE) | (this.f1378c[i8] << Ascii.CAN) | ((this.f1378c[i8 + 1] & UnsignedBytes.MAX_VALUE) << 16) | ((this.f1378c[i8 + 2] & UnsignedBytes.MAX_VALUE) << 8);
                } else {
                    i5 = (this.f1378c[i8 + 3] << Ascii.CAN) | (this.f1378c[i8] & UnsignedBytes.MAX_VALUE) | ((this.f1378c[i8 + 1] & UnsignedBytes.MAX_VALUE) << 8) | ((this.f1378c[i8 + 2] & UnsignedBytes.MAX_VALUE) << 16);
                }
                this.f1379d += 4;
                if (i5 > 65535) {
                    if (i5 > 1114111) {
                        a(i5, i3 - i, "(above " + Integer.toHexString(1114111) + ") ");
                    }
                    int i9 = i5 - 65536;
                    i4 = i3 + 1;
                    cArr[i3] = (char) (55296 + (i9 >> 10));
                    i5 = (i9 & 1023) | 56320;
                    if (i4 >= i6) {
                        this.f1382g = (char) i5;
                        break;
                    }
                } else {
                    i4 = i3;
                }
                i3 = i4 + 1;
                cArr[i4] = (char) i5;
                if (this.f1379d >= this.f1380e) {
                    i4 = i3;
                    break;
                }
            }
            int i10 = i4 - i;
            this.h += i10;
            return i10;
        }
        return i2;
    }

    private void a(int i, int i2) throws IOException {
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i + ", needed " + i2 + ", at char #" + this.h + ", byte #" + (this.i + i) + ")");
    }

    private void a(int i, int i2, String str) throws IOException {
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i) + str + " at char #" + (this.h + i2) + ", byte #" + ((this.i + this.f1379d) - 1) + ")");
    }

    private boolean a(int i) throws IOException {
        this.i += this.f1380e - i;
        if (i > 0) {
            if (this.f1379d > 0) {
                System.arraycopy(this.f1378c, this.f1379d, this.f1378c, 0, i);
                this.f1379d = 0;
            }
            this.f1380e = i;
        } else {
            this.f1379d = 0;
            int i2 = this.f1377b == null ? -1 : this.f1377b.read(this.f1378c);
            if (i2 < 1) {
                this.f1380e = 0;
                if (i2 < 0) {
                    if (!this.j) {
                        return false;
                    }
                    a();
                    return false;
                }
                b();
            }
            this.f1380e = i2;
        }
        while (this.f1380e < 4) {
            int i3 = this.f1377b == null ? -1 : this.f1377b.read(this.f1378c, this.f1380e, this.f1378c.length - this.f1380e);
            if (i3 < 1) {
                if (i3 < 0) {
                    if (this.j) {
                        a();
                    }
                    a(this.f1380e, 4);
                }
                b();
            }
            this.f1380e = i3 + this.f1380e;
        }
        return true;
    }

    private void a() {
        byte[] bArr = this.f1378c;
        if (bArr != null) {
            this.f1378c = null;
            this.f1376a.a(bArr);
        }
    }

    private void a(char[] cArr, int i, int i2) throws IOException {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i + BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR + i2 + "), cbuf[" + cArr.length + "]");
    }

    private void b() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }
}
