package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.design.R;
import android.support.v4.content.ContextCompat;
import android.support.v7.graphics.drawable.DrawableWrapper;

/* JADX INFO: loaded from: classes.dex */
class ShadowDrawableWrapper extends DrawableWrapper {
    static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    static final float SHADOW_BOTTOM_SCALE = 1.0f;
    static final float SHADOW_HORIZ_SCALE = 0.5f;
    static final float SHADOW_MULTIPLIER = 1.5f;
    static final float SHADOW_TOP_SCALE = 0.25f;
    private boolean mAddPaddingForCorners;
    final RectF mContentBounds;
    float mCornerRadius;
    final Paint mCornerShadowPaint;
    Path mCornerShadowPath;
    private boolean mDirty;
    final Paint mEdgeShadowPaint;
    float mMaxShadowSize;
    private boolean mPrintedShadowClipWarning;
    float mRawMaxShadowSize;
    float mRawShadowSize;
    private float mRotation;
    private final int mShadowEndColor;
    private final int mShadowMiddleColor;
    float mShadowSize;
    private final int mShadowStartColor;

    public ShadowDrawableWrapper(Context context, Drawable drawable, float f2, float f3, float f4) {
        super(drawable);
        this.mDirty = true;
        this.mAddPaddingForCorners = true;
        this.mPrintedShadowClipWarning = false;
        this.mShadowStartColor = ContextCompat.getColor(context, R.color.design_fab_shadow_start_color);
        this.mShadowMiddleColor = ContextCompat.getColor(context, R.color.design_fab_shadow_mid_color);
        this.mShadowEndColor = ContextCompat.getColor(context, R.color.design_fab_shadow_end_color);
        this.mCornerShadowPaint = new Paint(5);
        this.mCornerShadowPaint.setStyle(Paint.Style.FILL);
        this.mCornerRadius = Math.round(f2);
        this.mContentBounds = new RectF();
        this.mEdgeShadowPaint = new Paint(this.mCornerShadowPaint);
        this.mEdgeShadowPaint.setAntiAlias(false);
        setShadowSize(f3, f4);
    }

    private static int toEven(float f2) {
        int iRound = Math.round(f2);
        return iRound % 2 == 1 ? iRound - 1 : iRound;
    }

    public void setAddPaddingForCorners(boolean z) {
        this.mAddPaddingForCorners = z;
        invalidateSelf();
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.mCornerShadowPaint.setAlpha(i);
        this.mEdgeShadowPaint.setAlpha(i);
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.mDirty = true;
    }

