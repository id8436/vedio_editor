package com.google.android.exoplayer.text;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public class SubtitleView extends View {
    private static final float INNER_PADDING_RATIO = 0.125f;
    private int backgroundColor;
    private final float cornerRadius;
    private int edgeColor;
    private int edgeType;
    private int foregroundColor;
    private boolean hasMeasurements;
    private int innerPaddingX;
    private int lastMeasuredWidth;
    private StaticLayout layout;
    private final RectF lineBounds;
    private final float outlineWidth;
    private Paint paint;
    private final float shadowOffset;
    private final float shadowRadius;
    private float spacingAdd;
    private float spacingMult;
    private final StringBuilder textBuilder;
    private TextPaint textPaint;

    public SubtitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SubtitleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.lineBounds = new RectF();
        this.textBuilder = new StringBuilder();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.text, R.attr.textSize, R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, i, 0);
        CharSequence text = typedArrayObtainStyledAttributes.getText(0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 15);
        this.spacingAdd = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.spacingMult = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        int iRound = Math.round((getContext().getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.cornerRadius = iRound;
        this.outlineWidth = iRound;
        this.shadowRadius = iRound;
        this.shadowOffset = iRound;
        this.textPaint = new TextPaint();
        this.textPaint.setAntiAlias(true);
        this.textPaint.setSubpixelText(true);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.innerPaddingX = 0;
        setText(text);
        setTextSize(dimensionPixelSize);
        setStyle(CaptionStyleCompat.DEFAULT);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
        forceUpdate(false);
    }

    public void setText(CharSequence charSequence) {
        this.textBuilder.setLength(0);
        this.textBuilder.append(charSequence);
        forceUpdate(true);
    }

    public void setTextSize(float f2) {
        if (this.textPaint.getTextSize() != f2) {
            this.textPaint.setTextSize(f2);
            this.innerPaddingX = (int) ((INNER_PADDING_RATIO * f2) + 0.5f);
            forceUpdate(true);
        }
    }

    public void setStyle(CaptionStyleCompat captionStyleCompat) {
        this.foregroundColor = captionStyleCompat.foregroundColor;
        this.backgroundColor = captionStyleCompat.backgroundColor;
        this.edgeType = captionStyleCompat.edgeType;
        this.edgeColor = captionStyleCompat.edgeColor;
        setTypeface(captionStyleCompat.typeface);
        super.setBackgroundColor(captionStyleCompat.windowColor);
        forceUpdate(true);
    }

    private void setTypeface(Typeface typeface) {
        if (this.textPaint.getTypeface() != typeface) {
            this.textPaint.setTypeface(typeface);
            forceUpdate(true);
        }
    }

    private void forceUpdate(boolean z) {
        if (z) {
            this.hasMeasurements = false;
            requestLayout();
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (computeMeasurements(View.MeasureSpec.getSize(i))) {
            StaticLayout staticLayout = this.layout;
            int paddingLeft = (this.innerPaddingX * 2) + getPaddingLeft() + getPaddingRight();
            int paddingBottom = getPaddingBottom() + staticLayout.getHeight() + getPaddingTop();
            int lineCount = staticLayout.getLineCount();
            int iMax = 0;
            for (int i3 = 0; i3 < lineCount; i3++) {
                iMax = Math.max((int) Math.ceil(staticLayout.getLineWidth(i3)), iMax);
            }
            setMeasuredDimension(iMax + paddingLeft, paddingBottom);
            return;
        }
        if (Util.SDK_INT >= 11) {
            setTooSmallMeasureDimensionV11();
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    @TargetApi(11)
    private void setTooSmallMeasureDimensionV11() {
        setMeasuredDimension(16777216, 16777216);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        computeMeasurements(i3 - i);
    }

    private boolean computeMeasurements(int i) {
        if (this.hasMeasurements && i == this.lastMeasuredWidth) {
            return true;
        }
        int paddingLeft = i - ((getPaddingLeft() + getPaddingRight()) + (this.innerPaddingX * 2));
        if (paddingLeft <= 0) {
            return false;
        }
        this.hasMeasurements = true;
        this.lastMeasuredWidth = paddingLeft;
        this.layout = new StaticLayout(this.textBuilder, this.textPaint, paddingLeft, null, this.spacingMult, this.spacingAdd, true);
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        StaticLayout staticLayout = this.layout;
        if (staticLayout != null) {
            int iSave = canvas.save();
            int i = this.innerPaddingX;
            canvas.translate(getPaddingLeft() + i, getPaddingTop());
            int lineCount = staticLayout.getLineCount();
            TextPaint textPaint = this.textPaint;
            Paint paint = this.paint;
            RectF rectF = this.lineBounds;
            if (Color.alpha(this.backgroundColor) > 0) {
                float f2 = this.cornerRadius;
                float lineTop = staticLayout.getLineTop(0);
                paint.setColor(this.backgroundColor);
                paint.setStyle(Paint.Style.FILL);
                for (int i2 = 0; i2 < lineCount; i2++) {
                    rectF.left = staticLayout.getLineLeft(i2) - i;
                    rectF.right = staticLayout.getLineRight(i2) + i;
                    rectF.top = lineTop;
                    rectF.bottom = staticLayout.getLineBottom(i2);
                    lineTop = rectF.bottom;
                    canvas.drawRoundRect(rectF, f2, f2, paint);
                }
            }
            if (this.edgeType == 1) {
                textPaint.setStrokeJoin(Paint.Join.ROUND);
                textPaint.setStrokeWidth(this.outlineWidth);
                textPaint.setColor(this.edgeColor);
                textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout.draw(canvas);
            } else if (this.edgeType == 2) {
                textPaint.setShadowLayer(this.shadowRadius, this.shadowOffset, this.shadowOffset, this.edgeColor);
            } else if (this.edgeType == 3 || this.edgeType == 4) {
                boolean z = this.edgeType == 3;
                int i3 = z ? -1 : this.edgeColor;
                int i4 = z ? this.edgeColor : -1;
                float f3 = this.shadowRadius / 2.0f;
                textPaint.setColor(this.foregroundColor);
                textPaint.setStyle(Paint.Style.FILL);
                textPaint.setShadowLayer(this.shadowRadius, -f3, -f3, i3);
                staticLayout.draw(canvas);
                textPaint.setShadowLayer(this.shadowRadius, f3, f3, i4);
            }
            textPaint.setColor(this.foregroundColor);
            textPaint.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            canvas.restoreToCount(iSave);
        }
    }
}
