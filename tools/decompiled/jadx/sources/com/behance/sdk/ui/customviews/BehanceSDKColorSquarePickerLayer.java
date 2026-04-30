package com.behance.sdk.ui.customviews;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.behance.sdk.R;
import com.behance.sdk.listeners.IBehanceSDKGetColorCallback;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColorSquarePickerLayer extends View {
    private final double ANIM_LENGTH;
    private IBehanceSDKGetColorCallback colorCallback;
    private Paint mDotPaint;
    private Paint mInnerStrokePaint;
    private Paint mStrokePaint;
    private int padding;
    private int radius;
    private float x;
    private float y;

    public BehanceSDKColorSquarePickerLayer(Context context) {
        super(context);
        this.x = 1.0f;
        this.y = 1.0f;
        this.ANIM_LENGTH = 500.0d;
        init(context);
    }

    public BehanceSDKColorSquarePickerLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.x = 1.0f;
        this.y = 1.0f;
        this.ANIM_LENGTH = 500.0d;
        init(context);
    }

    public BehanceSDKColorSquarePickerLayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.x = 1.0f;
        this.y = 1.0f;
        this.ANIM_LENGTH = 500.0d;
        init(context);
    }

    private void init(Context context) {
        this.radius = context.getResources().getDimensionPixelSize(R.dimen.bsdk_color_picker_default_wheel_indicator_radius);
        this.padding = 0;
        this.mDotPaint = new Paint(1);
        this.mDotPaint.setColor(-1);
        this.mDotPaint.setStyle(Paint.Style.FILL);
        this.mStrokePaint = new Paint(1);
        this.mStrokePaint.setAntiAlias(true);
        this.mStrokePaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mStrokePaint.setStyle(Paint.Style.STROKE);
        this.mStrokePaint.setStrokeWidth(this.radius / 8);
        this.mInnerStrokePaint = new Paint(1);
        this.mInnerStrokePaint.setAntiAlias(true);
        this.mInnerStrokePaint.setColor(-1);
        this.mInnerStrokePaint.setStyle(Paint.Style.STROKE);
        this.mInnerStrokePaint.setStrokeWidth(this.mStrokePaint.getStrokeWidth() / 2.0f);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.behance.sdk.ui.customviews.BehanceSDKColorSquarePickerLayer.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                        BehanceSDKColorSquarePickerLayer.this.x = motionEvent.getX();
                        BehanceSDKColorSquarePickerLayer.this.y = motionEvent.getY();
                        BehanceSDKColorSquarePickerLayer.this.invalidate();
                        break;
                    case 1:
                        BehanceSDKColorSquarePickerLayer.this.x = motionEvent.getX();
                        BehanceSDKColorSquarePickerLayer.this.y = motionEvent.getY();
                        BehanceSDKColorSquarePickerLayer.this.invalidate();
                        break;
                    case 2:
                        BehanceSDKColorSquarePickerLayer.this.x = motionEvent.getX();
                        BehanceSDKColorSquarePickerLayer.this.y = motionEvent.getY();
                        BehanceSDKColorSquarePickerLayer.this.invalidate();
                        break;
                }
                return true;
            }
        });
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        constrain();
        if (this.colorCallback != null) {
            this.mDotPaint.setColor(this.colorCallback.getColorAt(Math.round(this.x), Math.round(this.y)));
        }
        canvas.drawCircle(this.x, this.y, this.radius, this.mDotPaint);
        canvas.drawCircle(this.x, this.y, this.radius, this.mStrokePaint);
        canvas.drawCircle(this.x, this.y, this.radius - (this.mInnerStrokePaint.getStrokeWidth() / 2.0f), this.mInnerStrokePaint);
    }

    private void constrain() {
        if (this.x < this.padding) {
            this.x = this.padding;
        } else if (this.x > getWidth() - this.padding) {
            this.x = getWidth() - this.padding;
        }
        if (this.y < this.padding) {
            this.y = this.padding;
        } else if (this.y > getHeight() - this.padding) {
            this.y = getHeight() - this.padding;
        }
    }

    public void setColorCallback(IBehanceSDKGetColorCallback iBehanceSDKGetColorCallback) {
        this.colorCallback = iBehanceSDKGetColorCallback;
    }

    private float getInterpolation(float f2) {
        float f3 = f2 - 1.0f;
        return (((f3 * 3.0f) + 2.0f) * f3 * f3) + 1.0f;
    }

    public void setColor(float f2, float f3) {
        this.x = this.padding + ((getWidth() - (this.padding * 2)) * f2);
        this.y = this.padding + ((getHeight() - (this.padding * 2)) * (1.0f - f3));
        invalidate();
    }

    public void setRadius(int i) {
        this.radius = i;
    }

    public int getLastDrawnColor() {
        return this.mDotPaint.getColor();
    }

    public void setPadding(int i) {
        this.padding = i;
    }

    public void onGradientChange() {
        invalidate();
    }
}
