package com.google.common.math;

import com.google.common.base.Preconditions;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes3.dex */
final class DoubleUtils {
    static final int EXPONENT_BIAS = 1023;
    static final long EXPONENT_MASK = 9218868437227405312L;
    static final long IMPLICIT_BIT = 4503599627370496L;
    static final int MAX_EXPONENT = 1023;
    static final int MIN_EXPONENT = -1022;
    private static final long ONE_BITS = Double.doubleToRawLongBits(1.0d);
    static final int SIGNIFICAND_BITS = 52;
    static final long SIGNIFICAND_MASK = 4503599627370495L;
    static final long SIGN_MASK = Long.MIN_VALUE;

    private DoubleUtils() {
    }

    static double nextDown(double d2) {
        return -nextUp(-d2);
    }

    static double nextUp(double d2) {
        if (Double.isNaN(d2)) {
            return d2;
        }
        if (d2 == 0.0d) {
            return Double.MIN_VALUE;
        }
        if (d2 != Double.POSITIVE_INFINITY) {
            long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
            return Double.longBitsToDouble(jDoubleToRawLongBits + ((jDoubleToRawLongBits >> 63) | 1));
        }
        return d2;
    }

    static int getExponent(double d2) {
        return ((int) ((Double.doubleToRawLongBits(d2) & EXPONENT_MASK) >>> 52)) - 1023;
    }

    static long getSignificand(double d2) {
        Preconditions.checkArgument(isFinite(d2), "not a normal value");
        int exponent = getExponent(d2);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2) & SIGNIFICAND_MASK;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : IMPLICIT_BIT | jDoubleToRawLongBits;
    }

    static double copySign(double d2, double d3) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d2) & Long.MAX_VALUE) | (Double.doubleToRawLongBits(d3) & Long.MIN_VALUE));
    }

    static boolean isFinite(double d2) {
        return getExponent(d2) <= 1023;
    }

    static boolean isNormal(double d2) {
        return getExponent(d2) >= MIN_EXPONENT;
    }

    static double scaleNormalize(double d2) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d2) & SIGNIFICAND_MASK) | ONE_BITS);
    }

    static double bigToDouble(BigInteger bigInteger) {
        boolean z = true;
        BigInteger bigIntegerAbs = bigInteger.abs();
        int iBitLength = bigIntegerAbs.bitLength() - 1;
        if (iBitLength < 63) {
            return bigInteger.longValue();
        }
        if (iBitLength > 1023) {
            return ((double) bigInteger.signum()) * Double.POSITIVE_INFINITY;
        }
        int i = (iBitLength - 52) - 1;
        long jLongValue = bigIntegerAbs.shiftRight(i).longValue();
        long j = (jLongValue >> 1) & SIGNIFICAND_MASK;
        if ((jLongValue & 1) == 0 || ((j & 1) == 0 && bigIntegerAbs.getLowestSetBit() >= i)) {
            z = false;
        }
        if (z) {
            j++;
        }
        return Double.longBitsToDouble((j + (((long) (iBitLength + 1023)) << 52)) | (((long) bigInteger.signum()) & Long.MIN_VALUE));
    }

    static double ensureNonNegative(double d2) {
        Preconditions.checkArgument(!Double.isNaN(d2));
        if (d2 > 0.0d) {
            return d2;
        }
        return 0.0d;
    }
}
