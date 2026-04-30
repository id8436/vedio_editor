package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.v4.math.MathUtils;
import android.support.v4.text.TextDirectionHeuristicsCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.TintTypedArray;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
final class CollapsingTextHelper {
    private static final boolean DEBUG_DRAW = false;
    private static final Paint DEBUG_DRAW_PAINT;
    private static final boolean USE_SCALING_TEXTURE;
    private boolean mBoundsChanged;
    private float mCollapsedDrawX;
    private float mCollapsedDrawY;
    private int mCollapsedShadowColor;
    private float mCollapsedShadowDx;
    private float mCollapsedShadowDy;
    private float mCollapsedShadowRadius;
    private ColorStateList mCollapsedTextColor;
    private Typeface mCollapsedTypeface;
    private float mCurrentDrawX;
    private float mCurrentDrawY;
    private float mCurrentTextSize;
    private Typeface mCurrentTypeface;
    private boolean mDrawTitle;
    private float mExpandedDrawX;
    private float mExpandedDrawY;
    private float mExpandedFraction;
    private int mExpandedShadowColor;
    private float mExpandedShadowDx;
    private float mExpandedShadowDy;
    private float mExpandedShadowRadius;
    private ColorStateList mExpandedTextColor;
    private Bitmap mExpandedTitleTexture;
    private Typeface mExpandedTypeface;
    private boolean mIsRtl;
    private Interpolator mPositionInterpolator;
    private float mScale;
    private int[] mState;
    private CharSequence mText;
    private Interpolator mTextSizeInterpolator;
    private CharSequence mTextToDraw;
    private float mTextureAscent;
    private float mTextureDescent;
    private Paint mTexturePaint;
    private boolean mUseTexture;
    private final View mView;
    private int mExpandedTextGravity = 16;
    private int mCollapsedTextGravity = 16;
    private float mExpandedTextSize = 15.0f;
    private float mCollapsedTextSize = 15.0f;
    private final TextPaint mTextPaint = new TextPaint(129);
    private final Rect mCollapsedBounds = new Rect();
    private final Rect mExpandedBounds = new Rect();
    private final RectF mCurrentBounds = new RectF();

    static {
        USE_SCALING_TEXTURE = Build.VERSION.SDK_INT < 18;
        DEBUG_DRAW_PAINT = null;
        if (DEBUG_DRAW_PAINT != null) {
            DEBUG_DRAW_PAINT.setAntiAlias(true);
            DEBUG_DRAW_PAINT.setColor(-65281);
        }
    }

    public CollapsingTextHelper(View view) {
        this.mView = view;
    }

    void setTextSizeInterpolator(Interpolator interpolator) {
        this.mTextSizeInterpolator = interpolator;
        recalculate();
    }

    void setPositionInterpolator(Interpolator interpolator) {
        this.mPositionInterpolator = interpolator;
        recalculate();
    }

    void setExpandedTextSize(float f2) {
        if (this.mExpandedTextSize != f2) {
            this.mExpandedTextSize = f2;
            recalculate();
        }
    }

    void setCollapsedTextSize(float f2) {
        if (this.mCollapsedTextSize != f2) {
            this.mCollapsedTextSize = f2;
            recalculate();
        }
    }

