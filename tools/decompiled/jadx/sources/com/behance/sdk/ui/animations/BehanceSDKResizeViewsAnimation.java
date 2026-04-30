package com.behance.sdk.ui.animations;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKResizeViewsAnimation extends Animation {
    private List<ResizeItem> items = new ArrayList();

    public void addItem(View view, int i, float f2, float f3) {
        this.items.add(new ResizeItem(view, i, f2, f3));
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f2, Transformation transformation) {
        for (ResizeItem resizeItem : this.items) {
            resizeItem.mView.getLayoutParams().width = resizeItem.mStartWidth + ((int) ((resizeItem.mWidth - resizeItem.mStartWidth) * f2));
            resizeItem.mView.setAlpha(resizeItem.fadeBase + (resizeItem.fadeBy * f2));
            resizeItem.mView.requestLayout();
        }
    }

    @Override // android.view.animation.Animation
    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }

    class ResizeItem {
        private float fadeBase;
        private float fadeBy;
        private int mStartWidth;
        private View mView;
        private int mWidth;

        private ResizeItem(View view, int i, float f2, float f3) {
            this.mView = view;
            this.mWidth = i;
            this.mStartWidth = view.getWidth();
            this.fadeBase = f2;
            this.fadeBy = f3;
        }
    }
}
