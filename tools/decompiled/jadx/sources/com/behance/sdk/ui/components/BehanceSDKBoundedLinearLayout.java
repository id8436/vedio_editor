package com.behance.sdk.ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKBoundedLinearLayout extends LinearLayout {
    private final int mBoundedHeight;
    private final int mBoundedWidth;

    public BehanceSDKBoundedLinearLayout(Context context) {
        super(context);
        this.mBoundedWidth = 0;
        this.mBoundedHeight = 0;
    }

    public BehanceSDKBoundedLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKBoundedView);
        this.mBoundedWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BehanceSDKBoundedView_bsdk_bounded_width, 0);
        this.mBoundedHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BehanceSDKBoundedView_bsdk_bounded_height, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        if (this.mBoundedWidth > 0 && this.mBoundedWidth < size) {
            i = View.MeasureSpec.makeMeasureSpec(this.mBoundedWidth, View.MeasureSpec.getMode(i));
        }
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.mBoundedHeight > 0 && this.mBoundedHeight < size2) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.mBoundedHeight, View.MeasureSpec.getMode(i2));
        }
        super.onMeasure(i, i2);
    }
}