    void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.mCollapsedTextColor != colorStateList) {
            this.mCollapsedTextColor = colorStateList;
            recalculate();
        }
    }

    void setExpandedTextColor(ColorStateList colorStateList) {
        if (this.mExpandedTextColor != colorStateList) {
            this.mExpandedTextColor = colorStateList;
            recalculate();
        }
    }

    void setExpandedBounds(int i, int i2, int i3, int i4) {
        if (!rectEquals(this.mExpandedBounds, i, i2, i3, i4)) {
            this.mExpandedBounds.set(i, i2, i3, i4);
            this.mBoundsChanged = true;
            onBoundsChanged();
        }
    }

    void setCollapsedBounds(int i, int i2, int i3, int i4) {
        if (!rectEquals(this.mCollapsedBounds, i, i2, i3, i4)) {
            this.mCollapsedBounds.set(i, i2, i3, i4);
            this.mBoundsChanged = true;
            onBoundsChanged();
        }
    }

    void onBoundsChanged() {
        this.mDrawTitle = this.mCollapsedBounds.width() > 0 && this.mCollapsedBounds.height() > 0 && this.mExpandedBounds.width() > 0 && this.mExpandedBounds.height() > 0;
    }

    void setExpandedTextGravity(int i) {
        if (this.mExpandedTextGravity != i) {
            this.mExpandedTextGravity = i;
            recalculate();
        }
    }

    int getExpandedTextGravity() {
        return this.mExpandedTextGravity;
    }

    void setCollapsedTextGravity(int i) {
        if (this.mCollapsedTextGravity != i) {
            this.mCollapsedTextGravity = i;
            recalculate();
        }
    }

    int getCollapsedTextGravity() {
        return this.mCollapsedTextGravity;
    }

    void setCollapsedTextAppearance(int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), i, R.styleable.TextAppearance);
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textColor)) {
            this.mCollapsedTextColor = tintTypedArrayObtainStyledAttributes.getColorStateList(R.styleable.TextAppearance_android_textColor);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textSize)) {
            this.mCollapsedTextSize = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int) this.mCollapsedTextSize);
        }
        this.mCollapsedShadowColor = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
        this.mCollapsedShadowDx = tintTypedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.mCollapsedShadowDy = tintTypedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.mCollapsedShadowRadius = tintTypedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        tintTypedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.mCollapsedTypeface = readFontFamilyTypeface(i);
        }
        recalculate();
    }

    void setExpandedTextAppearance(int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), i, R.styleable.TextAppearance);
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textColor)) {
            this.mExpandedTextColor = tintTypedArrayObtainStyledAttributes.getColorStateList(R.styleable.TextAppearance_android_textColor);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textSize)) {
            this.mExpandedTextSize = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int) this.mExpandedTextSize);
        }
        this.mExpandedShadowColor = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
        this.mExpandedShadowDx = tintTypedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.mExpandedShadowDy = tintTypedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.mExpandedShadowRadius = tintTypedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        tintTypedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.mExpandedTypeface = readFontFamilyTypeface(i);
        }
        recalculate();
    }

    private Typeface readFontFamilyTypeface(int i) {
        TypedArray typedArrayObtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(i, new int[]{android.R.attr.fontFamily});
        try {
            String string = typedArrayObtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            typedArrayObtainStyledAttributes.recycle();
            return null;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    void setCollapsedTypeface(Typeface typeface) {
        if (areTypefacesDifferent(this.mCollapsedTypeface, typeface)) {
            this.mCollapsedTypeface = typeface;
            recalculate();
        }
    }

    void setExpandedTypeface(Typeface typeface) {
        if (areTypefacesDifferent(this.mExpandedTypeface, typeface)) {
            this.mExpandedTypeface = typeface;
            recalculate();
        }
    }

    void setTypefaces(Typeface typeface) {
        this.mExpandedTypeface = typeface;
        this.mCollapsedTypeface = typeface;
        recalculate();
    }

    Typeface getCollapsedTypeface() {
        return this.mCollapsedTypeface != null ? this.mCollapsedTypeface : Typeface.DEFAULT;
    }

    Typeface getExpandedTypeface() {
        return this.mExpandedTypeface != null ? this.mExpandedTypeface : Typeface.DEFAULT;
    }

    void setExpansionFraction(float f2) {
        float fClamp = MathUtils.clamp(f2, 0.0f, 1.0f);
        if (fClamp != this.mExpandedFraction) {
            this.mExpandedFraction = fClamp;
            calculateCurrentOffsets();
        }
    }

    final boolean setState(int[] iArr) {
        this.mState = iArr;
        if (!isStateful()) {
            return false;
        }
        recalculate();
        return true;
    }

    final boolean isStateful() {
        return (this.mCollapsedTextColor != null && this.mCollapsedTextColor.isStateful()) || (this.mExpandedTextColor != null && this.mExpandedTextColor.isStateful());
    }

    float getExpansionFraction() {
        return this.mExpandedFraction;
    }

    float getCollapsedTextSize() {
        return this.mCollapsedTextSize;
    }

    float getExpandedTextSize() {
        return this.mExpandedTextSize;
    }

    private void calculateCurrentOffsets() {
        calculateOffsets(this.mExpandedFraction);
    }

    private void calculateOffsets(float f2) {
        interpolateBounds(f2);
        this.mCurrentDrawX = lerp(this.mExpandedDrawX, this.mCollapsedDrawX, f2, this.mPositionInterpolator);
        this.mCurrentDrawY = lerp(this.mExpandedDrawY, this.mCollapsedDrawY, f2, this.mPositionInterpolator);
        setInterpolatedTextSize(lerp(this.mExpandedTextSize, this.mCollapsedTextSize, f2, this.mTextSizeInterpolator));
        if (this.mCollapsedTextColor != this.mExpandedTextColor) {
            this.mTextPaint.setColor(blendColors(getCurrentExpandedTextColor(), getCurrentCollapsedTextColor(), f2));
        } else {
            this.mTextPaint.setColor(getCurrentCollapsedTextColor());
        }
        this.mTextPaint.setShadowLayer(lerp(this.mExpandedShadowRadius, this.mCollapsedShadowRadius, f2, null), lerp(this.mExpandedShadowDx, this.mCollapsedShadowDx, f2, null), lerp(this.mExpandedShadowDy, this.mCollapsedShadowDy, f2, null), blendColors(this.mExpandedShadowColor, this.mCollapsedShadowColor, f2));
        ViewCompat.postInvalidateOnAnimation(this.mView);
    }

    @ColorInt
    private int getCurrentExpandedTextColor() {
        return this.mState != null ? this.mExpandedTextColor.getColorForState(this.mState, 0) : this.mExpandedTextColor.getDefaultColor();
    }

    @ColorInt
    private int getCurrentCollapsedTextColor() {
        return this.mState != null ? this.mCollapsedTextColor.getColorForState(this.mState, 0) : this.mCollapsedTextColor.getDefaultColor();
    }

    private void calculateBaseOffsets() {
        float f2 = this.mCurrentTextSize;
        calculateUsingTextSize(this.mCollapsedTextSize);
        float fMeasureText = this.mTextToDraw != null ? this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()) : 0.0f;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.mCollapsedTextGravity, this.mIsRtl ? 1 : 0);
        switch (absoluteGravity & 112) {
            case 48:
                this.mCollapsedDrawY = this.mCollapsedBounds.top - this.mTextPaint.ascent();
                break;
            case 80:
                this.mCollapsedDrawY = this.mCollapsedBounds.bottom;
                break;
            default:
                this.mCollapsedDrawY = (((this.mTextPaint.descent() - this.mTextPaint.ascent()) / 2.0f) - this.mTextPaint.descent()) + this.mCollapsedBounds.centerY();
                break;
        }
        switch (absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) {
            case 1:
                this.mCollapsedDrawX = this.mCollapsedBounds.centerX() - (fMeasureText / 2.0f);
                break;
            case 5:
                this.mCollapsedDrawX = this.mCollapsedBounds.right - fMeasureText;
                break;
            default:
                this.mCollapsedDrawX = this.mCollapsedBounds.left;
                break;
        }
        calculateUsingTextSize(this.mExpandedTextSize);
        float fMeasureText2 = this.mTextToDraw != null ? this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()) : 0.0f;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.mExpandedTextGravity, this.mIsRtl ? 1 : 0);
        switch (absoluteGravity2 & 112) {
            case 48:
                this.mExpandedDrawY = this.mExpandedBounds.top - this.mTextPaint.ascent();
                break;
            case 80:
                this.mExpandedDrawY = this.mExpandedBounds.bottom;
                break;
            default:
                this.mExpandedDrawY = (((this.mTextPaint.descent() - this.mTextPaint.ascent()) / 2.0f) - this.mTextPaint.descent()) + this.mExpandedBounds.centerY();
                break;
        }
        switch (absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) {
            case 1:
                this.mExpandedDrawX = this.mExpandedBounds.centerX() - (fMeasureText2 / 2.0f);
                break;
            case 5:
                this.mExpandedDrawX = this.mExpandedBounds.right - fMeasureText2;
                break;
            default:
                this.mExpandedDrawX = this.mExpandedBounds.left;
                break;
        }
        clearTexture();
        setInterpolatedTextSize(f2);
    }

    private void interpolateBounds(float f2) {
        this.mCurrentBounds.left = lerp(this.mExpandedBounds.left, this.mCollapsedBounds.left, f2, this.mPositionInterpolator);
        this.mCurrentBounds.top = lerp(this.mExpandedDrawY, this.mCollapsedDrawY, f2, this.mPositionInterpolator);
        this.mCurrentBounds.right = lerp(this.mExpandedBounds.right, this.mCollapsedBounds.right, f2, this.mPositionInterpolator);
        this.mCurrentBounds.bottom = lerp(this.mExpandedBounds.bottom, this.mCollapsedBounds.bottom, f2, this.mPositionInterpolator);
    }

    public void draw(Canvas canvas) {
        float fAscent;
        int iSave = canvas.save();
        if (this.mTextToDraw != null && this.mDrawTitle) {
            float f2 = this.mCurrentDrawX;
            float f3 = this.mCurrentDrawY;
            boolean z = this.mUseTexture && this.mExpandedTitleTexture != null;
            if (z) {
                fAscent = this.mTextureAscent * this.mScale;
                float f4 = this.mTextureDescent * this.mScale;
            } else {
                fAscent = this.mTextPaint.ascent() * this.mScale;
                float fDescent = this.mTextPaint.descent() * this.mScale;
            }
            if (z) {
                f3 += fAscent;
            }
            if (this.mScale != 1.0f) {
                canvas.scale(this.mScale, this.mScale, f2, f3);
            }
            if (z) {
                canvas.drawBitmap(this.mExpandedTitleTexture, f2, f3, this.mTexturePaint);
            } else {
                canvas.drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), f2, f3, this.mTextPaint);
            }
        }
        canvas.restoreToCount(iSave);
    }

    private boolean calculateIsRtl(CharSequence charSequence) {
        return (ViewCompat.getLayoutDirection(this.mView) == 1 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    private void setInterpolatedTextSize(float f2) {
        calculateUsingTextSize(f2);
        this.mUseTexture = USE_SCALING_TEXTURE && this.mScale != 1.0f;
        if (this.mUseTexture) {
            ensureExpandedTexture();
        }
        ViewCompat.postInvalidateOnAnimation(this.mView);
    }

    private boolean areTypefacesDifferent(Typeface typeface, Typeface typeface2) {
        return !(typeface == null || typeface.equals(typeface2)) || (typeface == null && typeface2 != null);
    }

    private void calculateUsingTextSize(float f2) {
        float f3;
        boolean z;
        if (this.mText != null) {
            float fWidth = this.mCollapsedBounds.width();
            float fWidth2 = this.mExpandedBounds.width();
            if (isClose(f2, this.mCollapsedTextSize)) {
                f3 = this.mCollapsedTextSize;
                this.mScale = 1.0f;
                if (areTypefacesDifferent(this.mCurrentTypeface, this.mCollapsedTypeface)) {
                    this.mCurrentTypeface = this.mCollapsedTypeface;
                    z = true;
                } else {
                    z = false;
                }
            } else {
                f3 = this.mExpandedTextSize;
                if (areTypefacesDifferent(this.mCurrentTypeface, this.mExpandedTypeface)) {
                    this.mCurrentTypeface = this.mExpandedTypeface;
                    z = true;
                } else {
                    z = false;
                }
                if (isClose(f2, this.mExpandedTextSize)) {
                    this.mScale = 1.0f;
                } else {
                    this.mScale = f2 / this.mExpandedTextSize;
                }
                float f4 = this.mCollapsedTextSize / this.mExpandedTextSize;
                fWidth = fWidth2 * f4 > fWidth ? Math.min(fWidth / f4, fWidth2) : fWidth2;
            }
            if (fWidth > 0.0f) {
                z = this.mCurrentTextSize != f3 || this.mBoundsChanged || z;
                this.mCurrentTextSize = f3;
                this.mBoundsChanged = false;
            }
            if (this.mTextToDraw == null || z) {
                this.mTextPaint.setTextSize(this.mCurrentTextSize);
                this.mTextPaint.setTypeface(this.mCurrentTypeface);
                this.mTextPaint.setLinearText(this.mScale != 1.0f);
                CharSequence charSequenceEllipsize = TextUtils.ellipsize(this.mText, this.mTextPaint, fWidth, TextUtils.TruncateAt.END);
                if (!TextUtils.equals(charSequenceEllipsize, this.mTextToDraw)) {
                    this.mTextToDraw = charSequenceEllipsize;
                    this.mIsRtl = calculateIsRtl(this.mTextToDraw);
                }
            }
        }
    }

    private void ensureExpandedTexture() {
        if (this.mExpandedTitleTexture == null && !this.mExpandedBounds.isEmpty() && !TextUtils.isEmpty(this.mTextToDraw)) {
            calculateOffsets(0.0f);
            this.mTextureAscent = this.mTextPaint.ascent();
            this.mTextureDescent = this.mTextPaint.descent();
            int iRound = Math.round(this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()));
            int iRound2 = Math.round(this.mTextureDescent - this.mTextureAscent);
            if (iRound > 0 && iRound2 > 0) {
                this.mExpandedTitleTexture = Bitmap.createBitmap(iRound, iRound2, Bitmap.Config.ARGB_8888);
                new Canvas(this.mExpandedTitleTexture).drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), 0.0f, iRound2 - this.mTextPaint.descent(), this.mTextPaint);
                if (this.mTexturePaint == null) {
                    this.mTexturePaint = new Paint(3);
                }
            }
        }
    }

    public void recalculate() {
        if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
            calculateBaseOffsets();
            calculateCurrentOffsets();
        }
    }

    void setText(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.mText)) {
            this.mText = charSequence;
            this.mTextToDraw = null;
            clearTexture();
            recalculate();
        }
    }

    CharSequence getText() {
        return this.mText;
    }

    private void clearTexture() {
        if (this.mExpandedTitleTexture != null) {
            this.mExpandedTitleTexture.recycle();
            this.mExpandedTitleTexture = null;
        }
    }

    private static boolean isClose(float f2, float f3) {
        return Math.abs(f2 - f3) < 0.001f;
    }

    ColorStateList getExpandedTextColor() {
        return this.mExpandedTextColor;
    }

    ColorStateList getCollapsedTextColor() {
        return this.mCollapsedTextColor;
    }

    private static int blendColors(int i, int i2, float f2) {
        float f3 = 1.0f - f2;
        return Color.argb((int) ((Color.alpha(i) * f3) + (Color.alpha(i2) * f2)), (int) ((Color.red(i) * f3) + (Color.red(i2) * f2)), (int) ((Color.green(i) * f3) + (Color.green(i2) * f2)), (int) ((f3 * Color.blue(i)) + (Color.blue(i2) * f2)));
    }

    private static float lerp(float f2, float f3, float f4, Interpolator interpolator) {
        if (interpolator != null) {
            f4 = interpolator.getInterpolation(f4);
        }
        return AnimationUtils.lerp(f2, f3, f4);
    }

    private static boolean rectEquals(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }
}
