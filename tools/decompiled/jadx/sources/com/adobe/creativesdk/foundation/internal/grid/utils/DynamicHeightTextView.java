package com.adobe.creativesdk.foundation.internal.grid.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class DynamicHeightTextView extends TextView {
    private double mHeightRatio;

    public DynamicHeightTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DynamicHeightTextView(Context context) {
        super(context);
    }

    public void setHeightRatio(double d2) {
        if (d2 != this.mHeightRatio) {
            this.mHeightRatio = d2;
            requestLayout();
        }
    }

    public double getHeightRatio() {
        return this.mHeightRatio;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mHeightRatio > 0.0d) {
            int size = View.MeasureSpec.getSize(i);
            setMeasuredDimension(size, (int) (((double) size) * this.mHeightRatio));
        } else {
            super.onMeasure(i, i2);
        }
    }
}
