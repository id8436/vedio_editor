package com.behance.sdk.ui.components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCropForegroundView extends View {
    private float aspectRatio;
    private int padHeight;
    private int padWidth;
    private Paint paint;

    public BehanceSDKCropForegroundView(Context context) {
        super(context);
        this.aspectRatio = 1.0f;
        init();
    }

    public BehanceSDKCropForegroundView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aspectRatio = 1.0f;
        init();
    }

    public BehanceSDKCropForegroundView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.aspectRatio = 1.0f;
        init();
    }

    private void init() {
        this.paint = new Paint();
        this.paint.setColor(-654311424);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.aspectRatio < (1.0f * getWidth()) / getHeight()) {
            this.padWidth = (int) ((getWidth() - (getHeight() * this.aspectRatio)) / 2.0f);
            this.padHeight = 0;
            canvas.drawRect(0.0f, 0.0f, this.padWidth, getHeight(), this.paint);
            canvas.drawRect(getWidth() - this.padWidth, 0.0f, getWidth(), getHeight(), this.paint);
            return;
        }
        this.padHeight = (int) ((getHeight() - (getWidth() / this.aspectRatio)) / 2.0f);
        this.padWidth = 0;
        canvas.drawRect(0.0f, 0.0f, getWidth(), this.padHeight, this.paint);
        canvas.drawRect(0.0f, getHeight() - this.padHeight, getWidth(), getHeight(), this.paint);
    }

    public void setAspectRatio(float f2) {
        this.aspectRatio = f2;
    }

    public int getPadWidth() {
        return this.padWidth;
    }

    public int getPadHeight() {
        return this.padHeight;
    }
}
