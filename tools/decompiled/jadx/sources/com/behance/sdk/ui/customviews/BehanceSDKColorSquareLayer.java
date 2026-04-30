package com.behance.sdk.ui.customviews;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColorSquareLayer extends View {
    private Paint bgPaint;
    private int color;
    private Drawable gradient;
    private int padding;

    public BehanceSDKColorSquareLayer(Context context) {
        super(context);
        init();
    }

    public BehanceSDKColorSquareLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public BehanceSDKColorSquareLayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.color = ViewCompat.MEASURED_STATE_MASK;
        this.padding = 0;
        this.gradient = ContextCompat.getDrawable(getContext(), R.drawable.bsdk_saturation_value_gradient);
        this.bgPaint = new Paint(1);
        this.bgPaint.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawRect(this.padding, this.padding, getWidth() - this.padding, getHeight() - this.padding, this.bgPaint);
        this.gradient.setBounds(this.padding, this.padding, getWidth() - this.padding, getHeight() - this.padding);
        this.gradient.draw(canvas);
    }

    public void setHue(float f2) {
        setColor(new float[]{f2, 1.0f, 2.0f});
    }

    public void setColor(int i) {
        float[] fArr = {0.0f, 1.0f, 2.0f};
        Color.colorToHSV(i, fArr);
        setColor(fArr);
    }

    private void setColor(float[] fArr) {
        this.color = Color.HSVToColor(fArr);
        this.bgPaint.setColor(this.color);
        invalidate();
    }

    public int getColorAtPixel(int i, int i2) {
        if (getWidth() <= 0 || getHeight() <= 0) {
            return -1;
        }
        float[] fArr = {0.0f, ((i - this.padding) * 1.0f) / (getWidth() - (this.padding * 2)), 1.0f - (((i2 - this.padding) * 1.0f) / (getHeight() - (this.padding * 2)))};
        Color.colorToHSV(this.color, fArr);
        return Color.HSVToColor(fArr);
    }

    public void setPadding(int i) {
        this.padding = i;
    }
}
