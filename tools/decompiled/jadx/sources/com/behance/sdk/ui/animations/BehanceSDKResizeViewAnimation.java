package com.behance.sdk.ui.animations;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKResizeViewAnimation extends Animation {
    private final int heightDelta;
    private final int oldHeight;
    private final int oldWidth;
    private View view;
    private final int widthDelta;

    public BehanceSDKResizeViewAnimation(View view, int i) {
        this.view = view;
        this.oldWidth = view.getWidth();
        this.oldHeight = view.getHeight();
        this.widthDelta = i - this.oldWidth;
        this.heightDelta = (int) ((((1.0d * ((double) i)) * ((double) this.oldHeight)) / ((double) this.oldWidth)) - ((double) this.oldHeight));
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f2, Transformation transformation) {
        this.view.getLayoutParams().width = (int) (this.oldWidth + (this.widthDelta * f2));
        this.view.getLayoutParams().height = (int) (this.oldHeight + (this.heightDelta * f2));
        this.view.requestLayout();
        this.view.getParent().requestLayout();
    }

    @Override // android.view.animation.Animation
    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }
}
