package com.adobe.creativesdk.foundation.internal.twowayview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class DividerItemDecoration extends RecyclerView.ItemDecoration {
    private final Drawable mHorizontalDivider;
    private final ItemSpacingOffsets mItemSpacing;
    private final Drawable mVerticalDivider;

    public DividerItemDecoration(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DividerItemDecoration(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.adobe_csdk_twowayview_DividerItemDecoration, i, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.adobe_csdk_twowayview_DividerItemDecoration_android_divider);
        if (drawable != null) {
            this.mHorizontalDivider = drawable;
            this.mVerticalDivider = drawable;
        } else {
            this.mVerticalDivider = typedArrayObtainStyledAttributes.getDrawable(R.styleable.adobe_csdk_twowayview_DividerItemDecoration_adobe_csdk_twowayview_verticalDivider);
            this.mHorizontalDivider = typedArrayObtainStyledAttributes.getDrawable(R.styleable.adobe_csdk_twowayview_DividerItemDecoration_adobe_csdk_twowayview_horizontalDivider);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mItemSpacing = createSpacing(this.mVerticalDivider, this.mHorizontalDivider);
    }

    public DividerItemDecoration(Drawable drawable) {
        this(drawable, drawable);
    }

    public DividerItemDecoration(Drawable drawable, Drawable drawable2) {
        this.mVerticalDivider = drawable;
        this.mHorizontalDivider = drawable2;
        this.mItemSpacing = createSpacing(this.mVerticalDivider, this.mHorizontalDivider);
    }

    private static ItemSpacingOffsets createSpacing(Drawable drawable, Drawable drawable2) {
        ItemSpacingOffsets itemSpacingOffsets = new ItemSpacingOffsets(drawable2 != null ? drawable2.getIntrinsicHeight() : 0, drawable != null ? drawable.getIntrinsicWidth() : 0);
        itemSpacingOffsets.setAddSpacingAtEnd(true);
        return itemSpacingOffsets;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        BaseLayoutManager baseLayoutManager = (BaseLayoutManager) recyclerView.getLayoutManager();
        int width = recyclerView.getWidth() - recyclerView.getPaddingRight();
        int height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            int decoratedLeft = baseLayoutManager.getDecoratedLeft(childAt);
            int decoratedTop = baseLayoutManager.getDecoratedTop(childAt);
            int decoratedRight = baseLayoutManager.getDecoratedRight(childAt);
            int decoratedBottom = baseLayoutManager.getDecoratedBottom(childAt);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int bottom = (decoratedBottom - childAt.getBottom()) - marginLayoutParams.bottomMargin;
            if (bottom > 0 && decoratedBottom < height) {
                int i2 = decoratedBottom - bottom;
                this.mHorizontalDivider.setBounds(decoratedLeft, i2, decoratedRight, this.mHorizontalDivider.getIntrinsicHeight() + i2);
                this.mHorizontalDivider.draw(canvas);
            }
            int right = (decoratedRight - childAt.getRight()) - marginLayoutParams.rightMargin;
            if (right > 0 && decoratedRight < width) {
                int i3 = decoratedRight - right;
                this.mVerticalDivider.setBounds(i3, decoratedTop, this.mVerticalDivider.getIntrinsicWidth() + i3, decoratedBottom);
                this.mVerticalDivider.draw(canvas);
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, int i, RecyclerView recyclerView) {
        this.mItemSpacing.getItemOffsets(rect, i, recyclerView);
    }
}
