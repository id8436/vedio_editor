package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes2.dex */
public class AutofitRecyclerView extends RecyclerView {
    private int columnWidth;
    private GridLayoutManager manager;

    public AutofitRecyclerView(Context context) {
        super(context);
        this.columnWidth = -1;
        init(context, null);
    }

    public AutofitRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.columnWidth = -1;
        init(context, attributeSet);
    }

    public AutofitRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.columnWidth = -1;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.columnWidth});
            this.columnWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
            typedArrayObtainStyledAttributes.recycle();
        }
        this.manager = new GridLayoutManager(getContext(), 1);
        setLayoutManager(this.manager);
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.columnWidth > 0) {
            this.manager.setSpanCount(Math.max(1, getMeasuredWidth() / this.columnWidth));
        }
    }
}
