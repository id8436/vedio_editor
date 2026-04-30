package com.adobe.creativesdk.foundation.internal.twowayview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class SpacingItemDecoration extends RecyclerView.ItemDecoration {
    private final ItemSpacingOffsets mItemSpacing;

    public SpacingItemDecoration(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SpacingItemDecoration(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.adobe_csdk_twowayview_SpacingItemDecoration, i, 0);
        int iMax = Math.max(0, typedArrayObtainStyledAttributes.getInt(R.styleable.adobe_csdk_twowayview_SpacingItemDecoration_android_verticalSpacing, 0));
        int iMax2 = Math.max(0, typedArrayObtainStyledAttributes.getInt(R.styleable.adobe_csdk_twowayview_SpacingItemDecoration_android_horizontalSpacing, 0));
        typedArrayObtainStyledAttributes.recycle();
        this.mItemSpacing = new ItemSpacingOffsets(iMax, iMax2);
    }

    public SpacingItemDecoration(int i, int i2) {
        this.mItemSpacing = new ItemSpacingOffsets(i, i2);
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, int i, RecyclerView recyclerView) {
        this.mItemSpacing.getItemOffsets(rect, i, recyclerView);
    }
}
