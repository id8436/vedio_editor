package com.behance.sdk.ui.animations;

import android.support.v4.view.ViewPager;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKZoomOutPageTransformer implements ViewPager.PageTransformer {
    private static final float MIN_ALPHA = 0.5f;
    private static final float MIN_SCALE = 0.85f;

    @Override // android.support.v4.view.ViewPager.PageTransformer
    public void transformPage(View view, float f2) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (f2 < -1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f2 <= 1.0f) {
            float fMax = Math.max(MIN_SCALE, 1.0f - Math.abs(f2));
            float f3 = (height * (1.0f - fMax)) / 2.0f;
            float f4 = (width * (1.0f - fMax)) / 2.0f;
            if (f2 < 0.0f) {
                view.setTranslationX(f4 - (f3 / 2.0f));
            } else {
                view.setTranslationX((-f4) + (f3 / 2.0f));
            }
            view.setScaleX(fMax);
            view.setScaleY(fMax);
            view.setAlpha((((fMax - MIN_SCALE) / 0.14999998f) * MIN_ALPHA) + MIN_ALPHA);
            return;
        }
        view.setAlpha(0.0f);
    }
}
