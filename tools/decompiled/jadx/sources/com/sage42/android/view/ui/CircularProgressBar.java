package com.sage42.android.view.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.adobe.creativeapps.settings.R;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes3.dex */
public class CircularProgressBar extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f3784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f3785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f3787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3789f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f3790g;
    private int h;
    private RectF i;
    private Rect j;

    public CircularProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.circularProgressBar);
        float fApplyDimension = TypedValue.applyDimension(1, 64.0f, getResources().getDisplayMetrics());
        float fApplyDimension2 = TypedValue.applyDimension(1, 3.0f, getResources().getDisplayMetrics());
        float fApplyDimension3 = TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
        float fApplyDimension4 = TypedValue.applyDimension(2, 14.0f, getResources().getDisplayMetrics());
        try {
            int color = typedArrayObtainStyledAttributes.getColor(R.styleable.circularProgressBar_bgColor, R.color.black);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.circularProgressBar_bgStrokeWidth, (int) fApplyDimension2);
            int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.circularProgressBar_progressColor, R.color.white);
            int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.circularProgressBar_progressStrokeWidth, (int) fApplyDimension2);
            this.f3786c = typedArrayObtainStyledAttributes.getBoolean(R.styleable.circularProgressBar_showProgressText, false);
            int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.circularProgressBar_android_textSize, (int) fApplyDimension4);
            int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.circularProgressBar_android_textColor, R.color.white);
            this.h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.circularProgressBar_android_layout_margin, (int) fApplyDimension3);
            this.f3788e = typedArrayObtainStyledAttributes.getInt(R.styleable.circularProgressBar_max, 100);
            this.f3790g = typedArrayObtainStyledAttributes.getDimension(R.styleable.circularProgressBar_diameter, fApplyDimension);
            this.f3784a = new Paint();
            this.f3784a.setColor(color);
            this.f3784a.setStyle(Paint.Style.STROKE);
            this.f3784a.setAntiAlias(true);
            this.f3784a.setStrokeWidth(dimensionPixelSize);
            this.f3785b = new Paint();
            this.f3785b.setColor(color2);
            this.f3785b.setStyle(Paint.Style.STROKE);
            this.f3785b.setAntiAlias(true);
            this.f3785b.setStrokeWidth(dimensionPixelSize2);
            this.f3787d = new Paint();
            this.f3787d.setColor(i2);
            this.f3787d.setAntiAlias(true);
            this.f3787d.setStyle(Paint.Style.STROKE);
            this.f3787d.setTextAlign(Paint.Align.CENTER);
            this.f3787d.setTextSize(dimensionPixelSize3);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.i == null) {
            this.i = new RectF(this.h, this.h, this.h + this.f3790g, this.h + this.f3790g);
        }
        float f2 = this.f3790g / 2.0f;
        float f3 = f2 + this.h;
        canvas.drawCircle(f3, f3, f2, this.f3784a);
        canvas.drawArc(this.i, 270.0f, BigDecimal.valueOf(this.f3789f).divide(BigDecimal.valueOf(this.f3788e), 4, RoundingMode.HALF_DOWN).multiply(BigDecimal.valueOf(360L)).floatValue(), false, this.f3785b);
        if (this.f3786c) {
            if (this.j == null) {
                this.j = new Rect();
                this.f3787d.getTextBounds("0", 0, 1, this.j);
            }
            canvas.drawText(String.valueOf(this.f3789f) + "%", f3, (this.j.height() >> 1) + f3, this.f3787d);
        }
    }

    public void setProgress(int i) {
        this.f3789f = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = ((int) this.f3790g) + (this.h * 2);
        setMeasuredDimension(i3, i3);
    }

    public void setMax(int i) {
        this.f3788e = i;
    }

    public void setBgColor(int i) {
        this.f3784a.setColor(i);
    }

    public void setBgStrokeWidth(int i) {
        this.f3784a.setStrokeWidth(i);
    }

    public void setProgressColor(int i) {
        this.f3785b.setColor(i);
    }

    public void setProgressStrokeWidth(int i) {
        this.f3785b.setStrokeWidth(i);
    }

    public void setShowText(boolean z) {
        this.f3786c = z;
    }

    public void setTextSize(int i) {
        this.f3787d.setTextSize(i);
    }

    public void setTextColor(int i) {
        this.f3787d.setColor(i);
    }

    public void setDiameter(float f2) {
        this.f3790g = f2;
    }
}
