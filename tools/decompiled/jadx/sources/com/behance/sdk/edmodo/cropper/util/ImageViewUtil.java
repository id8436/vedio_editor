package com.behance.sdk.edmodo.cropper.util;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ImageViewUtil {
    public static Rect getBitmapRectCenterInside(Bitmap bitmap, View view) {
        return getBitmapRectCenterInsideHelper(bitmap.getWidth(), bitmap.getHeight(), view.getWidth(), view.getHeight());
    }

    public static Rect getBitmapRectCenterInside(int i, int i2, int i3, int i4) {
        return getBitmapRectCenterInsideHelper(i, i2, i3, i4);
    }

    private static Rect getBitmapRectCenterInsideHelper(int i, int i2, int i3, int i4) {
        double d2;
        double d3;
        int iRound;
        int iRound2;
        double d4 = ((double) i3) / ((double) i);
        double d5 = ((double) i4) / ((double) i2);
        if (d4 == Double.POSITIVE_INFINITY && d5 == Double.POSITIVE_INFINITY) {
            d2 = i;
            d3 = i2;
        } else if (d4 <= d5) {
            double d6 = i3;
            d2 = d6;
            d3 = (((double) i2) * d6) / ((double) i);
        } else {
            double d7 = i4;
            d2 = (((double) i) * d7) / ((double) i2);
            d3 = d7;
        }
        if (d2 == i3) {
            iRound = 0;
            iRound2 = (int) Math.round((((double) i4) - d3) / 2.0d);
        } else if (d3 == i4) {
            iRound = (int) Math.round((((double) i3) - d2) / 2.0d);
            iRound2 = 0;
        } else {
            iRound = (int) Math.round((((double) i3) - d2) / 2.0d);
            iRound2 = (int) Math.round((((double) i4) - d3) / 2.0d);
        }
        return new Rect(iRound, iRound2, ((int) Math.ceil(d2)) + iRound, ((int) Math.ceil(d3)) + iRound2);
    }
}
