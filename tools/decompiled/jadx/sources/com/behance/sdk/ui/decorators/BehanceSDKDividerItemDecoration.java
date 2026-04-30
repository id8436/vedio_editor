package com.behance.sdk.ui.decorators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKDividerItemDecoration extends RecyclerView.ItemDecoration {
    private Drawable divider;
    private int horizontalPadding;

    public BehanceSDKDividerItemDecoration(Context context, int i, int i2) {
        this.divider = ContextCompat.getDrawable(context, i);
        this.horizontalPadding = i2;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (((Integer) childAt.getTag()).intValue() <= 1) {
                int bottom = ((RecyclerView.LayoutParams) childAt.getLayoutParams()).bottomMargin + childAt.getBottom();
                this.divider.setBounds(this.horizontalPadding, bottom, recyclerView.getWidth() - this.horizontalPadding, this.divider.getIntrinsicHeight() + bottom);
                this.divider.draw(canvas);
            }
        }
    }
}
