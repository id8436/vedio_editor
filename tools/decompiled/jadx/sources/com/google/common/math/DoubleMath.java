package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Booleans;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible(emulated = true)
public final class DoubleMath {

    @VisibleForTesting
    static final int MAX_FACTORIAL = 170;
    private static final double MAX_INT_AS_DOUBLE = 2.147483647E9d;
    private static final double MAX_LONG_AS_DOUBLE_PLUS_ONE = 9.223372036854776E18d;
    private static final double MIN_INT_AS_DOUBLE = -2.147483648E9d;
    private static final double MIN_LONG_AS_DOUBLE = -9.223372036854776E18d;
    private static final double LN_2 = Math.log(2.0d);

    @VisibleForTesting
    static final double[] everySixteenthFactorial = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    @GwtIncompatible("#isMathematicalInteger, com.google.common.math.DoubleUtils")
    static double roundIntermediate(double d2, RoundingMode roundingMode) {
        if (!DoubleUtils.isFinite(d2)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isMathematicalInteger(d2));
                return d2;
            case 2:
                if (d2 < 0.0d && !isMathematicalInteger(d2)) {
                    return d2 - 1.0d;
                }
                return d2;
            case 3:
                if (d2 > 0.0d && !isMathematicalInteger(d2)) {
                    return d2 + 1.0d;
                }
                return d2;
            case 4:
                return d2;
            case 5:
                if (!isMathematicalInteger(d2)) {
                    return d2 + DoubleUtils.copySign(1.0d, d2);
                }
                return d2;
            case 6:
                return Math.rint(d2);
            case 7:
                double dRint = Math.rint(d2);
                return Math.abs(d2 - dRint) == 0.5d ? d2 + DoubleUtils.copySign(0.5d, d2) : dRint;
            case 8:
                double dRint2 = Math.rint(d2);
                return Math.abs(d2 - dRint2) != 0.5d ? dRint2 : d2;
            default:
                throw new AssertionError();
        }
    }

    /* JADX INFO: renamed from: com.google.common.math.DoubleMath$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode = new int[RoundingMode.values().length];

        static {
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    @GwtIncompatible("#roundIntermediate")
    public static int roundToInt(double d2, RoundingMode roundingMode) {
        double dRoundIntermediate = roundIntermediate(d2, roundingMode);
        MathPreconditions.checkInRange((dRoundIntermediate < 2.147483648E9d) & (dRoundIntermediate > -2.147483649E9d));
        return (int) dRoundIntermediate;
    }

    @GwtIncompatible("#roundIntermediate")
    public static long roundToLong(double d2, RoundingMode roundingMode) {
        double dRoundIntermediate = roundIntermediate(d2, roundingMode);
        MathPreconditions.checkInRange((dRoundIntermediate < MAX_LONG_AS_DOUBLE_PLUS_ONE) & (MIN_LONG_AS_DOUBLE - dRoundIntermediate < 1.0d));
        return (long) dRoundIntermediate;
    }

    @GwtIncompatible("#roundIntermediate, java.lang.Math.getExponent, com.google.common.math.DoubleUtils")
    public static BigInteger roundToBigInteger(double d2, RoundingMode roundingMode) {
        double dRoundIntermediate = roundIntermediate(d2, roundingMode);
        if ((dRoundIntermediate < MAX_LONG_AS_DOUBLE_PLUS_ONE) & (MIN_LONG_AS_DOUBLE - dRoundIntermediate < 1.0d)) {
            return BigInteger.valueOf((long) dRoundIntermediate);
        }
        BigInteger bigIntegerShiftLeft = BigInteger.valueOf(DoubleUtils.getSignificand(dRoundIntermediate)).shiftLeft(DoubleUtils.getExponent(dRoundIntermediate) - 52);
        return dRoundIntermediate < 0.0d ? bigIntegerShiftLeft.negate() : bigIntegerShiftLeft;
    }

    @GwtIncompatible("com.google.common.math.DoubleUtils")
    public static boolean isPowerOfTwo(double d2) {
        return d2 > 0.0d && DoubleUtils.isFinite(d2) && LongMath.isPowerOfTwo(DoubleUtils.getSignificand(d2));
    }

    public static double log2(double d2) {
        return Math.log(d2) / LN_2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007c  */
    @com.google.common.annotations.GwtIncompatible("java.lang.Math.getExponent, com.google.common.math.DoubleUtils")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int log2(double r8, java.math.RoundingMode r10) {
        /*
            r1 = 1
            r2 = 0
            r4 = 0
            int r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r0 <= 0) goto L29
            boolean r0 = com.google.common.math.DoubleUtils.isFinite(r8)
            if (r0 == 0) goto L29
            r0 = r1
        Lf:
            java.lang.String r3 = "x must be positive and finite"
            com.google.common.base.Preconditions.checkArgument(r0, r3)
            int r3 = com.google.common.math.DoubleUtils.getExponent(r8)
            boolean r0 = com.google.common.math.DoubleUtils.isNormal(r8)
            if (r0 != 0) goto L2b
            r0 = 4841369599423283200(0x4330000000000000, double:4.503599627370496E15)
            double r0 = r0 * r8
            int r0 = log2(r0, r10)
            int r0 = r0 + (-52)
        L28:
            return r0
        L29:
            r0 = r2
            goto Lf
        L2b:
            int[] r0 = com.google.common.math.DoubleMath.AnonymousClass1.$SwitchMap$java$math$RoundingMode
            int r4 = r10.ordinal()
            r0 = r0[r4]
            switch(r0) {
                case 1: goto L3c;
                case 2: goto L43;
                case 3: goto L49;
                case 4: goto L51;
                case 5: goto L60;
                case 6: goto L6f;
                case 7: goto L6f;
                case 8: goto L6f;
                default: goto L36;
            }
        L36:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L3c:
            boolean r0 = isPowerOfTwo(r8)
            com.google.common.math.MathPreconditions.checkRoundingUnnecessary(r0)
        L43:
            r1 = r2
        L44:
            if (r1 == 0) goto L7c
            int r0 = r3 + 1
            goto L28
        L49:
            boolean r0 = isPowerOfTwo(r8)
            if (r0 == 0) goto L44
            r1 = r2
            goto L44
        L51:
            if (r3 >= 0) goto L5c
            r0 = r1
        L54:
            boolean r4 = isPowerOfTwo(r8)
            if (r4 != 0) goto L5e
        L5a:
            r1 = r1 & r0
            goto L44
        L5c:
            r0 = r2
            goto L54
        L5e:
            r1 = r2
            goto L5a
        L60:
            if (r3 < 0) goto L6b
            r0 = r1
        L63:
            boolean r4 = isPowerOfTwo(r8)
            if (r4 != 0) goto L6d
        L69:
            r1 = r1 & r0
            goto L44
        L6b:
            r0 = r2
            goto L63
        L6d:
            r1 = r2
            goto L69
        L6f:
            double r4 = com.google.common.math.DoubleUtils.scaleNormalize(r8)
            double r4 = r4 * r4
            r6 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 > 0) goto L44
            r1 = r2
            goto L44
        L7c:
            r0 = r3
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.DoubleMath.log2(double, java.math.RoundingMode):int");
    }

    @GwtIncompatible("java.lang.Math.getExponent, com.google.common.math.DoubleUtils")
    public static boolean isMathematicalInteger(double d2) {
        return DoubleUtils.isFinite(d2) && (d2 == 0.0d || 52 - Long.numberOfTrailingZeros(DoubleUtils.getSignificand(d2)) <= DoubleUtils.getExponent(d2));
    }

    public static double factorial(int i) {
        MathPreconditions.checkNonNegative("n", i);
        if (i > MAX_FACTORIAL) {
            return Double.POSITIVE_INFINITY;
        }
        double d2 = 1.0d;
        for (int i2 = (i & (-16)) + 1; i2 <= i; i2++) {
            d2 *= (double) i2;
        }
        return everySixteenthFactorial[i >> 4] * d2;
    }

    public static boolean fuzzyEquals(double d2, double d3, double d4) {
        MathPreconditions.checkNonNegative("tolerance", d4);
        return DoubleUtils.copySign(d2 - d3, 1.0d) <= d4 || d2 == d3 || (Double.isNaN(d2) && Double.isNaN(d3));
    }

    public static int fuzzyCompare(double d2, double d3, double d4) {
        if (fuzzyEquals(d2, d3, d4)) {
            return 0;
        }
        if (d2 < d3) {
            return -1;
        }
        if (d2 > d3) {
            return 1;
        }
        return Booleans.compare(Double.isNaN(d2), Double.isNaN(d3));
    }

    @GwtIncompatible("com.google.common.math.DoubleUtils")
    final class MeanAccumulator {
        private long count;
        private double mean;

        private MeanAccumulator() {
            this.count = 0L;
            this.mean = 0.0d;
        }

        /* synthetic */ MeanAccumulator(AnonymousClass1 anonymousClass1) {
            this();
        }

        void add(double d2) {
            Preconditions.checkArgument(DoubleUtils.isFinite(d2));
            this.count++;
            this.mean += (d2 - this.mean) / this.count;
        }

        double mean() {
            Preconditions.checkArgument(this.count > 0, "Cannot take mean of 0 values");
            return this.mean;
        }
    }

    @GwtIncompatible("MeanAccumulator")
    public static double mean(double... dArr) {
        MeanAccumulator meanAccumulator = new MeanAccumulator(null);
        for (double d2 : dArr) {
            meanAccumulator.add(d2);
        }
        return meanAccumulator.mean();
    }

    @GwtIncompatible("MeanAccumulator")
    public static double mean(int... iArr) {
        MeanAccumulator meanAccumulator = new MeanAccumulator(null);
        for (int i : iArr) {
            meanAccumulator.add(i);
        }
        return meanAccumulator.mean();
    }

    @GwtIncompatible("MeanAccumulator")
    public static double mean(long... jArr) {
        MeanAccumulator meanAccumulator = new MeanAccumulator(null);
        for (long j : jArr) {
            meanAccumulator.add(j);
        }
        return meanAccumulator.mean();
    }

    @GwtIncompatible("MeanAccumulator")
    public static double mean(Iterable<? extends Number> iterable) {
        MeanAccumulator meanAccumulator = new MeanAccumulator(null);
        Iterator<? extends Number> it = iterable.iterator();
        while (it.hasNext()) {
            meanAccumulator.add(it.next().doubleValue());
        }
        return meanAccumulator.mean();
    }

    @GwtIncompatible("MeanAccumulator")
    public static double mean(Iterator<? extends Number> it) {
        MeanAccumulator meanAccumulator = new MeanAccumulator(null);
        while (it.hasNext()) {
            meanAccumulator.add(it.next().doubleValue());
        }
        return meanAccumulator.mean();
    }

    private DoubleMath() {
    }
}
