package com.d.a.a.b;

import java.math.BigDecimal;

/* JADX INFO: compiled from: NumberInput.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f1365a = String.valueOf(Long.MIN_VALUE).substring(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f1366b = String.valueOf(Long.MAX_VALUE);

    public static int a(char[] cArr, int i, int i2) {
        int i3 = cArr[i] - '0';
        if (i2 > 4) {
            int i4 = ((i3 * 10) + (cArr[r1] - '0')) * 10;
            int i5 = (i4 + (cArr[r1] - '0')) * 10;
            i = i + 1 + 1 + 1 + 1;
            i3 = ((i5 + (cArr[r1] - '0')) * 10) + (cArr[i] - '0');
            i2 -= 4;
            if (i2 > 4) {
                int i6 = ((i3 * 10) + (cArr[r1] - '0')) * 10;
                int i7 = (i6 + (cArr[r1] - '0')) * 10;
                int i8 = i + 1 + 1 + 1;
                return ((i7 + (cArr[i8] - '0')) * 10) + (cArr[i8 + 1] - '0');
            }
        }
        if (i2 > 1) {
            int i9 = i + 1;
            int i10 = (i3 * 10) + (cArr[i9] - '0');
            if (i2 > 2) {
                int i11 = i9 + 1;
                int i12 = (i10 * 10) + (cArr[i11] - '0');
                if (i2 > 3) {
                    return (i12 * 10) + (cArr[i11 + 1] - '0');
                }
                return i12;
            }
            return i10;
        }
        return i3;
    }

    public static long b(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return ((long) a(cArr, i3 + i, 9)) + (((long) a(cArr, i, i3)) * 1000000000);
    }

    public static boolean a(char[] cArr, int i, int i2, boolean z) {
        String str = z ? f1365a : f1366b;
        int length = str.length();
        if (i2 < length) {
            return true;
        }
        if (i2 > length) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int iCharAt = cArr[i + i3] - str.charAt(i3);
            if (iCharAt != 0) {
                return iCharAt < 0;
            }
        }
        return true;
    }

    public static double a(String str) throws NumberFormatException {
        if ("2.2250738585072012e-308".equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    public static BigDecimal b(String str) throws NumberFormatException {
        try {
            return new BigDecimal(str);
        } catch (NumberFormatException e2) {
            throw c(str);
        }
    }

    public static BigDecimal a(char[] cArr) throws NumberFormatException {
        return c(cArr, 0, cArr.length);
    }

    public static BigDecimal c(char[] cArr, int i, int i2) throws NumberFormatException {
        try {
            return new BigDecimal(cArr, i, i2);
        } catch (NumberFormatException e2) {
            throw c(new String(cArr, i, i2));
        }
    }

    private static NumberFormatException c(String str) {
        return new NumberFormatException("Value \"" + str + "\" can not be represented as BigDecimal");
    }
}
