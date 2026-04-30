package android.support.v4.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.util.Preconditions;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class CircularProgressDrawable extends Drawable implements Animatable {
    private static final int ANIMATION_DURATION = 1332;
    private static final int ARROW_HEIGHT = 5;
    private static final int ARROW_HEIGHT_LARGE = 6;
    private static final int ARROW_WIDTH = 10;
    private static final int ARROW_WIDTH_LARGE = 12;
    private static final float CENTER_RADIUS = 7.5f;
    private static final float CENTER_RADIUS_LARGE = 11.0f;
    private static final float COLOR_CHANGE_OFFSET = 0.75f;
    public static final int DEFAULT = 1;
    private static final float GROUP_FULL_ROTATION = 216.0f;
    public static final int LARGE = 0;
    private static final float MAX_PROGRESS_ARC = 0.8f;
    private static final float MIN_PROGRESS_ARC = 0.01f;
    private static final float RING_ROTATION = 0.20999998f;
    private static final float SHRINK_OFFSET = 0.5f;
    private static final float STROKE_WIDTH = 2.5f;
    private static final float STROKE_WIDTH_LARGE = 3.0f;
    private Animator mAnimator;
    private boolean mFinishing;
    private Resources mResources;
    private final Ring mRing = new Ring();
    private float mRotation;
    private float mRotationCount;
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final Interpolator MATERIAL_INTERPOLATOR = new FastOutSlowInInterpolator();
    private static final int[] COLORS = {ViewCompat.MEASURED_STATE_MASK};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface ProgressDrawableSize {
    }

    public CircularProgressDrawable(Context context) {
        this.mResources = ((Context) Preconditions.checkNotNull(context)).getResources();
        this.mRing.setColors(COLORS);
        setStrokeWidth(STROKE_WIDTH);
        setupAnimators();
    }

    private void setSizeParameters(float f2, float f3, float f4, float f5) {
        Ring ring = this.mRing;
        float f6 = this.mResources.getDisplayMetrics().density;
        ring.setStrokeWidth(f3 * f6);
        ring.setCenterRadius(f2 * f6);
        ring.setColorIndex(0);
        ring.setArrowDimensions(f4 * f6, f6 * f5);
    }

    public void setStyle(int i) {
        if (i == 0) {
            setSizeParameters(CENTER_RADIUS_LARGE, 3.0f, 12.0f, 6.0f);
        } else {
            setSizeParameters(CENTER_RADIUS, STROKE_WIDTH, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    public float getStrokeWidth() {
        return this.mRing.getStrokeWidth();
    }

    public void setStrokeWidth(float f2) {
        this.mRing.setStrokeWidth(f2);
        invalidateSelf();
    }

    public float getCenterRadius() {
        return this.mRing.getCenterRadius();
    }

    public void setCenterRadius(float f2) {
        this.mRing.setCenterRadius(f2);
        invalidateSelf();
    }

    public void setStrokeCap(Paint.Cap cap) {
        this.mRing.setStrokeCap(cap);
        invalidateSelf();
    }

    public Paint.Cap getStrokeCap() {
        return this.mRing.getStrokeCap();
    }

    public float getArrowWidth() {
        return this.mRing.getArrowWidth();
    }

    public float getArrowHeight() {
        return this.mRing.getArrowHeight();
    }

    public void setArrowDimensions(float f2, float f3) {
        this.mRing.setArrowDimensions(f2, f3);
        invalidateSelf();
    }

    public boolean getArrowEnabled() {
        return this.mRing.getShowArrow();
    }

    public void setArrowEnabled(boolean z) {
        this.mRing.setShowArrow(z);
        invalidateSelf();
    }

    public float getArrowScale() {
        return this.mRing.getArrowScale();
    }

    public void setArrowScale(float f2) {
        this.mRing.setArrowScale(f2);
        invalidateSelf();
    }

    public float getStartTrim() {
        return this.mRing.getStartTrim();
    }

    public float getEndTrim() {
        return this.mRing.getEndTrim();
    }

    public void setStartEndTrim(float f2, float f3) {
        this.mRing.setStartTrim(f2);
        this.mRing.setEndTrim(f3);
        invalidateSelf();
    }

    public float getProgressRotation() {
        return this.mRing.getRotation();
    }

    public void setProgressRotation(float f2) {
        this.mRing.setRotation(f2);
        invalidateSelf();
    }

    public int getBackgroundColor() {
        return this.mRing.getBackgroundColor();
    }

    public void setBackgroundColor(int i) {
        this.mRing.setBackgroundColor(i);
        invalidateSelf();
    }

    public int[] getColorSchemeColors() {
        return this.mRing.getColors();
    }

    public void setColorSchemeColors(int... iArr) {
        this.mRing.setColors(iArr);
        this.mRing.setColorIndex(0);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.mRotation, bounds.exactCenterX(), bounds.exactCenterY());
        this.mRing.draw(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mRing.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mRing.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mRing.setColorFilter(colorFilter);
        invalidateSelf();
    }

    private void setRotation(float f2) {
        this.mRotation = f2;
    }

    private float getRotation() {
        return this.mRotation;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mAnimator.isRunning();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.mAnimator.cancel();
        this.mRing.storeOriginals();
        if (this.mRing.getEndTrim() != this.mRing.getStartTrim()) {
            this.mFinishing = true;
            this.mAnimator.setDuration(666L);
            this.mAnimator.start();
        } else {
            this.mRing.setColorIndex(0);
            this.mRing.resetOriginals();
            this.mAnimator.setDuration(1332L);
            this.mAnimator.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mAnimator.cancel();
        setRotation(0.0f);
        this.mRing.setShowArrow(false);
        this.mRing.setColorIndex(0);
        this.mRing.resetOriginals();
        invalidateSelf();
    }

    private int evaluateColorChange(float f2, int i, int i2) {
        return ((((i >> 24) & 255) + ((int) ((((i2 >> 24) & 255) - r0) * f2))) << 24) | ((((i >> 16) & 255) + ((int) ((((i2 >> 16) & 255) - r1) * f2))) << 16) | ((((int) ((((i2 >> 8) & 255) - r2) * f2)) + ((i >> 8) & 255)) << 8) | (((int) (((i2 & 255) - r3) * f2)) + (i & 255));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRingColor(float f2, Ring ring) {
        if (f2 > 0.75f) {
            ring.setColor(evaluateColorChange((f2 - 0.75f) / 0.25f, ring.getStartingColor(), ring.getNextColor()));
        } else {
            ring.setColor(ring.getStartingColor());
        }
    }

    private void applyFinishTranslation(float f2, Ring ring) {
        updateRingColor(f2, ring);
        float fFloor = (float) (Math.floor(ring.getStartingRotation() / 0.8f) + 1.0d);
        ring.setStartTrim(ring.getStartingStartTrim() + (((ring.getStartingEndTrim() - MIN_PROGRESS_ARC) - ring.getStartingStartTrim()) * f2));
        ring.setEndTrim(ring.getStartingEndTrim());
        ring.setRotation(((fFloor - ring.getStartingRotation()) * f2) + ring.getStartingRotation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyTransformation(float f2, Ring ring, boolean z) {
        float startingStartTrim;
        float interpolation;
        if (this.mFinishing) {
            applyFinishTranslation(f2, ring);
            return;
        }
        if (f2 != 1.0f || z) {
            float startingRotation = ring.getStartingRotation();
            if (f2 < SHRINK_OFFSET) {
                float f3 = f2 / SHRINK_OFFSET;
                interpolation = ring.getStartingStartTrim();
                startingStartTrim = (MATERIAL_INTERPOLATOR.getInterpolation(f3) * 0.79f) + MIN_PROGRESS_ARC + interpolation;
            } else {
                float f4 = (f2 - SHRINK_OFFSET) / SHRINK_OFFSET;
                startingStartTrim = ring.getStartingStartTrim() + 0.79f;
                interpolation = startingStartTrim - (((1.0f - MATERIAL_INTERPOLATOR.getInterpolation(f4)) * 0.79f) + MIN_PROGRESS_ARC);
            }
            float f5 = startingRotation + (RING_ROTATION * f2);
            float f6 = GROUP_FULL_ROTATION * (this.mRotationCount + f2);
            ring.setStartTrim(interpolation);
            ring.setEndTrim(startingStartTrim);
            ring.setRotation(f5);
            setRotation(f6);
        }
    }

    private void setupAnimators() {
        final Ring ring = this.mRing;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.v4.widget.CircularProgressDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressDrawable.this.updateRingColor(fFloatValue, ring);
                CircularProgressDrawable.this.applyTransformation(fFloatValue, ring, false);
                CircularProgressDrawable.this.invalidateSelf();
            }
        });
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(LINEAR_INTERPOLATOR);
        valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: android.support.v4.widget.CircularProgressDrawable.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                CircularProgressDrawable.this.mRotationCount = 0.0f;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                CircularProgressDrawable.this.applyTransformation(1.0f, ring, true);
                ring.storeOriginals();
                ring.goToNextColor();
                if (CircularProgressDrawable.this.mFinishing) {
                    CircularProgressDrawable.this.mFinishing = false;
                    animator.cancel();
                    animator.setDuration(1332L);
                    animator.start();
                    ring.setShowArrow(false);
                    return;
                }
                CircularProgressDrawable.this.mRotationCount += 1.0f;
            }
        });
        this.mAnimator = valueAnimatorOfFloat;
    }

    class Ring {
        Path mArrow;
        int mArrowHeight;
        int mArrowWidth;
        int mColorIndex;
        int[] mColors;
        int mCurrentColor;
        float mRingCenterRadius;
        boolean mShowArrow;
        float mStartingEndTrim;
        float mStartingRotation;
        float mStartingStartTrim;
        final RectF mTempBounds = new RectF();
        final Paint mPaint = new Paint();
        final Paint mArrowPaint = new Paint();
        final Paint mCirclePaint = new Paint();
        float mStartTrim = 0.0f;
        float mEndTrim = 0.0f;
        float mRotation = 0.0f;
        float mStrokeWidth = 5.0f;
        float mArrowScale = 1.0f;
        int mAlpha = 255;

        Ring() {
            this.mPaint.setStrokeCap(Paint.Cap.SQUARE);
            this.mPaint.setAntiAlias(true);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mArrowPaint.setStyle(Paint.Style.FILL);
            this.mArrowPaint.setAntiAlias(true);
            this.mCirclePaint.setColor(0);
        }

        void setArrowDimensions(float f2, float f3) {
            this.mArrowWidth = (int) f2;
            this.mArrowHeight = (int) f3;
        }

        void setStrokeCap(Paint.Cap cap) {
            this.mPaint.setStrokeCap(cap);
        }

        Paint.Cap getStrokeCap() {
            return this.mPaint.getStrokeCap();
        }

        float getArrowWidth() {
            return this.mArrowWidth;
        }

        float getArrowHeight() {
            return this.mArrowHeight;
        }

        void draw(Canvas canvas, Rect rect) {
            RectF rectF = this.mTempBounds;
            float fMin = this.mRingCenterRadius + (this.mStrokeWidth / 2.0f);
            if (this.mRingCenterRadius <= 0.0f) {
                fMin = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.mArrowWidth * this.mArrowScale) / 2.0f, this.mStrokeWidth / 2.0f);
            }
            rectF.set(rect.centerX() - fMin, rect.centerY() - fMin, rect.centerX() + fMin, fMin + rect.centerY());
            float f2 = (this.mStartTrim + this.mRotation) * 360.0f;
            float f3 = ((this.mEndTrim + this.mRotation) * 360.0f) - f2;
            this.mPaint.setColor(this.mCurrentColor);
            this.mPaint.setAlpha(this.mAlpha);
            float f4 = this.mStrokeWidth / 2.0f;
            rectF.inset(f4, f4);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.mCirclePaint);
            rectF.inset(-f4, -f4);
            canvas.drawArc(rectF, f2, f3, false, this.mPaint);
            drawTriangle(canvas, f2, f3, rectF);
        }

        void drawTriangle(Canvas canvas, float f2, float f3, RectF rectF) {
            if (this.mShowArrow) {
                if (this.mArrow == null) {
                    this.mArrow = new Path();
                    this.mArrow.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    this.mArrow.reset();
                }
                float fMin = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f4 = (this.mArrowWidth * this.mArrowScale) / 2.0f;
                this.mArrow.moveTo(0.0f, 0.0f);
                this.mArrow.lineTo(this.mArrowWidth * this.mArrowScale, 0.0f);
                this.mArrow.lineTo((this.mArrowWidth * this.mArrowScale) / 2.0f, this.mArrowHeight * this.mArrowScale);
                this.mArrow.offset((fMin + rectF.centerX()) - f4, rectF.centerY() + (this.mStrokeWidth / 2.0f));
                this.mArrow.close();
                this.mArrowPaint.setColor(this.mCurrentColor);
                this.mArrowPaint.setAlpha(this.mAlpha);
                canvas.save();
                canvas.rotate(f2 + f3, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.mArrow, this.mArrowPaint);
                canvas.restore();
            }
        }

        void setColors(@NonNull int[] iArr) {
            this.mColors = iArr;
            setColorIndex(0);
        }

        int[] getColors() {
            return this.mColors;
        }

        void setColor(int i) {
            this.mCurrentColor = i;
        }

        void setBackgroundColor(int i) {
            this.mCirclePaint.setColor(i);
        }

        int getBackgroundColor() {
            return this.mCirclePaint.getColor();
        }

        void setColorIndex(int i) {
            this.mColorIndex = i;
            this.mCurrentColor = this.mColors[this.mColorIndex];
        }

        int getNextColor() {
            return this.mColors[getNextColorIndex()];
        }

        int getNextColorIndex() {
            return (this.mColorIndex + 1) % this.mColors.length;
        }

        void goToNextColor() {
            setColorIndex(getNextColorIndex());
        }

        void setColorFilter(ColorFilter colorFilter) {
            this.mPaint.setColorFilter(colorFilter);
        }

        void setAlpha(int i) {
            this.mAlpha = i;
        }

        int getAlpha() {
            return this.mAlpha;
        }

        void setStrokeWidth(float f2) {
            this.mStrokeWidth = f2;
            this.mPaint.setStrokeWidth(f2);
        }

        float getStrokeWidth() {
            return this.mStrokeWidth;
        }

        void setStartTrim(float f2) {
            this.mStartTrim = f2;
        }

        float getStartTrim() {
            return this.mStartTrim;
        }

        float getStartingStartTrim() {
            return this.mStartingStartTrim;
        }

        float getStartingEndTrim() {
            return this.mStartingEndTrim;
        }

        int getStartingColor() {
            return this.mColors[this.mColorIndex];
        }

        void setEndTrim(float f2) {
            this.mEndTrim = f2;
        }

        float getEndTrim() {
            return this.mEndTrim;
        }

        void setRotation(float f2) {
            this.mRotation = f2;
        }

        float getRotation() {
            return this.mRotation;
        }

        void setCenterRadius(float f2) {
            this.mRingCenterRadius = f2;
        }

        float getCenterRadius() {
            return this.mRingCenterRadius;
        }

        void setShowArrow(boolean z) {
            if (this.mShowArrow != z) {
                this.mShowArrow = z;
            }
        }

        boolean getShowArrow() {
            return this.mShowArrow;
        }

        void setArrowScale(float f2) {
            if (f2 != this.mArrowScale) {
                this.mArrowScale = f2;
            }
        }

        float getArrowScale() {
            return this.mArrowScale;
        }

        float getStartingRotation() {
            return this.mStartingRotation;
        }

        void storeOriginals() {
            this.mStartingStartTrim = this.mStartTrim;
            this.mStartingEndTrim = this.mEndTrim;
            this.mStartingRotation = this.mRotation;
        }

        void resetOriginals() {
            this.mStartingStartTrim = 0.0f;
            this.mStartingEndTrim = 0.0f;
            this.mStartingRotation = 0.0f;
            setStartTrim(0.0f);
            setEndTrim(0.0f);
            setRotation(0.0f);
        }
    }
}
