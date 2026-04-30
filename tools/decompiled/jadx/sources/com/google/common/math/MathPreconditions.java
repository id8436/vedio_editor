package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import java.math.BigInteger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
final class MathPreconditions {
    static int checkPositive(@Nullable String str, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(str + " (" + i + ") must be > 0");
        }
        return i;
    }

    static long checkPositive(@Nullable String str, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException(str + " (" + j + ") must be > 0");
        }
        return j;
    }

    static BigInteger checkPositive(@Nullable String str, BigInteger bigInteger) {
        if (bigInteger.signum() <= 0) {
            throw new IllegalArgumentException(str + " (" + bigInteger + ") must be > 0");
        }
        return bigInteger;
    }

    static int checkNonNegative(@Nullable String str, int i) {
        if (i < 0) {
            throw new IllegalArgumentException(str + " (" + i + ") must be >= 0");
        }
        return i;
    }

    static long checkNonNegative(@Nullable String str, long j) {
        if (j < 0) {
            throw new IllegalArgumentException(str + " (" + j + ") must be >= 0");
        }
        return j;
    }

    static BigInteger checkNonNegative(@Nullable String str, BigInteger bigInteger) {
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException(str + " (" + bigInteger + ") must be >= 0");
        }
        return bigInteger;
    }

    static double checkNonNegative(@Nullable String str, double d2) {
        if (d2 < 0.0d) {
            throw new IllegalArgumentException(str + " (" + d2 + ") must be >= 0");
        }
        return d2;
    }

    static void checkRoundingUnnecessary(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    static void checkInRange(boolean z) {
        if (!z) {
            throw new ArithmeticException("not in range");
        }
    }

    static void checkNoOverflow(boolean z) {
        if (!z) {
            throw new ArithmeticException("overflow");
        }
    }

    private MathPreconditions() {
    }
}
