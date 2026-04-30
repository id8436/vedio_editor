package com.google.common.math;

import android.support.v7.widget.ActivityChooserView;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible(emulated = true)
public final class IntMath {

    @VisibleForTesting
    static final int FLOOR_SQRT_MAX_INT = 46340;

    @VisibleForTesting
    static final int MAX_POWER_OF_SQRT2_UNSIGNED = -1257966797;

    @VisibleForTesting
    static final byte[] maxLog10ForLeadingZeros = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    @VisibleForTesting
    static final int[] powersOf10 = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};

    @VisibleForTesting
    static final int[] halfPowersOf10 = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED};
    private static final int[] factorials = {1, 1, 2, 6, 24, 120, Sequence.EXPORT_HD_HEIGHT, 5040, 40320, 362880, 3628800, 39916800, 479001600};

    @VisibleForTesting
    static int[] biggestBinomials = {ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    public static boolean isPowerOfTwo(int i) {
        return (((i + (-1)) & i) == 0) & (i > 0);
    }

    @VisibleForTesting
    static int lessThanBranchFree(int i, int i2) {
        return (((i - i2) ^ (-1)) ^ (-1)) >>> 31;
    }

    /* JADX INFO: renamed from: com.google.common.math.IntMath$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode = new int[RoundingMode.values().length];

        static {
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public static int log2(int i, RoundingMode roundingMode) {
        MathPreconditions.checkPositive("x", i);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(i));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
                return (31 - iNumberOfLeadingZeros) + lessThanBranchFree(MAX_POWER_OF_SQRT2_UNSIGNED >>> iNumberOfLeadingZeros, i);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    @GwtIncompatible("need BigIntegerMath to adequately test")
    public static int log10(int i, RoundingMode roundingMode) {
        MathPreconditions.checkPositive("x", i);
        int iLog10Floor = log10Floor(i);
        int i2 = powersOf10[iLog10Floor];
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(i == i2);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return lessThanBranchFree(i2, i) + iLog10Floor;
            case 6:
            case 7:
            case 8:
                return lessThanBranchFree(halfPowersOf10[iLog10Floor], i) + iLog10Floor;
            default:
                throw new AssertionError();
        }
        return iLog10Floor;
    }

    private static int log10Floor(int i) {
        byte b2 = maxLog10ForLeadingZeros[Integer.numberOfLeadingZeros(i)];
        return b2 - lessThanBranchFree(i, powersOf10[b2]);
    }

    @GwtIncompatible("failing tests")
    public static int pow(int i, int i2) {
        MathPreconditions.checkNonNegative("exponent", i2);
        switch (i) {
            case -2:
                if (i2 < 32) {
                    if ((i2 & 1) != 0) {
                    }
                }
                break;
            case -1:
                if ((i2 & 1) != 0) {
                }
                break;
            case 0:
                if (i2 != 0) {
                    break;
                }
                break;
            case 1:
                break;
            case 2:
                break;
            default:
                int i3 = 1;
                int i4 = i;
                while (true) {
                    switch (i2) {
                        case 0:
                            break;
                        case 1:
                            break;
                        default:
                            i3 *= (i2 & 1) == 0 ? 1 : i4;
                            i4 *= i4;
                            i2 >>= 1;
                            break;
                    }
                }
                break;
        }
        return 1;
    }

    @GwtIncompatible("need BigIntegerMath to adequately test")
    public static int sqrt(int i, RoundingMode roundingMode) {
        MathPreconditions.checkNonNegative("x", i);
        int iSqrtFloor = sqrtFloor(i);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(iSqrtFloor * iSqrtFloor == i);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return lessThanBranchFree(iSqrtFloor * iSqrtFloor, i) + iSqrtFloor;
            case 6:
            case 7:
            case 8:
                return lessThanBranchFree((iSqrtFloor * iSqrtFloor) + iSqrtFloor, i) + iSqrtFloor;
            default:
                throw new AssertionError();
        }
        return iSqrtFloor;
    }

    private static int sqrtFloor(int i) {
        return (int) Math.sqrt(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int divide(int r7, int r8, java.math.RoundingMode r9) {
        /*
            r0 = 1
            r1 = 0
            com.google.common.base.Preconditions.checkNotNull(r9)
            if (r8 != 0) goto L10
            java.lang.ArithmeticException r0 = new java.lang.ArithmeticException
            java.lang.String r1 = "/ by zero"
            r0.<init>(r1)
            throw r0
        L10:
            int r2 = r7 / r8
            int r3 = r8 * r2
            int r3 = r7 - r3
            if (r3 != 0) goto L19
        L18:
            return r2
        L19:
            r4 = r7 ^ r8
            int r4 = r4 >> 31
            r5 = r4 | 1
            int[] r4 = com.google.common.math.IntMath.AnonymousClass1.$SwitchMap$java$math$RoundingMode
            int r6 = r9.ordinal()
            r4 = r4[r6]
            switch(r4) {
                case 1: goto L30;
                case 2: goto L35;
                case 3: goto L42;
                case 4: goto L36;
                case 5: goto L3e;
                case 6: goto L46;
                case 7: goto L46;
                case 8: goto L46;
                default: goto L2a;
            }
        L2a:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L30:
            if (r3 != 0) goto L3c
        L32:
            com.google.common.math.MathPreconditions.checkRoundingUnnecessary(r0)
        L35:
            r0 = r1
        L36:
            if (r0 == 0) goto L6e
            int r0 = r2 + r5
        L3a:
            r2 = r0
            goto L18
        L3c:
            r0 = r1
            goto L32
        L3e:
            if (r5 > 0) goto L36
            r0 = r1
            goto L36
        L42:
            if (r5 < 0) goto L36
            r0 = r1
            goto L36
        L46:
            int r3 = java.lang.Math.abs(r3)
            int r4 = java.lang.Math.abs(r8)
            int r4 = r4 - r3
            int r3 = r3 - r4
            if (r3 != 0) goto L6a
            java.math.RoundingMode r3 = java.math.RoundingMode.HALF_UP
            if (r9 == r3) goto L63
            java.math.RoundingMode r3 = java.math.RoundingMode.HALF_EVEN
            if (r9 != r3) goto L66
            r4 = r0
        L5b:
            r3 = r2 & 1
            if (r3 == 0) goto L68
            r3 = r0
        L60:
            r3 = r3 & r4
            if (r3 == 0) goto L64
        L63:
            r1 = r0
        L64:
            r0 = r1
            goto L36
        L66:
            r4 = r1
            goto L5b
        L68:
            r3 = r1
            goto L60
        L6a:
            if (r3 > 0) goto L36
            r0 = r1
            goto L36
        L6e:
            r0 = r2
            goto L3a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.IntMath.divide(int, int, java.math.RoundingMode):int");
    }

    public static int mod(int i, int i2) {
        if (i2 <= 0) {
            throw new ArithmeticException("Modulus " + i2 + " must be > 0");
        }
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }

    public static int gcd(int i, int i2) {
        MathPreconditions.checkNonNegative("a", i);
        MathPreconditions.checkNonNegative("b", i2);
        if (i != 0) {
            if (i2 == 0) {
                return i;
            }
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            int iNumberOfTrailingZeros2 = i >> iNumberOfTrailingZeros;
            int iNumberOfTrailingZeros3 = Integer.numberOfTrailingZeros(i2);
            int i3 = i2 >> iNumberOfTrailingZeros3;
            while (iNumberOfTrailingZeros2 != i3) {
                int i4 = iNumberOfTrailingZeros2 - i3;
                int i5 = (i4 >> 31) & i4;
                int i6 = (i4 - i5) - i5;
                i3 += i5;
                iNumberOfTrailingZeros2 = i6 >> Integer.numberOfTrailingZeros(i6);
            }
            return iNumberOfTrailingZeros2 << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros3);
        }
        return i2;
    }

    public static int checkedAdd(int i, int i2) {
        long j = ((long) i2) + ((long) i);
        MathPreconditions.checkNoOverflow(j == ((long) ((int) j)));
        return (int) j;
    }

    public static int checkedSubtract(int i, int i2) {
        long j = ((long) i) - ((long) i2);
        MathPreconditions.checkNoOverflow(j == ((long) ((int) j)));
        return (int) j;
    }

    public static int checkedMultiply(int i, int i2) {
        long j = ((long) i2) * ((long) i);
        MathPreconditions.checkNoOverflow(j == ((long) ((int) j)));
        return (int) j;
    }

    public static int checkedPow(int i, int i2) {
        MathPreconditions.checkNonNegative("exponent", i2);
        switch (i) {
            case -2:
                MathPreconditions.checkNoOverflow(i2 < 32);
                if ((i2 & 1) != 0) {
                }
                break;
            case -1:
                if ((i2 & 1) != 0) {
                }
                break;
            case 0:
                if (i2 != 0) {
                    break;
                }
                break;
            case 1:
                break;
            case 2:
                MathPreconditions.checkNoOverflow(i2 < 31);
                break;
            default:
                int i3 = 1;
                while (true) {
                    switch (i2) {
                        case 0:
                            break;
                        case 1:
                            break;
                        default:
                            int iCheckedMultiply = (i2 & 1) != 0 ? checkedMultiply(i3, i) : i3;
                            i2 >>= 1;
                            if (i2 > 0) {
                                MathPreconditions.checkNoOverflow((i <= FLOOR_SQRT_MAX_INT) & (-46340 <= i));
                                i *= i;
                                i3 = iCheckedMultiply;
                            } else {
                                i3 = iCheckedMultiply;
                            }
                            break;
                    }
                }
                break;
        }
        return 1;
    }

    public static int factorial(int i) {
        MathPreconditions.checkNonNegative("n", i);
        return i < factorials.length ? factorials[i] : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    @GwtIncompatible("need BigIntegerMath to adequately test")
    public static int binomial(int i, int i2) {
        MathPreconditions.checkNonNegative("n", i);
        MathPreconditions.checkNonNegative("k", i2);
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", Integer.valueOf(i2), Integer.valueOf(i));
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        if (i2 >= biggestBinomials.length || i > biggestBinomials[i2]) {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        switch (i2) {
            case 0:
                return 1;
            case 1:
                return i;
            default:
                long j = 1;
                for (int i3 = 0; i3 < i2; i3++) {
                    j = (j * ((long) (i - i3))) / ((long) (i3 + 1));
                }
                return (int) j;
        }
    }

    public static int mean(int i, int i2) {
        return (i & i2) + ((i ^ i2) >> 1);
    }

    private IntMath() {
    }
}
