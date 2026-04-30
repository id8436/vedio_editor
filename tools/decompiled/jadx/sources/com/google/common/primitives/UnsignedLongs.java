package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.math.BigInteger;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
@Beta
@GwtCompatible
public final class UnsignedLongs {
    public static final long MAX_VALUE = -1;
    private static final long[] maxValueDivs = new long[37];
    private static final int[] maxValueMods = new int[37];
    private static final int[] maxSafeDigits = new int[37];

    private UnsignedLongs() {
    }

    private static long flip(long j) {
        return Long.MIN_VALUE ^ j;
    }

    public static int compare(long j, long j2) {
        return Longs.compare(flip(j), flip(j2));
    }

    public static long min(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long jFlip = flip(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long jFlip2 = flip(jArr[i]);
            if (jFlip2 < jFlip) {
                jFlip = jFlip2;
            }
        }
        return flip(jFlip);
    }

    public static long max(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long jFlip = flip(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long jFlip2 = flip(jArr[i]);
            if (jFlip2 > jFlip) {
                jFlip = jFlip2;
            }
        }
        return flip(jFlip);
    }

    public static String join(String str, long... jArr) {
        Preconditions.checkNotNull(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 5);
        sb.append(toString(jArr[0]));
        for (int i = 1; i < jArr.length; i++) {
            sb.append(str).append(toString(jArr[i]));
        }
        return sb.toString();
    }

    public static Comparator<long[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    enum LexicographicalComparator implements Comparator<long[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i = 0; i < iMin; i++) {
                if (jArr[i] != jArr2[i]) {
                    return UnsignedLongs.compare(jArr[i], jArr2[i]);
                }
            }
            return jArr.length - jArr2.length;
        }
    }

    public static long divide(long j, long j2) {
        if (j2 < 0) {
            return compare(j, j2) < 0 ? 0L : 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        long j3 = ((j >>> 1) / j2) << 1;
        return ((long) (compare(j - (j3 * j2), j2) < 0 ? 0 : 1)) + j3;
    }

    public static long remainder(long j, long j2) {
        if (j2 < 0) {
            if (compare(j, j2) >= 0) {
                return j - j2;
            }
            return j;
        }
        if (j >= 0) {
            return j % j2;
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (compare(j3, j2) < 0) {
            j2 = 0;
        }
        return j3 - j2;
    }

    public static long parseUnsignedLong(String str) {
        return parseUnsignedLong(str, 10);
    }

    public static long decode(String str) {
        ParseRequest parseRequestFromString = ParseRequest.fromString(str);
        try {
            return parseUnsignedLong(parseRequestFromString.rawValue, parseRequestFromString.radix);
        } catch (NumberFormatException e2) {
            NumberFormatException numberFormatException = new NumberFormatException("Error parsing value: " + str);
            numberFormatException.initCause(e2);
            throw numberFormatException;
        }
    }

    public static long parseUnsignedLong(String str, int i) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        if (i < 2 || i > 36) {
            throw new NumberFormatException("illegal radix: " + i);
        }
        int i2 = maxSafeDigits[i] - 1;
        long j = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            int iDigit = Character.digit(str.charAt(i3), i);
            if (iDigit == -1) {
                throw new NumberFormatException(str);
            }
            if (i3 > i2 && overflowInParse(j, iDigit, i)) {
                throw new NumberFormatException("Too large for unsigned long: " + str);
            }
            j = (j * ((long) i)) + ((long) iDigit);
        }
        return j;
    }

    private static boolean overflowInParse(long j, int i, int i2) {
        if (j < 0) {
            return true;
        }
        if (j < maxValueDivs[i2]) {
            return false;
        }
        return j > maxValueDivs[i2] || i > maxValueMods[i2];
    }

    public static String toString(long j) {
        return toString(j, 10);
    }

    public static String toString(long j, int i) {
        int i2;
        Preconditions.checkArgument(i >= 2 && i <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", Integer.valueOf(i));
        if (j == 0) {
            return "0";
        }
        char[] cArr = new char[64];
        int length = cArr.length;
        if (j < 0) {
            long jDivide = divide(j, i);
            int i3 = length - 1;
            cArr[i3] = Character.forDigit((int) (j - (((long) i) * jDivide)), i);
            i2 = i3;
            j = jDivide;
        } else {
            i2 = length;
        }
        while (j > 0) {
            int i4 = i2 - 1;
            cArr[i4] = Character.forDigit((int) (j % ((long) i)), i);
            j /= (long) i;
            i2 = i4;
        }
        return new String(cArr, i2, cArr.length - i2);
    }

    static {
        BigInteger bigInteger = new BigInteger("10000000000000000", 16);
        for (int i = 2; i <= 36; i++) {
            maxValueDivs[i] = divide(-1L, i);
            maxValueMods[i] = (int) remainder(-1L, i);
            maxSafeDigits[i] = bigInteger.toString(i).length() - 1;
        }
    }
}
