package com.adobe.premiereclip.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.adobe.premiereclip.R;

/* JADX INFO: loaded from: classes2.dex */
public class ColorPickerView extends View {
    private float borderStrokeSize;
    private int height;
    private int mCurrentColor;
    private float mCurrentHue;
    private int mCurrentX;
    private int mCurrentY;
    private OnColorChangedListener mListener;
    private int[] mMainColors;
    private Paint mPaint;
    private int pickerRadiusInner;
    private int pickerRadiusOuter;
    private float strokeWidth;
    private int width;

    public interface OnColorChangedListener {
        void colorChanged(int i);
    }

    public ColorPickerView(Context context) {
        super(context);
        this.mCurrentHue = 0.0f;
        this.mCurrentX = 0;
        this.mCurrentY = 0;
        this.mMainColors = new int[65536];
        this.pickerRadiusInner = getResources().getDimensionPixelOffset(R.dimen.picker_radius_inner);
        this.pickerRadiusOuter = getResources().getDimensionPixelOffset(R.dimen.picker_radius_outer);
        this.borderStrokeSize = getResources().getDimensionPixelSize(R.dimen.picker_border_stroke_size);
        init();
    }

    public void setColorChangeListener(OnColorChangedListener onColorChangedListener) {
        this.mListener = onColorChangedListener;
    }

    public void setCurrentColor(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        this.mCurrentHue = fArr[0];
        int i2 = (this.width - (this.pickerRadiusOuter * 2)) - 1;
        this.mCurrentX = (int) Math.floor(fArr[1] * i2);
        this.mCurrentY = (int) Math.floor((1.0f - fArr[2]) * i2);
        this.mCurrentColor = i;
        updateMainColors();
        if (this.mListener != null) {
            this.mListener.colorChanged(this.mCurrentColor);
        }
    }

    public int getCurrentColor() {
        return this.mCurrentColor;
    }

    public void setCurrentHue(float f2) {
        this.mCurrentHue = f2;
        updateMainColors();
        updateCurrentColor();
    }

    public void setSize(int i) {
        this.height = i;
        this.width = i;
        this.strokeWidth = (this.width - (this.pickerRadiusOuter * 2)) / 256.0f;
    }

    private void init() {
        setCurrentColor(0);
        this.mPaint = new Paint(1);
    }

    private int getCurrentMainColor() {
        int i = (int) ((this.mCurrentHue * 255.0f) / 360.0f);
        float f2 = 0.0f;
        int i2 = 0;
        while (f2 < 256.0f) {
            if (i2 == i) {
                return Color.rgb(255, (int) f2, 0);
            }
            f2 += 6.0f;
            i2++;
        }
        float f3 = 0.0f;
        while (f3 < 256.0f) {
            if (i2 == i) {
                return Color.rgb(255 - ((int) f3), 255, 0);
            }
            f3 += 6.0f;
            i2++;
        }
        float f4 = 0.0f;
        while (f4 < 256.0f) {
            if (i2 == i) {
                return Color.rgb(0, 255, (int) f4);
            }
            f4 += 6.0f;
            i2++;
        }
        float f5 = 0.0f;
        while (f5 < 256.0f) {
            if (i2 == i) {
                return Color.rgb(0, 255 - ((int) f5), 255);
            }
            f5 += 6.0f;
            i2++;
        }
        float f6 = 0.0f;
        while (f6 < 256.0f) {
            if (i2 == i) {
                return Color.rgb((int) f6, 0, 255);
            }
            f6 += 6.0f;
            i2++;
        }
        for (float f7 = 0.0f; f7 < 256.0f; f7 += 6.0f) {
            if (i2 == i) {
                return Color.rgb(255, 0, 255 - ((int) f7));
            }
            i2++;
        }
        return SupportMenu.CATEGORY_MASK;
    }

