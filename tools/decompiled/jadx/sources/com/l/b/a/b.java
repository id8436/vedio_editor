package com.l.b.a;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.google.common.primitives.UnsignedBytes;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: BASE64DecoderStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class b extends FilterInputStream {
    private static final char[] h = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', '+', IOUtils.DIR_SEPARATOR_UNIX};
    private static final byte[] i = new byte[256];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f3596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3598c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f3599d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3601f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3602g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(InputStream inputStream) {
        super(inputStream);
        boolean z = false;
        this.f3596a = new byte[3];
        this.f3597b = 0;
        this.f3598c = 0;
        this.f3599d = new byte[8190];
        this.f3600e = 0;
        this.f3601f = 0;
        this.f3602g = false;
        try {
            String property = System.getProperty("mail.mime.base64.ignoreerrors");
            if (property != null && !property.equalsIgnoreCase("false")) {
                z = true;
            }
            this.f3602g = z;
        } catch (SecurityException e2) {
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f3598c >= this.f3597b) {
            this.f3597b = a(this.f3596a, 0, this.f3596a.length);
            if (this.f3597b <= 0) {
                return -1;
            }
            this.f3598c = 0;
        }
        byte[] bArr = this.f3596a;
        int i2 = this.f3598c;
        this.f3598c = i2 + 1;
        return bArr[i2] & UnsignedBytes.MAX_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = i2;
        while (this.f3598c < this.f3597b && i3 > 0) {
            byte[] bArr2 = this.f3596a;
            int i5 = this.f3598c;
            this.f3598c = i5 + 1;
            bArr[i4] = bArr2[i5];
            i3--;
            i4++;
        }
        if (this.f3598c >= this.f3597b) {
            this.f3598c = 0;
            this.f3597b = 0;
        }
        int i6 = (i3 / 3) * 3;
        if (i6 > 0) {
            int iA = a(bArr, i4, i6);
            i4 += iA;
            i3 -= iA;
            if (iA != i6) {
                if (i4 == i2) {
                    return -1;
                }
                return i4 - i2;
            }
        }
        while (i3 > 0) {
            int i7 = read();
            if (i7 == -1) {
                break;
            }
            bArr[i4] = (byte) i7;
            i3--;
            i4++;
        }
        if (i4 == i2) {
            return -1;
        }
        return i4 - i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return ((this.in.available() * 3) / 4) + (this.f3597b - this.f3598c);
    }

    static {
        for (int i2 = 0; i2 < 255; i2++) {
            i[i2] = -1;
        }
        for (int i3 = 0; i3 < h.length; i3++) {
            i[h[i3]] = (byte) i3;
        }
    }

    private int a(byte[] bArr, int i2, int i3) throws IOException {
        boolean z;
        int i4 = i2;
        while (i3 >= 3) {
            int i5 = 0;
            for (int i6 = 0; i6 < 4; i6++) {
                int iA = a();
                if (iA == -1 || iA == -2) {
                    if (iA == -1) {
                        if (i6 == 0) {
                            return i4 - i2;
                        }
                        if (!this.f3602g) {
                            throw new IOException(new StringBuffer().append("Error in encoded stream: needed 4 valid base64 characters but only got ").append(i6).append(" before EOF").append(b()).toString());
                        }
                        z = true;
                    } else {
                        if (i6 < 2 && !this.f3602g) {
                            throw new IOException(new StringBuffer().append("Error in encoded stream: needed at least 2 valid base64 characters, but only got ").append(i6).append(" before padding character (=)").append(b()).toString());
                        }
                        if (i6 == 0) {
                            return i4 - i2;
                        }
                        z = false;
                    }
                    int i7 = i6 - 1;
                    int i8 = i7 != 0 ? i7 : 1;
                    int i9 = i5 << 6;
                    for (int i10 = i6 + 1; i10 < 4; i10++) {
                        if (!z) {
                            int iA2 = a();
                            if (iA2 == -1) {
                                if (!this.f3602g) {
                                    throw new IOException(new StringBuffer().append("Error in encoded stream: hit EOF while looking for padding characters (=)").append(b()).toString());
                                }
                            } else if (iA2 != -2 && !this.f3602g) {
                                throw new IOException(new StringBuffer().append("Error in encoded stream: found valid base64 character after a padding character (=)").append(b()).toString());
                            }
                        }
                        i9 <<= 6;
                    }
                    int i11 = i9 >> 8;
                    if (i8 == 2) {
                        bArr[i4 + 1] = (byte) (i11 & 255);
                    }
                    bArr[i4] = (byte) ((i11 >> 8) & 255);
                    int i12 = i3 - i8;
                    return (i8 + i4) - i2;
                }
                i5 = (i5 << 6) | iA;
            }
            bArr[i4 + 2] = (byte) (i5 & 255);
            int i13 = i5 >> 8;
            bArr[i4 + 1] = (byte) (i13 & 255);
            bArr[i4] = (byte) ((i13 >> 8) & 255);
            i3 -= 3;
            i4 += 3;
        }
        return i4 - i2;
    }

    private int a() throws IOException {
        byte b2;
        do {
            if (this.f3600e >= this.f3601f) {
                try {
                    this.f3601f = this.in.read(this.f3599d);
                    if (this.f3601f <= 0) {
                        return -1;
                    }
                    this.f3600e = 0;
                } catch (EOFException e2) {
                    return -1;
                }
            }
            byte[] bArr = this.f3599d;
            int i2 = this.f3600e;
            this.f3600e = i2 + 1;
            int i3 = bArr[i2] & UnsignedBytes.MAX_VALUE;
            if (i3 == 61) {
                return -2;
            }
            b2 = i[i3];
        } while (b2 == -1);
        return b2;
    }

    private String b() {
        int i2 = this.f3600e > 10 ? 10 : this.f3600e;
        if (i2 > 0) {
            String string = new StringBuffer().append("").append(", the ").append(i2).append(" most recent characters were: \"").toString();
            for (int i3 = this.f3600e - i2; i3 < this.f3600e; i3++) {
                char c2 = (char) (this.f3599d[i3] & UnsignedBytes.MAX_VALUE);
                switch (c2) {
                    case '\t':
                        string = new StringBuffer().append(string).append("\\t").toString();
                        break;
                    case '\n':
                        string = new StringBuffer().append(string).append("\\n").toString();
                        break;
                    case 11:
                    case '\f':
                    default:
                        if (c2 >= ' ' && c2 < 127) {
                            string = new StringBuffer().append(string).append(c2).toString();
                        } else {
                            string = new StringBuffer().append(string).append("\\").append((int) c2).toString();
                        }
                        break;
                    case '\r':
                        string = new StringBuffer().append(string).append("\\r").toString();
                        break;
                }
            }
            return new StringBuffer().append(string).append("\"").toString();
        }
        return "";
    }
}
