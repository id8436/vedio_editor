package com.facebook.drawee.e;

import android.graphics.Matrix;
import android.graphics.Rect;

/* JADX INFO: compiled from: ScalingUtils.java */
/* JADX INFO: loaded from: classes2.dex */
class w extends s {
    public static final t i = new w();

    private w() {
    }

    @Override // com.facebook.drawee.e.s
    public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
        float fMin = Math.min(Math.min(f4, f5), 1.0f);
        float fWidth = rect.left + ((rect.width() - (i2 * fMin)) * 0.5f);
        float fHeight = rect.top + ((rect.height() - (i3 * fMin)) * 0.5f);
        matrix.setScale(fMin, fMin);
        matrix.postTranslate((int) (fWidth + 0.5f), (int) (fHeight + 0.5f));
    }

    public String toString() {
        return "center_inside";
    }
}