    private void updateMainColors() {
        int currentMainColor = getCurrentMainColor();
        int[] iArr = new int[256];
        int i = 0;
        int i2 = 0;
        while (i < 256) {
            int i3 = i2;
            for (int i4 = 0; i4 < 256; i4++) {
                if (i == 0) {
                    this.mMainColors[i3] = Color.rgb(255 - (((255 - Color.red(currentMainColor)) * i4) / 255), 255 - (((255 - Color.green(currentMainColor)) * i4) / 255), 255 - (((255 - Color.blue(currentMainColor)) * i4) / 255));
                    iArr[i4] = this.mMainColors[i3];
                } else {
                    this.mMainColors[i3] = Color.rgb(((255 - i) * Color.red(iArr[i4])) / 255, ((255 - i) * Color.green(iArr[i4])) / 255, ((255 - i) * Color.blue(iArr[i4])) / 255);
                }
                i3++;
            }
            i++;
            i2 = i3;
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.mPaint.setStrokeWidth(this.strokeWidth);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 256) {
                this.mPaint.setShader(new LinearGradient(0.0f, this.pickerRadiusOuter, 0.0f, this.height - this.pickerRadiusOuter, new int[]{this.mMainColors[i2], ViewCompat.MEASURED_STATE_MASK}, (float[]) null, Shader.TileMode.REPEAT));
                canvas.drawLine(this.pickerRadiusOuter + (i2 * this.strokeWidth), this.pickerRadiusOuter, this.pickerRadiusOuter + (i2 * this.strokeWidth), this.height - this.pickerRadiusOuter, this.mPaint);
                i = i2 + 1;
            } else {
                this.mPaint.setShader(null);
                this.mPaint.setColor(getResources().getColor(R.color.color_picker_box_border));
                this.mPaint.setStrokeWidth(this.borderStrokeSize);
                canvas.drawLine(this.pickerRadiusOuter, this.pickerRadiusOuter, this.width - this.pickerRadiusOuter, this.pickerRadiusOuter, this.mPaint);
                canvas.drawLine(this.pickerRadiusOuter, this.pickerRadiusOuter, this.pickerRadiusOuter, this.height - this.pickerRadiusOuter, this.mPaint);
                canvas.drawLine(this.pickerRadiusOuter, (this.height - (this.borderStrokeSize / 2.0f)) - this.pickerRadiusOuter, this.width - this.pickerRadiusOuter, (this.height - (this.borderStrokeSize / 2.0f)) - this.pickerRadiusOuter, this.mPaint);
                canvas.drawLine(this.width - this.pickerRadiusOuter, this.pickerRadiusOuter, this.width - this.pickerRadiusOuter, this.height - this.pickerRadiusOuter, this.mPaint);
                this.mPaint.setStyle(Paint.Style.STROKE);
                this.mPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
                canvas.drawCircle(this.mCurrentX + this.pickerRadiusOuter, this.mCurrentY + this.pickerRadiusOuter, this.pickerRadiusOuter - 2, this.mPaint);
                this.mPaint.setStyle(Paint.Style.FILL);
                this.mPaint.setColor(-1);
                canvas.drawCircle(this.mCurrentX + this.pickerRadiusOuter, this.mCurrentY + this.pickerRadiusOuter, this.pickerRadiusOuter - 3, this.mPaint);
                this.mPaint.setColor(this.mCurrentColor);
                canvas.drawCircle(this.mCurrentX + this.pickerRadiusOuter, this.mCurrentY + this.pickerRadiusOuter, this.pickerRadiusInner, this.mPaint);
                return;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Log.d("ColorPickerView", "widthMeasureSpec = " + i + ", heightMeasureSpec" + i2);
        setMeasuredDimension(this.width, this.height);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || action == 2 || action == 1) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (x <= this.pickerRadiusOuter) {
                this.mCurrentX = 0;
            } else if (x >= this.width - this.pickerRadiusOuter) {
                this.mCurrentX = (this.width - (this.pickerRadiusOuter * 2)) - 1;
            } else {
                this.mCurrentX = ((int) x) - this.pickerRadiusOuter;
            }
            if (y <= this.pickerRadiusOuter) {
                this.mCurrentY = 0;
            } else if (y >= this.width - this.pickerRadiusOuter) {
                this.mCurrentY = (this.width - (this.pickerRadiusOuter * 2)) - 1;
            } else {
                this.mCurrentY = ((int) y) - this.pickerRadiusOuter;
            }
            updateCurrentColor();
        }
        return true;
    }

    private void updateCurrentColor() {
        int iFloor = ((int) Math.floor(this.mCurrentX / this.strokeWidth)) + ((((int) Math.floor(this.mCurrentY / this.strokeWidth)) - 1) * 256);
        if (iFloor >= 0 && iFloor < this.mMainColors.length) {
            this.mCurrentColor = this.mMainColors[iFloor];
            if (this.mListener != null) {
                this.mListener.colorChanged(this.mCurrentColor);
            }
            invalidate();
        }
    }
}
