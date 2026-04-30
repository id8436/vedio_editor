package com.behance.sdk.edmodo.cropper.util;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AspectRatioUtil {
    public static float calculateAspectRatio(float f2, float f3, float f4, float f5) {
        return (f4 - f2) / (f5 - f3);
    }

    public static float calculateAspectRatio(Rect rect) {
        return rect.width() / rect.height();
    }

    public static float calculateLeft(float f2, float f3, float f4, float f5) {
        return f3 - ((f4 - f2) * f5);
    }

    public static float calculateTop(float f2, float f3, float f4, float f5) {
        return f4 - ((f3 - f2) / f5);
    }

    public static float calculateRight(float f2, float f3, float f4, float f5) {
        return ((f4 - f3) * f5) + f2;
    }

    public static float calculateBottom(float f2, float f3, float f4, float f5) {
        return ((f4 - f2) / f5) + f3;
    }

    public static float calculateWidth(float f2, float f3, float f4) {
        return (f3 - f2) * f4;
    }

    public static float calculateHeight(float f2, float f3, float f4) {
        return (f3 - f2) / f4;
    }
}
