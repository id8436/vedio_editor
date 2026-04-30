package com.adobe.creativeapps.settings.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import com.k.a.bi;

/* JADX INFO: loaded from: classes.dex */
public class CircleTransform implements bi {
    @Override // com.k.a.bi
    public Bitmap transform(Bitmap bitmap) {
        int iMin = Math.min(bitmap.getWidth(), bitmap.getHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, (bitmap.getWidth() - iMin) / 2, (bitmap.getHeight() - iMin) / 2, iMin, iMin);
        if (bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iMin, iMin, bitmap.getConfig());
        Canvas canvas = new Canvas(bitmapCreateBitmap2);
        Paint paint = new Paint();
        paint.setShader(new BitmapShader(bitmapCreateBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
        paint.setAntiAlias(true);
        float f2 = iMin / 2.0f;
        canvas.drawCircle(f2, f2, f2, paint);
        bitmapCreateBitmap.recycle();
        return bitmapCreateBitmap2;
    }

    @Override // com.k.a.bi
    public String key() {
        return "circle";
    }
}
