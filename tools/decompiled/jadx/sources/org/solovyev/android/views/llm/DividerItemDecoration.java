package org.solovyev.android.views.llm;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class DividerItemDecoration extends RecyclerView.ItemDecoration {
    private Drawable divider;
    private int dividerHeight;
    private int dividerWidth;
    private boolean first;
    private boolean last;

    public DividerItemDecoration(Context context, AttributeSet attributeSet) {
        this.first = false;
        this.last = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.listDivider});
        setDivider(typedArrayObtainStyledAttributes.getDrawable(0));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void setDivider(Drawable drawable) {
        this.divider = drawable;
        this.dividerHeight = drawable == null ? 0 : drawable.getIntrinsicHeight();
        this.dividerWidth = drawable != null ? drawable.getIntrinsicWidth() : 0;
    }

    public DividerItemDecoration(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        this(context, attributeSet);
        this.first = z;
        this.last = z2;
    }

    public DividerItemDecoration(Drawable drawable) {
        this.first = false;
        this.last = false;
        setDivider(drawable);
    }

    public DividerItemDecoration(Drawable drawable, boolean z, boolean z2) {
        this(drawable);
        this.first = z;
        this.last = z2;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.divider == null) {
            super.getItemOffsets(rect, view, recyclerView, state);
            return;
        }
        int viewLayoutPosition = ((RecyclerView.LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
        boolean z = viewLayoutPosition == 0;
        boolean z2 = viewLayoutPosition == recyclerView.getAdapter().getItemCount() + (-1);
        boolean z3 = this.first || !z;
        boolean z4 = this.last && z2;
        if (getOrientation(recyclerView) == 1) {
            rect.top = z3 ? this.dividerHeight : 0;
            rect.bottom = z4 ? this.dividerHeight : 0;
        } else {
            rect.left = z3 ? this.dividerWidth : 0;
            rect.right = z4 ? this.dividerWidth : 0;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int height;
        int i;
        int left;
        int top;
        int i2;
        int i3;
        if (this.divider == null) {
            super.onDraw(canvas, recyclerView, state);
            return;
        }
        int paddingLeft = 0;
        int width = 0;
        int paddingTop = 0;
        int orientation = getOrientation(recyclerView);
        int childCount = recyclerView.getChildCount();
        int itemCount = recyclerView.getAdapter().getItemCount();
        boolean z = orientation == 1;
        if (z) {
            int i4 = this.dividerHeight;
            paddingLeft = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            height = 0;
            i = i4;
        } else {
            int i5 = this.dividerWidth;
            paddingTop = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            i = i5;
        }
        int right = paddingLeft;
        int i6 = width;
        int bottom = paddingTop;
        int i7 = height;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = recyclerView.getChildAt(i8);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            if (layoutParams.getViewLayoutPosition() != 0 || this.first) {
                if (z) {
                    top = (childAt.getTop() - layoutParams.topMargin) - i;
                    i3 = top + i;
                    i2 = i6;
                    left = right;
                } else {
                    left = (childAt.getLeft() - layoutParams.leftMargin) - i;
                    int i9 = i7;
                    top = bottom;
                    i2 = left + i;
                    i3 = i9;
                }
                this.divider.setBounds(left, top, i2, i3);
                this.divider.draw(canvas);
                right = left;
                i6 = i2;
                bottom = top;
                i7 = i3;
            }
        }
        if (this.last && childCount > 0) {
            View childAt2 = recyclerView.getChildAt(childCount - 1);
            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.getViewLayoutPosition() == itemCount - 1) {
                if (z) {
                    bottom = childAt2.getBottom() + layoutParams2.bottomMargin;
                    i7 = bottom + i;
                } else {
                    right = childAt2.getRight() + layoutParams2.rightMargin;
                    i6 = right + i;
                }
                this.divider.setBounds(right, bottom, i6, i7);
                this.divider.draw(canvas);
            }
        }
    }

    private int getOrientation(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof android.support.v7.widget.LinearLayoutManager) {
            return ((android.support.v7.widget.LinearLayoutManager) layoutManager).getOrientation();
        }
        throw new IllegalStateException("DividerItemDecoration can only be used with a LinearLayoutManager");
    }
}
