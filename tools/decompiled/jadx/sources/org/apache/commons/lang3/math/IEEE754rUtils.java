package org.apache.commons.lang3.math;

/* JADX INFO: loaded from: classes3.dex */
public class IEEE754rUtils {
    public static double min(double[] dArr) {
        if (dArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (dArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        double dMin = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dMin = min(dArr[i], dMin);
        }
        return dMin;
    }

    public static float min(float[] fArr) {
        if (fArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (fArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        float fMin = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            fMin = min(fArr[i], fMin);
        }
        return fMin;
    }

    public static double min(double d2, double d3, double d4) {
        return min(min(d2, d3), d4);
    }

    public static double min(double d2, double d3) {
        if (Double.isNaN(d2)) {
            return d3;
        }
        return Double.isNaN(d3) ? d2 : Math.min(d2, d3);
    }

    public static float min(float f2, float f3, float f4) {
        return min(min(f2, f3), f4);
    }

    public static float min(float f2, float f3) {
        if (Float.isNaN(f2)) {
            return f3;
        }
        return Float.isNaN(f3) ? f2 : Math.min(f2, f3);
    }

    public static double max(double[] dArr) {
        if (dArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (dArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        double dMax = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dMax = max(dArr[i], dMax);
        }
        return dMax;
    }

    public static float max(float[] fArr) {
        if (fArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (fArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        float fMax = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            fMax = max(fArr[i], fMax);
        }
        return fMax;
    }

    public static double max(double d2, double d3, double d4) {
        return max(max(d2, d3), d4);
    }

    public static double max(double d2, double d3) {
        if (Double.isNaN(d2)) {
            return d3;
        }
        return Double.isNaN(d3) ? d2 : Math.max(d2, d3);
    }

    public static float max(float f2, float f3, float f4) {
        return max(max(f2, f3), f4);
    }

    public static float max(float f2, float f3) {
        if (Float.isNaN(f2)) {
            return f3;
        }
        return Float.isNaN(f3) ? f2 : Math.max(f2, f3);
    }
}
