package com.behance.sdk.ui.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKOverFlowLayout extends ViewGroup {
    static final /* synthetic */ boolean $assertionsDisabled;
    private int line_height;

    static {
        $assertionsDisabled = !BehanceSDKOverFlowLayout.class.desiredAssertionStatus();
    }

    public class LayoutParams extends ViewGroup.LayoutParams {
        public final int horizontal_spacing;
        public final int vertical_spacing;

        public LayoutParams(int i, int i2) {
            super(0, 0);
            this.horizontal_spacing = i;
            this.vertical_spacing = i2;
        }
    }

    public BehanceSDKOverFlowLayout(Context context) {
        super(context);
    }

    public BehanceSDKOverFlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int i3;
        if (!$assertionsDisabled && View.MeasureSpec.getMode(i) == 0) {
            throw new AssertionError();
        }
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        int size2 = (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int iMax = 0;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE);
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), iMakeMeasureSpec);
                int measuredWidth = childAt.getMeasuredWidth();
                iMax = Math.max(iMax, childAt.getMeasuredHeight() + layoutParams.vertical_spacing);
                if (paddingLeft + measuredWidth > size) {
                    paddingLeft = getPaddingLeft();
                    paddingTop += iMax;
                }
                paddingLeft += layoutParams.horizontal_spacing + measuredWidth;
            }
            i4++;
            iMax = iMax;
        }
        this.line_height = iMax;
        if (View.MeasureSpec.getMode(i2) == 0) {
            i3 = paddingTop + iMax;
        } else {
            i3 = (View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE || paddingTop + iMax >= size2) ? size2 : paddingTop + iMax;
        }
        setMeasuredDimension(size, i3);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(1, 1);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (paddingLeft + measuredWidth > i5) {
                    paddingLeft = getPaddingLeft();
                    paddingTop += this.line_height;
                }
                childAt.layout(paddingLeft, paddingTop, paddingLeft + measuredWidth, measuredHeight + paddingTop);
                paddingLeft += layoutParams.horizontal_spacing + measuredWidth;
            }
        }
    }
}
