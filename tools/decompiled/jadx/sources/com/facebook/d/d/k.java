package com.facebook.d.d;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: Preconditions.java */
/* JADX INFO: loaded from: classes2.dex */
public final class k {
    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void a(boolean z, @Nullable Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void a(boolean z, @Nullable String str, @Nullable Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(a(str, objArr));
        }
    }

    public static void b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void b(boolean z, @Nullable Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static <T> T a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    public static <T> T a(T t, @Nullable Object obj) {
        if (t == null) {
            throw new NullPointerException(String.valueOf(obj));
        }
        return t;
    }

    public static int a(int i, int i2) {
        return a(i, i2, "index");
    }

    public static int a(int i, int i2, @Nullable String str) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(b(i, i2, str));
        }
        return i;
    }

    private static String b(int i, int i2, @Nullable String str) {
        if (i < 0) {
            return a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("negative size: " + i2);
        }
        return a("%s (%s) must be less than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    static String a(@Nullable String str, @Nullable Object... objArr) {
        int iIndexOf;
        int i = 0;
        String strValueOf = String.valueOf(str);
        StringBuilder sb = new StringBuilder(strValueOf.length() + (objArr.length * 16));
        int i2 = 0;
        while (i < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i2)) != -1) {
            sb.append(strValueOf.substring(i2, iIndexOf));
            sb.append(objArr[i]);
            i2 = iIndexOf + 2;
            i++;
        }
        sb.append(strValueOf.substring(i2));
        if (i < objArr.length) {
            sb.append(" [");
            int i3 = i + 1;
            sb.append(objArr[i]);
            while (true) {
                int i4 = i3;
                if (i4 >= objArr.length) {
                    break;
                }
                sb.append(", ");
                i3 = i4 + 1;
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
