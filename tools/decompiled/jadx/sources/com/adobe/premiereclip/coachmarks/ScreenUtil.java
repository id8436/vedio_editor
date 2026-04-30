package com.adobe.premiereclip.coachmarks;

import android.content.res.Resources;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenUtil {
    private static float density = -1.0f;
    private static float[] width = {-1.0f, -1.0f, -1.0f};
    private static float[] height = {-1.0f, -1.0f, -1.0f};
    private static Resources resource = Resources.getSystem();

    public static float getScreenDensity() {
        if (-1.0f == density) {
            density = resource.getDisplayMetrics().density;
        }
        return density;
    }

    public static float getWidthInPx(int i) {
        if (-1.0f == width[i]) {
            width[i] = resource.getDisplayMetrics().widthPixels;
        }
        return width[i];
    }

    public static float getHeightInPx(int i) {
        if (-1.0f == height[i]) {
            height[i] = resource.getDisplayMetrics().heightPixels;
        }
        return height[i];
    }
}
