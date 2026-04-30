package com.behance.sdk.ui.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAspectRatioRelativeLayout extends RelativeLayout {
    private double aspectRatio;
    private boolean constrainWidth;

    public BehanceSDKAspectRatioRelativeLayout(Context context) {
        super(context);
        this.aspectRatio = 1.0d;
        this.constrainWidth = true;
    }

    public BehanceSDKAspectRatioRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aspectRatio = 1.0d;
        this.constrainWidth = true;
    }

    public BehanceSDKAspectRatioRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.aspectRatio = 1.0d;
        this.constrainWidth = true;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec = this.constrainWidth ? i : View.MeasureSpec.makeMeasureSpec((int) (this.aspectRatio * ((double) View.MeasureSpec.getSize(i2))), 1073741824);
        if (this.constrainWidth) {
            i2 = View.MeasureSpec.makeMeasureSpec((int) (((double) View.MeasureSpec.getSize(i)) / this.aspectRatio), 1073741824);
        }
        super.onMeasure(iMakeMeasureSpec, i2);
    }

    public void setAspectRatio(double d2) {
        this.aspectRatio = d2;
    }

    public void constrainWidth() {
        this.constrainWidth = true;
    }

    public void constrainHeight() {
        this.constrainWidth = false;
    }
}
