package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeDesignItemDynamicHeightView extends RelativeLayout {
    private double mHeightRatio;

    public AdobeDesignItemDynamicHeightView(Context context) {
        super(context);
        this.mHeightRatio = 1.0d;
    }

    public AdobeDesignItemDynamicHeightView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHeightRatio = 1.0d;
    }

    public AdobeDesignItemDynamicHeightView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHeightRatio = 1.0d;
    }

    public void setHeightRatio(double d2) {
        this.mHeightRatio = d2;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i);
    }
}
