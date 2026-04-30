package com.b.a.j;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import com.google.common.primitives.UnsignedBytes;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

/* JADX INFO: compiled from: Util.java */
/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f1234a = "0123456789abcdef".toCharArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f1235b = new char[64];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final char[] f1236c = new char[40];

    public static String a(byte[] bArr) {
        String strA;
        synchronized (f1235b) {
            strA = a(bArr, f1235b);
        }
        return strA;
    }

    private static String a(byte[] bArr, char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
            cArr[i * 2] = f1234a[i2 >>> 4];
            cArr[(i * 2) + 1] = f1234a[i2 & 15];
        }
        return new String(cArr);
    }

    @TargetApi(19)
    public static int a(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException e2) {
            }
        }
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    public static int a(int i, int i2, Bitmap.Config config) {
        return i * i2 * a(config);
    }

    private static int a(Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        switch (i.f1237a[config.ordinal()]) {
            case 1:
                return 1;
            case 2:
            case 3:
                return 2;
            default:
                return 4;
        }
    }

    public static boolean a(int i, int i2) {
        return b(i) && b(i2);
    }

    private static boolean b(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    public static void a() {
        if (!b()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean c() {
        return !b();
    }

    public static <T> Queue<T> a(int i) {
        return new ArrayDeque(i);
    }

    public static <T> List<T> a(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
