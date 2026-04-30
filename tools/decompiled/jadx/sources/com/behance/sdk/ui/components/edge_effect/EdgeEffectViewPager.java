package com.behance.sdk.ui.components.edge_effect;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class EdgeEffectViewPager extends ViewPager {
    public EdgeEffectViewPager(Context context) {
        this(context, null);
    }

    public EdgeEffectViewPager(Context context, AttributeSet attributeSet) {
        super(new ContextWrapperEdgeEffect(context), attributeSet);
        init(context, attributeSet, 0);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        int color = context.getResources().getColor(R.color.bsdk_overscroll);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKEdgeEffectView, i, 0);
            color = typedArrayObtainStyledAttributes.getColor(R.styleable.BehanceSDKEdgeEffectView_bsdk_edgeeffect_color, color);
            typedArrayObtainStyledAttributes.recycle();
        }
        setEdgeEffectColor(color);
    }

    public void setEdgeEffectColor(int i) {
        ((ContextWrapperEdgeEffect) getContext()).setEdgeEffectColor(i);
    }
}
