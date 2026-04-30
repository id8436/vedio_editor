package com.behance.sdk.ui.components;

import android.content.Context;
import android.util.AttributeSet;
import com.behance.sdk.ui.components.edge_effect.EdgeEffectScrollView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCustomVerticalScrollView extends EdgeEffectScrollView {
    private Callbacks callbacks;

    public interface Callbacks {
        void onCustomScrollViewScrollChanged(int i, int i2, int i3, int i4);
    }

    public BehanceSDKCustomVerticalScrollView(Context context) {
        super(context);
    }

    public BehanceSDKCustomVerticalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BehanceSDKCustomVerticalScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.callbacks != null) {
            this.callbacks.onCustomScrollViewScrollChanged(i, i2, i3, i4);
        }
    }

    public Callbacks getCallbacks() {
        return this.callbacks;
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }
}
