package com.adobe.creativesdk.foundation.internal.grid.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class DynamicHeightImageView extends ImageView {
    public static final float radius = 2.0f;
    Path clipPath;
    private double mHeightRatio;
    RectF rect;

    @TargetApi(11)
    public DynamicHeightImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.clipPath = new Path();
        this.rect = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    @TargetApi(11)
    public DynamicHeightImageView(Context context) {
        super(context);
        this.clipPath = new Path();
        this.rect = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    public void setHeightRatio(double d2) {
        if (d2 != this.mHeightRatio) {
            this.mHeightRatio = d2;
            requestLayout();
        }
    }

    public double getHeightRatio() {
        return this.mHeightRatio;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mHeightRatio > 0.0d) {
            int size = View.MeasureSpec.getSize(i);
            setMeasuredDimension(size, (int) (((double) size) * this.mHeightRatio));
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.rect.left = 0.0f;
        this.rect.top = 0.0f;
        this.rect.right = getWidth();
        this.rect.bottom = getHeight();
        this.clipPath.addRoundRect(this.rect, 2.0f, 2.0f, Path.Direction.CW);
        canvas.clipPath(this.clipPath);
        super.onDraw(canvas);
    }
}
