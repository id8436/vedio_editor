package com.l.b.a;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: QPEncoderStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class j extends FilterOutputStream {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final char[] f3617e = {'0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3621d;

    public j(OutputStream outputStream, int i) {
        super(outputStream);
        this.f3618a = 0;
        this.f3620c = false;
        this.f3621d = false;
        this.f3619b = i - 1;
    }

    public j(OutputStream outputStream) {
        this(outputStream, 76);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            write(bArr[i + i3]);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        int i2 = i & 255;
        if (this.f3620c) {
            if (i2 == 13 || i2 == 10) {
                a(32, true);
            } else {
                a(32, false);
            }
            this.f3620c = false;
        }
        if (i2 == 13) {
            this.f3621d = true;
            a();
            return;
        }
        if (i2 == 10) {
            if (!this.f3621d) {
                a();
            }
        } else if (i2 == 32) {
            this.f3620c = true;
        } else if (i2 < 32 || i2 >= 127 || i2 == 61) {
            a(i2, true);
        } else {
            a(i2, false);
        }
        this.f3621d = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
    }

    private void a() throws IOException {
        this.out.write(13);
        this.out.write(10);
        this.f3618a = 0;
    }

    protected void a(int i, boolean z) throws IOException {
        if (z) {
            int i2 = this.f3618a + 3;
            this.f3618a = i2;
            if (i2 > this.f3619b) {
                this.out.write(61);
                this.out.write(13);
                this.out.write(10);
                this.f3618a = 3;
            }
            this.out.write(61);
            this.out.write(f3617e[i >> 4]);
            this.out.write(f3617e[i & 15]);
            return;
        }
        int i3 = this.f3618a + 1;
        this.f3618a = i3;
        if (i3 > this.f3619b) {
            this.out.write(61);
            this.out.write(13);
            this.out.write(10);
            this.f3618a = 1;
        }
        this.out.write(i);
    }
}
