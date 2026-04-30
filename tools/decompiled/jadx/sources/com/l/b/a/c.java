package com.l.b.a;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.google.common.primitives.UnsignedBytes;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: BASE64EncoderStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class c extends FilterOutputStream {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static byte[] f3603g = {13, 10};
    private static final char[] h = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', '+', IOUtils.DIR_SEPARATOR_UNIX};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f3604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3607d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3609f;

    public c(OutputStream outputStream, int i) {
        super(outputStream);
        this.f3605b = 0;
        this.f3606c = 0;
        this.f3609f = false;
        this.f3604a = new byte[3];
        if (i == Integer.MAX_VALUE || i < 4) {
            this.f3609f = true;
            i = 76;
        }
        this.f3607d = (i / 4) * 4;
        this.f3608e = (i / 4) * 3;
    }

    public c(OutputStream outputStream) {
        this(outputStream, 76);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2;
        while (true) {
            if ((this.f3605b == 0 && this.f3606c == 0) || i2 <= 0) {
                break;
            }
            write(bArr[i]);
            i2--;
            i++;
        }
        if (this.f3609f) {
            bArr2 = new byte[this.f3607d];
        } else {
            bArr2 = new byte[this.f3607d + 2];
            bArr2[this.f3607d] = 13;
            bArr2[this.f3607d + 1] = 10;
        }
        int i3 = 0;
        while (this.f3608e + i3 < i2) {
            this.out.write(a(bArr, i + i3, this.f3608e, bArr2));
            i3 += this.f3608e;
        }
        while (i3 < i2) {
            write(bArr[i + i3]);
            i3++;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f3604a;
        int i2 = this.f3605b;
        this.f3605b = i2 + 1;
        bArr[i2] = (byte) i;
        if (this.f3605b == 3) {
            a();
            this.f3605b = 0;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        if (this.f3605b > 0) {
            a();
            this.f3605b = 0;
        }
        this.out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
        this.out.close();
    }

    private void a() throws IOException {
        if (this.f3606c + 4 > this.f3607d) {
            if (!this.f3609f) {
                this.out.write(f3603g);
            }
            this.f3606c = 0;
        }
        this.out.write(a(this.f3604a, 0, this.f3605b, null));
        this.f3606c += 4;
    }

    private static byte[] a(byte[] bArr, int i, int i2, byte[] bArr2) {
        if (bArr2 == null) {
            bArr2 = new byte[((i2 + 2) / 3) * 4];
        }
        int i3 = 0;
        while (i2 >= 3) {
            int i4 = i + 1;
            int i5 = (bArr[i] & UnsignedBytes.MAX_VALUE) << 8;
            int i6 = i4 + 1;
            i = i6 + 1;
            int i7 = (((bArr[i4] & UnsignedBytes.MAX_VALUE) | i5) << 8) | (bArr[i6] & UnsignedBytes.MAX_VALUE);
            bArr2[i3 + 3] = (byte) h[i7 & 63];
            int i8 = i7 >> 6;
            bArr2[i3 + 2] = (byte) h[i8 & 63];
            int i9 = i8 >> 6;
            bArr2[i3 + 1] = (byte) h[i9 & 63];
            bArr2[i3 + 0] = (byte) h[(i9 >> 6) & 63];
            i2 -= 3;
            i3 += 4;
        }
        if (i2 == 1) {
            int i10 = i + 1;
            int i11 = (bArr[i] & UnsignedBytes.MAX_VALUE) << 4;
            bArr2[i3 + 3] = 61;
            bArr2[i3 + 2] = 61;
            bArr2[i3 + 1] = (byte) h[i11 & 63];
            bArr2[i3 + 0] = (byte) h[(i11 >> 6) & 63];
        } else if (i2 == 2) {
            int i12 = i + 1;
            int i13 = i12 + 1;
            int i14 = ((bArr[i12] & UnsignedBytes.MAX_VALUE) | ((bArr[i] & UnsignedBytes.MAX_VALUE) << 8)) << 2;
            bArr2[i3 + 3] = 61;
            bArr2[i3 + 2] = (byte) h[i14 & 63];
            int i15 = i14 >> 6;
            bArr2[i3 + 1] = (byte) h[i15 & 63];
            bArr2[i3 + 0] = (byte) h[(i15 >> 6) & 63];
        }
        return bArr2;
    }
}
