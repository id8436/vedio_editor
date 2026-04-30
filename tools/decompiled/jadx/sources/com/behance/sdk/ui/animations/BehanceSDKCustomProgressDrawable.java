package com.behance.sdk.ui.animations;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.e.f;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCustomProgressDrawable extends Drawable {
    private final Paint paint = new Paint(1);
    private int backgroundColor = 1342210303;
    private int color = -16744193;
    private int level = 0;
    private final int loaderRadius = 40;

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        this.level = i;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return f.a(this.paint.getColor());
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        drawCircle(canvas, 10000, this.backgroundColor);
        drawCircle(canvas, this.level, this.color);
    }

    private void drawCircle(Canvas canvas, int i, int i2) {
        Rect bounds = getBounds();
        this.paint.setColor(i2);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(10.0f);
        canvas.drawArc(new RectF(bounds.centerX() - 40, bounds.centerY() - 40, bounds.centerX() + 40, bounds.centerY() + 40), 0.0f, (int) ((360.0d * ((double) i)) / 10000.0d), false, this.paint);
    }
}
