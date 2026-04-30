package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDepthPageTransformer implements ViewPager.PageTransformer {
    private static final float MIN_SCALE = 0.75f;

    @Override // android.support.v4.view.ViewPager.PageTransformer
    public void transformPage(View view, float f2) {
        int width = view.getWidth();
        if (f2 < -1.0f) {
            ViewCompat.setAlpha(view, 0.0f);
            return;
        }
        if (f2 <= 0.0f) {
            ViewCompat.setAlpha(view, 1.0f);
            ViewCompat.setTranslationX(view, 0.0f);
            ViewCompat.setScaleX(view, 1.0f);
            ViewCompat.setScaleY(view, 1.0f);
            return;
        }
        if (f2 <= 1.0f) {
            ViewCompat.setAlpha(view, 1.0f - f2);
            ViewCompat.setTranslationX(view, width * (-f2));
            float fAbs = 0.75f + (0.25f * (1.0f - Math.abs(f2)));
            ViewCompat.setScaleX(view, fAbs);
            ViewCompat.setScaleY(view, fAbs);
            return;
        }
        ViewCompat.setAlpha(view, 0.0f);
    }
}
