package com.behance.sdk.ui.components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKRoundedRectImageView extends ImageView {
    public BehanceSDKRoundedRectImageView(Context context) {
        super(context);
    }

    public BehanceSDKRoundedRectImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BehanceSDKRoundedRectImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap;
        Drawable drawable = getDrawable();
        if (drawable != null && getWidth() != 0 && getHeight() != 0) {
            try {
                bitmap = ((BitmapDrawable) ((TransitionDrawable) drawable).getDrawable(r0.getNumberOfLayers() - 1)).getBitmap();
            } catch (ClassCastException e2) {
                try {
                    bitmap = ((BitmapDrawable) drawable).getBitmap();
                } catch (ClassCastException e3) {
                    return;
                }
            }
            Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
            int width = getWidth();
            getHeight();
            canvas.drawBitmap(getCroppedBitmap(bitmapCopy, width), 0.0f, 0.0f, (Paint) null);
        }
    }

    public static Bitmap getCroppedBitmap(Bitmap bitmap, int i) {
        if (bitmap.getWidth() != i || bitmap.getHeight() != i) {
            bitmap = Bitmap.createScaledBitmap(bitmap, i, i, false);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(Color.parseColor("#BAB399"));
        if (Build.VERSION.SDK_INT >= 21) {
            canvas.drawRoundRect(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight(), 5.0f, 5.0f, paint);
        } else {
            canvas.drawRect(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight(), paint);
        }
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap;
    }
}
