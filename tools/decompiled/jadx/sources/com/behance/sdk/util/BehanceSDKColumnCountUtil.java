package com.behance.sdk.util;

import android.content.Context;
import android.util.DisplayMetrics;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColumnCountUtil {
    private static final double phoneProjectActivityColumnWidth = 1.5d;
    private static final double tabletProjectActivityColumnWidth = 1.75d;

    public static int getDiscoverProjectColumnCount(Context context) {
        if (context.getResources().getBoolean(R.bool.bsdk_big_screen)) {
            return getColumnCount(context.getResources().getDisplayMetrics(), tabletProjectActivityColumnWidth);
        }
        return getColumnCount(context.getResources().getDisplayMetrics(), 1.5d);
    }

    public static int getActivityColumnCount(Context context) {
        if (context.getResources().getBoolean(R.bool.bsdk_big_screen)) {
            return getColumnCount(context.getResources().getDisplayMetrics(), tabletProjectActivityColumnWidth);
        }
        return getColumnCount(context.getResources().getDisplayMetrics(), 1.5d);
    }

    public static int getImagePickerColumnCount(Context context) {
        return getColumnCount(context.getResources().getDisplayMetrics(), context.getResources().getBoolean(R.bool.bsdk_big_screen) ? 1.0d : 0.65d);
    }

    private static int getColumnCount(DisplayMetrics displayMetrics, double d2) {
        return (int) Math.round((((double) displayMetrics.widthPixels) / ((double) displayMetrics.xdpi)) / d2);
    }
}
