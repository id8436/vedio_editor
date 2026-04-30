package com.behance.sdk.ui.components;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGradientSeekBar extends View {
    private ArgbEvaluator evaluator;
    private int[] gradientColors;
    private Paint indicatorFillPaint;
    private Paint indicatorStrokePaint;
    private int indicatorThickness;
    private int max;
    private boolean orientationHorizontal;
    private int padding;
    private Path path;
    private float pos;
    private int progress;
    private RectF rectF;
    private ShapeDrawable seekBackground;
    private SeekListener seekListener;
    private SeekSelectionType selectionType;

    public interface SeekListener {
        void onProgressChanged(int i);
    }

    public enum SeekSelectionType {
        arrows,
        box
    }

    public BehanceSDKGradientSeekBar(Context context) {
        super(context);
        this.orientationHorizontal = true;
        init(context, null, 0);
    }

    public BehanceSDKGradientSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.orientationHorizontal = true;
        init(context, attributeSet, 0);
    }

    public BehanceSDKGradientSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.orientationHorizontal = true;
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKGradientSeekBar, i, 0);
            this.orientationHorizontal = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BehanceSDKGradientSeekBar_orientation_horizontal, true);
            switch (typedArrayObtainStyledAttributes.getInt(R.styleable.BehanceSDKGradientSeekBar_indicator_type, 0)) {
                case 0:
                    this.selectionType = SeekSelectionType.arrows;
                    this.max = context.getResources().getInteger(R.integer.bsdk_gradient_seek_bar_default_max);
                    break;
                case 1:
                    this.selectionType = SeekSelectionType.box;
                    this.indicatorThickness = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BehanceSDKGradientSeekBar_indicatorBoxThickness, context.getResources().getDimensionPixelSize(R.dimen.bsdk_gradient_seek_bar_default_padding_horizontal));
                    this.max = context.getResources().getInteger(R.integer.bsdk_gradient_seek_bar_default_max);
                    break;
            }
            this.padding = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BehanceSDKGradientSeekBar_gradient_padding, context.getResources().getDimensionPixelSize(R.dimen.bsdk_gradient_seek_bar_default_padding_horizontal));
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.selectionType = SeekSelectionType.box;
            this.padding = context.getResources().getDimensionPixelSize(R.dimen.bsdk_gradient_seek_bar_default_padding_horizontal);
            this.indicatorThickness = context.getResources().getDimensionPixelSize(R.dimen.sdk_gradient_seek_bar_default_indicator_width);
            this.max = context.getResources().getInteger(R.integer.bsdk_gradient_seek_bar_default_max);
        }
        this.path = new Path();
        this.rectF = new RectF();
        if (this.orientationHorizontal) {
            constrainAndSetPosX(0.0f);
        } else {
            constrainAndSetPosY(0.0f);
        }
        this.evaluator = new ArgbEvaluator();
        this.indicatorStrokePaint = new Paint(1);
        this.indicatorStrokePaint.setStyle(Paint.Style.STROKE);
        this.indicatorStrokePaint.setStrokeWidth(2.0f);
        this.indicatorFillPaint = new Paint(1);
        this.indicatorFillPaint.setStyle(Paint.Style.FILL);
        switch (this.selectionType) {
            case arrows:
                this.indicatorStrokePaint.setColor(603979776);
                this.indicatorFillPaint.setColor(-1);
                break;
            case box:
                this.indicatorStrokePaint.setColor(-1);
                break;
        }
        setGradient(ViewCompat.MEASURED_STATE_MASK);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.behance.sdk.ui.components.BehanceSDKGradientSeekBar.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                    case 1:
                    case 2:
                        if (BehanceSDKGradientSeekBar.this.orientationHorizontal) {
                            BehanceSDKGradientSeekBar.this.constrainAndSetPosX(motionEvent.getX());
                        } else {
                            BehanceSDKGradientSeekBar.this.constrainAndSetPosY(motionEvent.getY());
                        }
                        BehanceSDKGradientSeekBar.this.setProgressForPos();
                        if (BehanceSDKGradientSeekBar.this.seekListener != null) {
                            BehanceSDKGradientSeekBar.this.seekListener.onProgressChanged(BehanceSDKGradientSeekBar.this.getProgress());
                        }
                        BehanceSDKGradientSeekBar.this.setIndicatorFillPaintColor();
                        BehanceSDKGradientSeekBar.this.invalidate();
                        return true;
                    default:
                        return false;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIndicatorFillPaintColor() {
        if (this.selectionType == SeekSelectionType.box) {
            this.indicatorFillPaint.setColor(getSelectedColor());
        }
    }

    private int getSelectedColor() {
        float progressPercent = getProgressPercent();
        int length = this.gradientColors.length - 1;
        return ((Integer) this.evaluator.evaluate((progressPercent % (1.0f / length)) * length, Integer.valueOf(this.gradientColors[constrainColorPos(Math.floor(length * progressPercent))]), Integer.valueOf(this.gradientColors[constrainColorPos(Math.ceil(progressPercent * length))]))).intValue();
    }

    private int constrainColorPos(double d2) {
        return (int) Math.min(this.gradientColors.length - 1, Math.max(0.0d, d2));
    }

    public void setGradient(int i) {
        setGradient(ViewCompat.MEASURED_STATE_MASK, i);
    }

    public void setGradient(int i, int i2) {
        setGradient(new int[]{i, i2});
    }

    public void setGradient(int[] iArr) {
        LinearGradient linearGradient;
        if (this.orientationHorizontal) {
            this.gradientColors = iArr;
            linearGradient = new LinearGradient(0.0f, 0.0f, getWidth() - (this.padding * 2), 0.0f, iArr, (float[]) null, Shader.TileMode.CLAMP);
        } else {
            for (int i = 0; i < iArr.length / 2; i++) {
                int i2 = iArr[i];
                iArr[(iArr.length - i) - 1] = iArr[i];
                iArr[i] = i2;
            }
            this.gradientColors = iArr;
            linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, getHeight() - (this.padding * 2), iArr, (float[]) null, Shader.TileMode.CLAMP);
        }
        this.seekBackground = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
        this.seekBackground.setIntrinsicHeight(150);
        this.seekBackground.getPaint().setShader(linearGradient);
        setIndicatorFillPaintColor();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.seekBackground == null) {
            setGradient(ViewCompat.MEASURED_STATE_MASK);
        }
        this.seekBackground.setBounds(this.padding, this.padding, getWidth() - this.padding, getHeight() - this.padding);
        this.seekBackground.draw(canvas);
        if (this.orientationHorizontal) {
            switch (this.selectionType) {
                case arrows:
                    int height = (int) (((double) (getHeight() - (this.padding * 2))) / 4.5d);
                    this.path.reset();
                    this.path.moveTo(this.pos - height, this.padding);
                    this.path.lineTo(this.pos + height, this.padding);
                    this.path.lineTo(this.pos, this.padding + height);
                    this.path.close();
                    canvas.drawPath(this.path, this.indicatorFillPaint);
                    this.path.reset();
                    this.path.moveTo(this.pos - height, getHeight() - this.padding);
                    this.path.lineTo(this.pos + height, getHeight() - this.padding);
                    this.path.lineTo(this.pos, (getHeight() - this.padding) - height);
                    this.path.close();
                    canvas.drawPath(this.path, this.indicatorFillPaint);
                    this.rectF.set(this.pos - (height * 1.5f), this.padding - height, this.pos + (height * 1.5f), r0 + this.padding + height);
                    canvas.drawRoundRect(this.rectF, height / 2.0f, height / 2.0f, this.indicatorStrokePaint);
                    break;
                case box:
                    canvas.drawRect(this.pos - (this.indicatorThickness / 2), 0.0f, (this.indicatorThickness / 2) + this.pos, getHeight(), this.indicatorFillPaint);
                    canvas.drawRect(this.pos - (this.indicatorThickness / 2), 0.0f, (this.indicatorThickness / 2) + this.pos, getHeight(), this.indicatorStrokePaint);
                    break;
            }
        }
        switch (this.selectionType) {
            case arrows:
                int height2 = (int) (((double) (getHeight() - (this.padding * 2))) / 4.5d);
                this.path.reset();
                this.path.moveTo(this.pos - height2, this.padding);
                this.path.lineTo(this.pos + height2, this.padding);
                this.path.lineTo(this.pos, this.padding + height2);
                this.path.close();
                canvas.drawPath(this.path, this.indicatorFillPaint);
                this.path.reset();
                this.path.moveTo(this.pos - height2, getHeight() - this.padding);
                this.path.lineTo(this.pos + height2, getHeight() - this.padding);
                this.path.lineTo(this.pos, (getHeight() - this.padding) - height2);
                this.path.close();
                canvas.drawPath(this.path, this.indicatorFillPaint);
                this.rectF.set(this.pos - (height2 * 1.5f), this.padding - height2, this.pos + (height2 * 1.5f), r0 + this.padding + height2);
                canvas.drawRoundRect(this.rectF, height2 / 2.0f, height2 / 2.0f, this.indicatorStrokePaint);
                break;
            case box:
                canvas.drawRect(0.0f, this.pos - (this.indicatorThickness / 2), getWidth(), this.pos + (this.indicatorThickness / 2), this.indicatorFillPaint);
                canvas.drawRect(0.0f, this.pos - (this.indicatorThickness / 2), getWidth(), this.pos + (this.indicatorThickness / 2), this.indicatorStrokePaint);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void constrainAndSetPosX(float f2) {
        this.pos = Math.max(this.padding, Math.min(getWidth() - this.padding, f2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void constrainAndSetPosY(float f2) {
        this.pos = Math.max(this.padding, Math.min(getHeight() - this.padding, f2));
    }

    public void setProgress(long j) {
        this.progress = (int) j;
        if (this.orientationHorizontal) {
            constrainAndSetPosX(((getWidth() * 1.0f) * j) / this.max);
        } else {
            constrainAndSetPosY(getHeight() - (((getHeight() * 1.0f) * j) / this.max));
        }
        invalidate();
    }

    public int getProgress() {
        return this.progress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProgressForPos() {
        this.progress = Math.round(this.orientationHorizontal ? this.max * getProgressPercent() : this.max * (1.0f - getProgressPercent()));
    }

    private float getProgressPercent() {
        return ((this.pos - this.padding) * 1.0f) / ((this.orientationHorizontal ? getWidth() : getHeight()) - (this.padding * 2));
    }

    public void setMax(int i) {
        this.max = i;
    }

    public void setSeekListener(SeekListener seekListener) {
        this.seekListener = seekListener;
    }

    public void setIndicatorThickness(int i) {
        this.indicatorThickness = i;
    }

    public void setPadding(int i) {
        this.padding = i;
    }

    public int getColor() {
        return getSelectedColor();
    }
}
