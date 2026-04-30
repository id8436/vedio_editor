package com.adobe.premiereclip.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.adobe.premiereclip.R;

/* JADX INFO: loaded from: classes2.dex */
public class HueBarView extends View {
    private float borderStrokeSize;
    private int height;
    private float mCurrentHue;
    private final int[] mHueBarColors;
    private OnHueChangedListener mListener;
    private Paint mPaint;
    private int pickerRadiusInner;
    private int pickerRadiusOuter;
    private float strokeWidth;
    private int width;

    public interface OnHueChangedListener {
        void hueChanged(float f2);
    }

    public HueBarView(Context context) {
        super(context);
        this.mCurrentHue = 0.0f;
        this.mHueBarColors = new int[258];
        this.pickerRadiusInner = getResources().getDimensionPixelOffset(R.dimen.picker_radius_inner);
        this.pickerRadiusOuter = getResources().getDimensionPixelOffset(R.dimen.picker_radius_outer);
        this.borderStrokeSize = getResources().getDimensionPixelSize(R.dimen.picker_border_stroke_size);
        init();
    }

    public void setHueChangeListener(OnHueChangedListener onHueChangedListener) {
        this.mListener = onHueChangedListener;
    }

    public void setDimensions(int i, int i2) {
        this.width = i;
        this.height = i2;
        this.strokeWidth = (i - (this.pickerRadiusOuter * 2)) / 255.0f;
    }

    public void setCurrentHue(float f2) {
        this.mCurrentHue = f2;
        invalidate();
    }

    private void init() {
        float[] fArr = new float[3];
        Color.colorToHSV(0, fArr);
        this.mCurrentHue = fArr[0];
        float f2 = 0.0f;
        int i = 0;
        while (f2 < 256.0f) {
            this.mHueBarColors[i] = Color.rgb(255, (int) f2, 0);
            f2 += 6.0f;
            i++;
        }
        float f3 = 0.0f;
        while (f3 < 256.0f) {
            this.mHueBarColors[i] = Color.rgb(255 - ((int) f3), 255, 0);
            f3 += 6.0f;
            i++;
        }
        float f4 = 0.0f;
        while (f4 < 256.0f) {
            this.mHueBarColors[i] = Color.rgb(0, 255, (int) f4);
            f4 += 6.0f;
            i++;
        }
        float f5 = 0.0f;
        while (f5 < 256.0f) {
            this.mHueBarColors[i] = Color.rgb(0, 255 - ((int) f5), 255);
            f5 += 6.0f;
            i++;
        }
        float f6 = 0.0f;
        while (f6 < 256.0f) {
            this.mHueBarColors[i] = Color.rgb((int) f6, 0, 255);
            f6 += 6.0f;
            i++;
        }
        for (float f7 = 0.0f; f7 < 256.0f; f7 += 6.0f) {
            this.mHueBarColors[i] = Color.rgb(255, 0, 255 - ((int) f7));
            i++;
        }
        this.mPaint = new Paint(1);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i = (int) ((this.mCurrentHue * 255.0f) / 360.0f);
        this.mPaint.setStrokeWidth(this.strokeWidth);
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < 256) {
                this.mPaint.setColor(this.mHueBarColors[i3]);
                canvas.drawLine(this.pickerRadiusOuter + (i3 * this.strokeWidth), this.borderStrokeSize, this.pickerRadiusOuter + (i3 * this.strokeWidth), this.height - this.borderStrokeSize, this.mPaint);
                i2 = i3 + 1;
            } else {
                this.mPaint.setColor(getResources().getColor(R.color.color_picker_box_border));
                this.mPaint.setStrokeWidth(this.borderStrokeSize);
                canvas.drawLine(this.pickerRadiusOuter, this.borderStrokeSize / 2.0f, this.width - this.pickerRadiusOuter, this.borderStrokeSize / 2.0f, this.mPaint);
                canvas.drawLine(this.pickerRadiusOuter, 0.0f, this.pickerRadiusOuter, this.height, this.mPaint);
                canvas.drawLine(this.pickerRadiusOuter, this.height - (this.borderStrokeSize / 2.0f), this.width - this.pickerRadiusOuter, this.height - (this.borderStrokeSize / 2.0f), this.mPaint);
                canvas.drawLine(this.width - this.pickerRadiusOuter, this.borderStrokeSize / 2.0f, this.width - this.pickerRadiusOuter, this.height, this.mPaint);
                float f2 = this.pickerRadiusOuter + (i * this.strokeWidth) + (this.strokeWidth / 2.0f);
                this.mPaint.setStyle(Paint.Style.STROKE);
                this.mPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
                canvas.drawCircle(f2, this.height / 2, this.pickerRadiusOuter - 2, this.mPaint);
                this.mPaint.setStyle(Paint.Style.FILL);
                this.mPaint.setColor(-1);
                canvas.drawCircle(f2, this.height / 2, this.pickerRadiusOuter - 3, this.mPaint);
                this.mPaint.setColor(this.mHueBarColors[i]);
                canvas.drawCircle(f2, this.height / 2, this.pickerRadiusInner, this.mPaint);
                return;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Log.d("HueBarView", "widthMeasureSpec = " + i + ", heightMeasureSpec" + i2);
        setMeasuredDimension(this.width, this.height);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f2;
        int action = motionEvent.getAction();
        if (action == 0 || action == 2 || action == 1) {
            float x = motionEvent.getX();
            motionEvent.getY();
            if (x < this.pickerRadiusOuter) {
                f2 = 0.0f;
            } else if (x > this.width - this.pickerRadiusOuter) {
                f2 = this.width - (this.pickerRadiusOuter * 2);
            } else {
                f2 = x - this.pickerRadiusOuter;
            }
            this.mCurrentHue = ((f2 / this.strokeWidth) * 360.0f) / 255.0f;
            if (this.mListener != null) {
                this.mListener.hueChanged(this.mCurrentHue);
            }
            invalidate();
        }
        return true;
    }
}
