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
public class BehanceSDKColorWheelPickerLayer extends View {
    private final double ANIM_LENGTH;
    private final int SIXTY_FPS;
    private IBehanceSDKGetColorCallback colorCallback;
    private Paint mDotPaint;
    private Paint mStrokePaint;
    private int radius;
    double radiusFactor;
    private Runnable radiusFactorUpdateRunnable;
    private float x;
    private float y;

    public BehanceSDKColorWheelPickerLayer(Context context) {
        super(context);
        this.SIXTY_FPS = 16;
        this.x = 1.0f;
        this.y = 1.0f;
        this.radiusFactor = 1.0d;
        this.ANIM_LENGTH = 500.0d;
        init(context);
    }

    public BehanceSDKColorWheelPickerLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.SIXTY_FPS = 16;
        this.x = 1.0f;
        this.y = 1.0f;
        this.radiusFactor = 1.0d;
        this.ANIM_LENGTH = 500.0d;
        init(context);
    }

    public BehanceSDKColorWheelPickerLayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.SIXTY_FPS = 16;
        this.x = 1.0f;
        this.y = 1.0f;
        this.radiusFactor = 1.0d;
        this.ANIM_LENGTH = 500.0d;
        init(context);
    }

    private void init(Context context) {
        this.radius = context.getResources().getDimensionPixelSize(R.dimen.bsdk_color_picker_default_wheel_indicator_radius);
        this.mDotPaint = new Paint(1);
        this.mDotPaint.setColor(-1);
        this.mDotPaint.setStyle(Paint.Style.FILL);
        this.mStrokePaint = new Paint(1);
        this.mStrokePaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mStrokePaint.setStyle(Paint.Style.STROKE);
        this.mStrokePaint.setStrokeWidth(10.0f);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.behance.sdk.ui.customviews.BehanceSDKColorWheelPickerLayer.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                        BehanceSDKColorWheelPickerLayer.this.removeCallbacks(BehanceSDKColorWheelPickerLayer.this.radiusFactorUpdateRunnable);
                        BehanceSDKColorWheelPickerLayer.this.radiusFactorUpdateRunnable = new Runnable() { // from class: com.behance.sdk.ui.customviews.BehanceSDKColorWheelPickerLayer.1.1
                            private final long timestamp = System.currentTimeMillis();

                            @Override // java.lang.Runnable
                            public void run() {
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                if (jCurrentTimeMillis - this.timestamp <= 500.0d) {
                                    BehanceSDKColorWheelPickerLayer.this.radiusFactor = BehanceSDKColorWheelPickerLayer.this.getInterpolation((float) ((jCurrentTimeMillis - this.timestamp) / 500.0d)) + 1.0f;
                                    BehanceSDKColorWheelPickerLayer.this.postDelayed(BehanceSDKColorWheelPickerLayer.this.radiusFactorUpdateRunnable, 16L);
                                    BehanceSDKColorWheelPickerLayer.this.invalidate();
                                    return;
                                }
                                BehanceSDKColorWheelPickerLayer.this.radiusFactor = 2.0d;
                                BehanceSDKColorWheelPickerLayer.this.invalidate();
                            }
                        };
                        BehanceSDKColorWheelPickerLayer.this.post(BehanceSDKColorWheelPickerLayer.this.radiusFactorUpdateRunnable);
                        BehanceSDKColorWheelPickerLayer.this.x = motionEvent.getX();
                        BehanceSDKColorWheelPickerLayer.this.y = motionEvent.getY();
                        BehanceSDKColorWheelPickerLayer.this.invalidate();
                        break;
                    case 1:
                        BehanceSDKColorWheelPickerLayer.this.removeCallbacks(BehanceSDKColorWheelPickerLayer.this.radiusFactorUpdateRunnable);
                        BehanceSDKColorWheelPickerLayer.this.radiusFactorUpdateRunnable = new Runnable() { // from class: com.behance.sdk.ui.customviews.BehanceSDKColorWheelPickerLayer.1.2
                            private final long timestamp = System.currentTimeMillis();

                            @Override // java.lang.Runnable
                            public void run() {
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                if (jCurrentTimeMillis - this.timestamp <= 500.0d) {
                                    BehanceSDKColorWheelPickerLayer.this.radiusFactor = 2.0f - BehanceSDKColorWheelPickerLayer.this.getInterpolation((float) ((jCurrentTimeMillis - this.timestamp) / 500.0d));
                                    BehanceSDKColorWheelPickerLayer.this.postDelayed(BehanceSDKColorWheelPickerLayer.this.radiusFactorUpdateRunnable, 16L);
                                    BehanceSDKColorWheelPickerLayer.this.invalidate();
                                    return;
                                }
                                BehanceSDKColorWheelPickerLayer.this.radiusFactor = 1.0d;
                                BehanceSDKColorWheelPickerLayer.this.invalidate();
                            }
                        };
                        BehanceSDKColorWheelPickerLayer.this.postDelayed(BehanceSDKColorWheelPickerLayer.this.radiusFactorUpdateRunnable, 16L);
                        BehanceSDKColorWheelPickerLayer.this.x = motionEvent.getX();
                        BehanceSDKColorWheelPickerLayer.this.y = motionEvent.getY();
                        BehanceSDKColorWheelPickerLayer.this.invalidate();
                        break;
                    case 2:
                        BehanceSDKColorWheelPickerLayer.this.x = motionEvent.getX();
                        BehanceSDKColorWheelPickerLayer.this.y = motionEvent.getY();
                        BehanceSDKColorWheelPickerLayer.this.invalidate();
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
        canvas.drawCircle(this.x, this.y, (float) (((double) this.radius) * this.radiusFactor), this.mDotPaint);
        canvas.drawCircle(this.x, this.y, (float) (((double) this.radius) * this.radiusFactor), this.mStrokePaint);
    }

    private void constrain() {
        int width;
        int height = 0;
        int iMin = Math.min(getHeight(), getWidth()) / 2;
        if (getWidth() > getHeight()) {
            width = (getWidth() - getHeight()) / 2;
        } else if (getWidth() < getHeight()) {
            width = 0;
            height = (getHeight() - getWidth()) / 2;
        } else {
            width = 0;
        }
        double d2 = ((double) (iMin - 2)) * 0.9d;
        if (Math.sqrt(Math.pow(Math.abs((this.x - iMin) - width), 2.0d) + Math.pow(Math.abs((this.y - iMin) - height), 2.0d)) > d2) {
            double width2 = this.x - (getWidth() / 2);
            double height2 = this.y - (getHeight() / 2);
            double dAtan = Math.atan(width2 / height2);
            if (height2 <= 0.0d) {
                this.x = width + ((float) (((double) iMin) - (Math.sin(dAtan) * d2)));
                this.y = height + ((float) (((double) iMin) - (d2 * Math.cos(dAtan))));
            } else {
                this.x = width + ((float) (((double) iMin) + (Math.sin(dAtan) * d2)));
                this.y = height + ((float) (((double) iMin) + (d2 * Math.cos(dAtan))));
            }
        }
    }

    public void setColorCallback(IBehanceSDKGetColorCallback iBehanceSDKGetColorCallback) {
        this.colorCallback = iBehanceSDKGetColorCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getInterpolation(float f2) {
        float f3 = f2 - 1.0f;
        return (((f3 * 3.0f) + 2.0f) * f3 * f3) + 1.0f;
    }

    public void setColor(double d2, double d3) {
        this.x = (float) (((double) (getWidth() / 2)) + (((((double) Math.min(getHeight(), getWidth())) * d3) / 2.0d) * Math.cos(d2)));
        this.y = (float) (((double) (getHeight() / 2)) + (((((double) Math.min(getHeight(), getWidth())) * d3) / 2.0d) * Math.sin(d2)));
        constrain();
    }

    public void setRadius(int i) {
        this.radius = i;
    }
}
