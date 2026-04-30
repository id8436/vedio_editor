package com.b.a.d.d.a;

import android.support.v4.internal.view.SupportMenu;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: ImageHeaderParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f993b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s f994c;

    static {
        byte[] bytes = new byte[0];
        try {
            bytes = "Exif\u0000\u0000".getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
        }
        f992a = bytes;
    }

    public p(InputStream inputStream) {
        this.f994c = new s(inputStream);
    }

    public boolean a() throws IOException {
        return b().a();
    }

    public q b() throws IOException {
        int iA = this.f994c.a();
        if (iA == 65496) {
            return q.JPEG;
        }
        int iA2 = ((iA << 16) & SupportMenu.CATEGORY_MASK) | (this.f994c.a() & 65535);
        if (iA2 == -1991225785) {
            this.f994c.a(21L);
            return this.f994c.c() >= 3 ? q.PNG_A : q.PNG;
        }
        if ((iA2 >> 8) == 4671814) {
            return q.GIF;
        }
        return q.UNKNOWN;
    }

    public int c() throws IOException {
        boolean z = false;
        if (!a(this.f994c.a())) {
            return -1;
        }
        byte[] bArrD = d();
        boolean z2 = bArrD != null && bArrD.length > f992a.length;
        if (z2) {
            for (int i = 0; i < f992a.length; i++) {
                if (bArrD[i] != f992a[i]) {
                    break;
                }
            }
            z = z2;
        } else {
            z = z2;
        }
        if (z) {
            return a(new r(bArrD));
        }
        return -1;
    }

    private byte[] d() throws IOException {
        short sB;
        int iA;
        long jA;
        do {
            short sB2 = this.f994c.b();
            if (sB2 != 255) {
                if (!Log.isLoggable("ImageHeaderParser", 3)) {
                    return null;
                }
                Log.d("ImageHeaderParser", "Unknown segmentId=" + ((int) sB2));
                return null;
            }
            sB = this.f994c.b();
            if (sB == 218) {
                return null;
            }
            if (sB == 217) {
                if (!Log.isLoggable("ImageHeaderParser", 3)) {
                    return null;
                }
                Log.d("ImageHeaderParser", "Found MARKER_EOI in exif segment");
                return null;
            }
            iA = this.f994c.a() - 2;
            if (sB != 225) {
                jA = this.f994c.a(iA);
            } else {
                byte[] bArr = new byte[iA];
                int iA2 = this.f994c.a(bArr);
                if (iA2 == iA) {
                    return bArr;
                }
                if (!Log.isLoggable("ImageHeaderParser", 3)) {
                    return null;
                }
                Log.d("ImageHeaderParser", "Unable to read segment data, type: " + ((int) sB) + ", length: " + iA + ", actually read: " + iA2);
                return null;
            }
        } while (jA == iA);
        if (!Log.isLoggable("ImageHeaderParser", 3)) {
            return null;
        }
        Log.d("ImageHeaderParser", "Unable to skip enough data, type: " + ((int) sB) + ", wanted to skip: " + iA + ", but actually skipped: " + jA);
        return null;
    }

    private static int a(r rVar) {
        ByteOrder byteOrder;
        int length = "Exif\u0000\u0000".length();
        short sB = rVar.b(length);
        if (sB == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (sB == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Unknown endianness = " + ((int) sB));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        rVar.a(byteOrder);
        int iA = length + rVar.a(length + 4);
        short sB2 = rVar.b(iA);
        for (int i = 0; i < sB2; i++) {
            int iA2 = a(iA, i);
            short sB3 = rVar.b(iA2);
            if (sB3 == 274) {
                short sB4 = rVar.b(iA2 + 2);
                if (sB4 < 1 || sB4 > 12) {
                    if (Log.isLoggable("ImageHeaderParser", 3)) {
                        Log.d("ImageHeaderParser", "Got invalid format code=" + ((int) sB4));
                    }
                } else {
                    int iA3 = rVar.a(iA2 + 4);
                    if (iA3 < 0) {
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Negative tiff component count");
                        }
                    } else {
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Got tagIndex=" + i + " tagType=" + ((int) sB3) + " formatCode=" + ((int) sB4) + " componentCount=" + iA3);
                        }
                        int i2 = iA3 + f993b[sB4];
                        if (i2 > 4) {
                            if (Log.isLoggable("ImageHeaderParser", 3)) {
                                Log.d("ImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) sB4));
                            }
                        } else {
                            int i3 = iA2 + 8;
                            if (i3 < 0 || i3 > rVar.a()) {
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    Log.d("ImageHeaderParser", "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) sB3));
                                }
                            } else if (i2 < 0 || i3 + i2 > rVar.a()) {
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    Log.d("ImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) sB3));
                                }
                            } else {
                                return rVar.b(i3);
                            }
                        }
                    }
                }
            }
        }
        return -1;
    }

    private static int a(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    private static boolean a(int i) {
        return (i & 65496) == 65496 || i == 19789 || i == 18761;
    }
}
