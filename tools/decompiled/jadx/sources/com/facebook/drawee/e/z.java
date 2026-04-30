package com.facebook.drawee.e;

import android.graphics.Matrix;
import android.graphics.Rect;

/* JADX INFO: compiled from: ScalingUtils.java */
/* JADX INFO: loaded from: classes2.dex */
class z extends s {
    public static final t i = new z();

    private z() {
    }

    @Override // com.facebook.drawee.e.s
    public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
        float fMin = Math.min(f4, f5);
        float f6 = rect.left;
        float f7 = rect.top;
        matrix.setScale(fMin, fMin);
        matrix.postTranslate((int) (f6 + 0.5f), (int) (f7 + 0.5f));
    }

    public String toString() {
        return "fit_start";
    }
}
