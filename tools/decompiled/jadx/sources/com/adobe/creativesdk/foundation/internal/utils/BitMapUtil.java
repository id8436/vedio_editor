package com.adobe.creativesdk.foundation.internal.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes2.dex */
public class BitMapUtil {
    public static Bitmap getFinalBitMapWithWhiteBackground(Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() < 100 && bitmap.getHeight() < 100) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, 200, 200, true);
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateScaledBitmap);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            canvas2.drawColor(-1);
            canvas2.drawBitmap(bitmapCreateScaledBitmap, 0.0f, 0.0f, (Paint) null);
            canvas.drawBitmap(bitmapCreateBitmap2, i / 2, i2 / 2, (Paint) null);
            return bitmapCreateBitmap;
        }
        Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas3 = new Canvas(bitmapCopy);
        canvas3.drawColor(-1);
        canvas3.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return bitmapCopy;
    }
}
