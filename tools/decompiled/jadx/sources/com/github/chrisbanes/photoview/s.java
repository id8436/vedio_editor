package com.github.chrisbanes.photoview;

import android.widget.ImageView;

/* JADX INFO: compiled from: Util.java */
/* JADX INFO: loaded from: classes2.dex */
class s {
    static void a(float f2, float f3, float f4) {
        if (f2 >= f3) {
            throw new IllegalArgumentException("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        }
        if (f3 >= f4) {
            throw new IllegalArgumentException("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    static boolean a(ImageView imageView) {
        return imageView.getDrawable() != null;
    }

    static boolean a(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            return false;
        }
        switch (t.f3171a[scaleType.ordinal()]) {
            case 1:
                throw new IllegalStateException("Matrix scale type is not supported");
            default:
                return true;
        }
    }

    static int a(int i) {
        return (65280 & i) >> 8;
    }
}
