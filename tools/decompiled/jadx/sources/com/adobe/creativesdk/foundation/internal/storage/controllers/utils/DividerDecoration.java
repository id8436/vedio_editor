package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class DividerDecoration extends RecyclerView.ItemDecoration {
    private static final int[] ATTRS = {R.attr.listDivider};
    private int leftMargin;
    private Drawable mDivider1;
    private Drawable mDivider2;

    public DividerDecoration(Context context, int i) {
        this.mDivider1 = context.getResources().getDrawable(com.adobe.creativesdk.foundation.assetux.R.drawable.sectional_list_divider_white);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(ATTRS);
        this.mDivider2 = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        this.leftMargin = i;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int paddingLeft = recyclerView.getPaddingLeft();
        int width = recyclerView.getWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < childCount - 1) {
                View childAt = recyclerView.getChildAt(i2);
                int bottom = ((RecyclerView.LayoutParams) childAt.getLayoutParams()).bottomMargin + childAt.getBottom();
                int intrinsicHeight = this.mDivider1.getIntrinsicHeight() + bottom;
                this.mDivider1.setBounds(paddingLeft, bottom, this.leftMargin + paddingLeft, intrinsicHeight);
                this.mDivider1.draw(canvas);
                this.mDivider2.setBounds(this.leftMargin + paddingLeft, bottom, width, intrinsicHeight);
                this.mDivider2.draw(canvas);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
