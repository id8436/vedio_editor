package android.support.v4.math;

/* JADX INFO: loaded from: classes.dex */
public class MathUtils {
    private MathUtils() {
    }

    public static float clamp(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        return f2 > f4 ? f4 : f2;
    }

    public static double clamp(double d2, double d3, double d4) {
        if (d2 < d3) {
            return d3;
        }
        return d2 > d4 ? d4 : d2;
    }

    public static int clamp(int i, int i2, int i3) {
        if (i < i2) {
            return i2;
        }
        return i > i3 ? i3 : i;
    }
}