    void setShadowSize(float f2, float f3) {
        if (f2 < 0.0f || f3 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float even = toEven(f2);
        float even2 = toEven(f3);
        if (even > even2) {
            if (!this.mPrintedShadowClipWarning) {
                this.mPrintedShadowClipWarning = true;
            }
            even = even2;
        }
        if (this.mRawShadowSize != even || this.mRawMaxShadowSize != even2) {
            this.mRawShadowSize = even;
            this.mRawMaxShadowSize = even2;
            this.mShadowSize = Math.round(even * SHADOW_MULTIPLIER);
            this.mMaxShadowSize = even2;
            this.mDirty = true;
            invalidateSelf();
        }
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(calculateVerticalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        int iCeil2 = (int) Math.ceil(calculateHorizontalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    public static float calculateVerticalPadding(float f2, float f3, boolean z) {
        return z ? (float) (((double) (SHADOW_MULTIPLIER * f2)) + ((1.0d - COS_45) * ((double) f3))) : SHADOW_MULTIPLIER * f2;
    }

    public static float calculateHorizontalPadding(float f2, float f3, boolean z) {
        if (z) {
            return (float) (((double) f2) + ((1.0d - COS_45) * ((double) f3)));
        }
        return f2;
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void setCornerRadius(float f2) {
        float fRound = Math.round(f2);
        if (this.mCornerRadius != fRound) {
            this.mCornerRadius = fRound;
            this.mDirty = true;
            invalidateSelf();
        }
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mDirty) {
            buildComponents(getBounds());
            this.mDirty = false;
        }
        drawShadow(canvas);
        super.draw(canvas);
    }

    final void setRotation(float f2) {
        if (this.mRotation != f2) {
            this.mRotation = f2;
            invalidateSelf();
        }
    }

    private void drawShadow(Canvas canvas) {
        int iSave = canvas.save();
        canvas.rotate(this.mRotation, this.mContentBounds.centerX(), this.mContentBounds.centerY());
        float f2 = (-this.mCornerRadius) - this.mShadowSize;
        float f3 = this.mCornerRadius;
        boolean z = this.mContentBounds.width() - (2.0f * f3) > 0.0f;
        boolean z2 = this.mContentBounds.height() - (2.0f * f3) > 0.0f;
        float f4 = this.mRawShadowSize - (this.mRawShadowSize * SHADOW_TOP_SCALE);
        float f5 = f3 / ((this.mRawShadowSize - (this.mRawShadowSize * SHADOW_HORIZ_SCALE)) + f3);
        float f6 = f3 / (f4 + f3);
        float f7 = f3 / (f3 + (this.mRawShadowSize - (this.mRawShadowSize * 1.0f)));
        int iSave2 = canvas.save();
        canvas.translate(this.mContentBounds.left + f3, this.mContentBounds.top + f3);
        canvas.scale(f5, f6);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f2, this.mContentBounds.width() - (2.0f * f3), -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        canvas.translate(this.mContentBounds.right - f3, this.mContentBounds.bottom - f3);
        canvas.scale(f5, f7);
        canvas.rotate(180.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f2, this.mContentBounds.width() - (2.0f * f3), this.mShadowSize + (-this.mCornerRadius), this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        canvas.translate(this.mContentBounds.left + f3, this.mContentBounds.bottom - f3);
        canvas.scale(f5, f7);
        canvas.rotate(270.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z2) {
            canvas.scale(1.0f / f7, 1.0f);
            canvas.drawRect(0.0f, f2, this.mContentBounds.height() - (2.0f * f3), -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave4);
        int iSave5 = canvas.save();
        canvas.translate(this.mContentBounds.right - f3, this.mContentBounds.top + f3);
        canvas.scale(f5, f6);
        canvas.rotate(90.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z2) {
            canvas.scale(1.0f / f6, 1.0f);
            canvas.drawRect(0.0f, f2, this.mContentBounds.height() - (2.0f * f3), -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave5);
        canvas.restoreToCount(iSave);
    }

    private void buildShadowCorners() {
        RectF rectF = new RectF(-this.mCornerRadius, -this.mCornerRadius, this.mCornerRadius, this.mCornerRadius);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(-this.mShadowSize, -this.mShadowSize);
        if (this.mCornerShadowPath == null) {
            this.mCornerShadowPath = new Path();
        } else {
            this.mCornerShadowPath.reset();
        }
        this.mCornerShadowPath.setFillType(Path.FillType.EVEN_ODD);
        this.mCornerShadowPath.moveTo(-this.mCornerRadius, 0.0f);
        this.mCornerShadowPath.rLineTo(-this.mShadowSize, 0.0f);
        this.mCornerShadowPath.arcTo(rectF2, 180.0f, 90.0f, false);
        this.mCornerShadowPath.arcTo(rectF, 270.0f, -90.0f, false);
        this.mCornerShadowPath.close();
        float f2 = -rectF2.top;
        if (f2 > 0.0f) {
            float f3 = this.mCornerRadius / f2;
            this.mCornerShadowPaint.setShader(new RadialGradient(0.0f, 0.0f, f2, new int[]{0, this.mShadowStartColor, this.mShadowMiddleColor, this.mShadowEndColor}, new float[]{0.0f, f3, f3 + ((1.0f - f3) / 2.0f), 1.0f}, Shader.TileMode.CLAMP));
        }
        this.mEdgeShadowPaint.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.mShadowStartColor, this.mShadowMiddleColor, this.mShadowEndColor}, new float[]{0.0f, SHADOW_HORIZ_SCALE, 1.0f}, Shader.TileMode.CLAMP));
        this.mEdgeShadowPaint.setAntiAlias(false);
    }

    private void buildComponents(Rect rect) {
        float f2 = this.mRawMaxShadowSize * SHADOW_MULTIPLIER;
        this.mContentBounds.set(rect.left + this.mRawMaxShadowSize, rect.top + f2, rect.right - this.mRawMaxShadowSize, rect.bottom - f2);
        getWrappedDrawable().setBounds((int) this.mContentBounds.left, (int) this.mContentBounds.top, (int) this.mContentBounds.right, (int) this.mContentBounds.bottom);
        buildShadowCorners();
    }

    public float getCornerRadius() {
        return this.mCornerRadius;
    }

    public void setShadowSize(float f2) {
        setShadowSize(f2, this.mRawMaxShadowSize);
    }

    public void setMaxShadowSize(float f2) {
        setShadowSize(this.mRawShadowSize, f2);
    }

    public float getShadowSize() {
        return this.mRawShadowSize;
    }

    public float getMaxShadowSize() {
        return this.mRawMaxShadowSize;
    }

    public float getMinWidth() {
        return (Math.max(this.mRawMaxShadowSize, this.mCornerRadius + (this.mRawMaxShadowSize / 2.0f)) * 2.0f) + (this.mRawMaxShadowSize * 2.0f);
    }

    public float getMinHeight() {
        return (Math.max(this.mRawMaxShadowSize, this.mCornerRadius + ((this.mRawMaxShadowSize * SHADOW_MULTIPLIER) / 2.0f)) * 2.0f) + (this.mRawMaxShadowSize * SHADOW_MULTIPLIER * 2.0f);
    }
}
