package com.behance.sdk.ui.components.edge_effect;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;

/* JADX INFO: loaded from: classes2.dex */
public class EdgeEffectListView extends ListView {
    public EdgeEffectListView(Context context) {
        this(context, null);
    }

    public EdgeEffectListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public EdgeEffectListView(Context context, AttributeSet attributeSet, int i) {
        super(new ContextWrapperEdgeEffect(context), attributeSet, i);
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        int color = context.getResources().getColor(com.behance.sdk.R.color.bsdk_overscroll);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.behance.sdk.R.styleable.BehanceSDKEdgeEffectView, i, 0);
            color = typedArrayObtainStyledAttributes.getColor(com.behance.sdk.R.styleable.BehanceSDKEdgeEffectView_bsdk_edgeeffect_color, color);
            typedArrayObtainStyledAttributes.recycle();
        }
        setEdgeEffectColor(color);
    }

    @Override // android.widget.AbsListView
    public void setEdgeEffectColor(int i) {
        ((ContextWrapperEdgeEffect) getContext()).setEdgeEffectColor(i);
    }
}
