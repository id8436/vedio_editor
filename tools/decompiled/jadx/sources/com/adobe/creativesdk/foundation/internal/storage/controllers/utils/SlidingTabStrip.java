package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.SlidingTabLayout;

/* JADX INFO: loaded from: classes2.dex */
class SlidingTabStrip extends LinearLayout {
    private static final byte DEFAULT_BOTTOM_BORDER_COLOR_ALPHA = 38;
    private static final int DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS = 0;
    private static final int DEFAULT_SELECTED_INDICATOR_COLOR = -13388315;
    private static final int SELECTED_INDICATOR_THICKNESS_DIPS = 3;
    private final Paint mBottomBorderPaint;
    private final int mBottomBorderThickness;
    private SlidingTabLayout.TabColorizer mCustomTabColorizer;
    private final int mDefaultBottomBorderColor;
    private final SimpleTabColorizer mDefaultTabColorizer;
    private final Paint mSelectedIndicatorPaint;
    private final int mSelectedIndicatorThickness;
    private int mSelectedPosition;
    private float mSelectionOffset;
    private int mTextViewId;
    private int mViewId;

    SlidingTabStrip(Context context) {
        this(context, null);
    }

    SlidingTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
        float f2 = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorForeground, typedValue, true);
        this.mDefaultBottomBorderColor = setColorAlpha(typedValue.data, (byte) 38);
        this.mDefaultTabColorizer = new SimpleTabColorizer();
        this.mDefaultTabColorizer.setIndicatorColors(DEFAULT_SELECTED_INDICATOR_COLOR);
        this.mBottomBorderThickness = (int) (0.0f * f2);
        this.mBottomBorderPaint = new Paint();
        this.mBottomBorderPaint.setColor(this.mDefaultBottomBorderColor);
        this.mSelectedIndicatorThickness = (int) (f2 * 3.0f);
        this.mSelectedIndicatorPaint = new Paint();
    }

    void setCustomTabColorizer(SlidingTabLayout.TabColorizer tabColorizer) {
        this.mCustomTabColorizer = tabColorizer;
        invalidate();
    }

    void setCustomLayoutIds(int i, int i2) {
        this.mViewId = i;
        this.mTextViewId = i2;
    }

    void setSelectedIndicatorColors(int... iArr) {
        this.mCustomTabColorizer = null;
        this.mDefaultTabColorizer.setIndicatorColors(iArr);
        invalidate();
    }

    void onViewPagerPageChanged(int i, float f2) {
        if (this.mSelectedPosition != i) {
            ((TextView) getChildAt(this.mSelectedPosition).findViewById(this.mTextViewId)).setTextColor(Color.parseColor("#a3aeb7"));
            ((TextView) getChildAt(i).findViewById(this.mTextViewId)).setTextColor(Color.parseColor("#2098f5"));
        }
        this.mSelectedPosition = i;
        this.mSelectionOffset = f2;
        invalidate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        int right;
        int i;
        int height = getHeight();
        int childCount = getChildCount();
        SlidingTabLayout.TabColorizer tabColorizer = this.mCustomTabColorizer != null ? this.mCustomTabColorizer : this.mDefaultTabColorizer;
        if (childCount > 0) {
            View childAt = getChildAt(this.mSelectedPosition);
            int left = childAt.getLeft();
            int right2 = childAt.getRight();
            int indicatorColor = tabColorizer.getIndicatorColor(this.mSelectedPosition);
            if (this.mSelectionOffset <= 0.0f || this.mSelectedPosition >= getChildCount() - 1) {
                right = right2;
                i = left;
            } else {
                int indicatorColor2 = tabColorizer.getIndicatorColor(this.mSelectedPosition + 1);
                if (indicatorColor != indicatorColor2) {
                    indicatorColor = blendColors(indicatorColor2, indicatorColor, this.mSelectionOffset);
                }
                View childAt2 = getChildAt(this.mSelectedPosition + 1);
                int left2 = (int) ((left * (1.0f - this.mSelectionOffset)) + (this.mSelectionOffset * childAt2.getLeft()));
                right = (int) ((right2 * (1.0f - this.mSelectionOffset)) + (childAt2.getRight() * this.mSelectionOffset));
                i = left2;
            }
            this.mSelectedIndicatorPaint.setColor(indicatorColor);
            canvas.drawRect(i, height - this.mSelectedIndicatorThickness, right, height, this.mSelectedIndicatorPaint);
        }
        canvas.drawRect(0.0f, height - this.mBottomBorderThickness, getWidth(), height, this.mBottomBorderPaint);
    }

    private static int setColorAlpha(int i, byte b2) {
        return Color.argb((int) b2, Color.red(i), Color.green(i), Color.blue(i));
    }

    private static int blendColors(int i, int i2, float f2) {
        float f3 = 1.0f - f2;
        return Color.rgb((int) ((Color.red(i) * f2) + (Color.red(i2) * f3)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f3)), (int) ((f3 * Color.blue(i2)) + (Color.blue(i) * f2)));
    }

    class SimpleTabColorizer implements SlidingTabLayout.TabColorizer {
        private int[] mIndicatorColors;

        private SimpleTabColorizer() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.utils.SlidingTabLayout.TabColorizer
        public final int getIndicatorColor(int i) {
            return this.mIndicatorColors[i % this.mIndicatorColors.length];
        }

        void setIndicatorColors(int... iArr) {
            this.mIndicatorColors = iArr;
        }
    }
}
