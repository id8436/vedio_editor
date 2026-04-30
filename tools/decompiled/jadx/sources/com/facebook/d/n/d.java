package com.facebook.d.n;

import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Base64;
import com.google.common.base.Ascii;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: WebpSupportStatus.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f1994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f1995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f1996c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static b f1997d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f1998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f1999f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte[] f2000g;
    private static final byte[] h;
    private static final byte[] i;
    private static final byte[] j;
    private static final byte[] k;

    static {
        f1994a = Build.VERSION.SDK_INT <= 17;
        f1995b = Build.VERSION.SDK_INT >= 14;
        f1996c = b();
        f1997d = null;
        f1998e = false;
        f1999f = false;
        f2000g = a("RIFF");
        h = a("WEBP");
        i = a("VP8 ");
        j = a("VP8L");
        k = a("VP8X");
    }

    public static b a() {
        b bVar;
        if (f1999f) {
            return f1997d;
        }
        try {
            bVar = (b) Class.forName("com.facebook.webpsupport.WebpBitmapFactoryImpl").newInstance();
        } catch (Throwable th) {
            bVar = null;
        }
        f1999f = true;
        return bVar;
    }

    private static byte[] a(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII not found!", e2);
        }
    }

    private static boolean b() {
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (Build.VERSION.SDK_INT == 17) {
            byte[] bArrDecode = Base64.decode("UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==", 0);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
            if (options.outHeight != 1 || options.outWidth != 1) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(byte[] bArr, int i2) {
        return a(bArr, i2 + 12, k) && ((bArr[i2 + 20] & 2) == 2);
    }

    public static boolean b(byte[] bArr, int i2) {
        return a(bArr, i2 + 12, i);
    }

    public static boolean c(byte[] bArr, int i2) {
        return a(bArr, i2 + 12, j);
    }

    public static boolean a(byte[] bArr, int i2, int i3) {
        return i3 >= 21 && a(bArr, i2 + 12, k);
    }

    public static boolean d(byte[] bArr, int i2) {
        return a(bArr, i2 + 12, k) && ((bArr[i2 + 20] & Ascii.DLE) == 16);
    }

    public static boolean b(byte[] bArr, int i2, int i3) {
        return i3 >= 20 && a(bArr, i2, f2000g) && a(bArr, i2 + 8, h);
    }

    private static boolean a(byte[] bArr, int i2, byte[] bArr2) {
        if (bArr2 == null || bArr == null || bArr2.length + i2 > bArr.length) {
            return false;
        }
        for (int i3 = 0; i3 < bArr2.length; i3++) {
            if (bArr[i3 + i2] != bArr2[i3]) {
                return false;
            }
        }
        return true;
    }
}
