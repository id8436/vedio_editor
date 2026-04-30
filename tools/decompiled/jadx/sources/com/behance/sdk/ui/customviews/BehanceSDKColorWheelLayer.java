package com.behance.sdk.ui.customviews;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColorWheelLayer extends View {
    Bitmap bitmap;
    private Paint mPaint;
    private Paint mWhitePaint;
    private RectF rectF;

    public BehanceSDKColorWheelLayer(Context context) {
        super(context);
        init();
    }

    public BehanceSDKColorWheelLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public BehanceSDKColorWheelLayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        SweepGradient sweepGradient = new SweepGradient(0.0f, 0.0f, new int[]{SupportMenu.CATEGORY_MASK, -65281, -16776961, -16711681, -16711936, InputDeviceCompat.SOURCE_ANY, SupportMenu.CATEGORY_MASK}, (float[]) null);
        this.mPaint = new Paint(1);
        this.mPaint.setShader(sweepGradient);
        this.mPaint.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fMin = (0.9f * Math.min(getHeight(), getWidth())) / 2.0f;
        canvas.translate(getWidth() / 2, getHeight() / 2);
        if (this.rectF == null) {
            this.rectF = new RectF(-fMin, -fMin, fMin, fMin);
        }
        canvas.drawOval(this.rectF, this.mPaint);
        if (this.mWhitePaint == null) {
            RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, fMin, -1, ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.CLAMP);
            this.mWhitePaint = new Paint(1);
            this.mWhitePaint.setShader(radialGradient);
            this.mWhitePaint.setStyle(Paint.Style.FILL);
        }
        canvas.drawOval(this.rectF, this.mWhitePaint);
    }

    public int getColorAtPixel(int i, int i2) {
        if (this.bitmap == null) {
            if (getWidth() <= 0 || getHeight() <= 0) {
                return -1;
            }
            this.bitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            draw(new Canvas(this.bitmap));
        }
        return this.bitmap.getPixel(Math.max(0, Math.min(this.bitmap.getWidth() - 1, i)), Math.max(0, Math.min(this.bitmap.getHeight() - 1, i2)));
    }
}
