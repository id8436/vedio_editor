package com.facebook.drawee.e;

import android.graphics.Matrix;
import android.graphics.Rect;

/* JADX INFO: compiled from: ScalingUtils.java */
/* JADX INFO: loaded from: classes2.dex */
class ab extends s {
    public static final t i = new ab();

    private ab() {
    }

    @Override // com.facebook.drawee.e.s
    public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
        float fMax;
        float fMax2;
        if (f5 > f4) {
            fMax = rect.left + Math.max(Math.min((rect.width() * 0.5f) - ((i2 * f5) * f2), 0.0f), rect.width() - (i2 * f5));
            fMax2 = rect.top;
        } else {
            fMax = rect.left;
            fMax2 = Math.max(Math.min((rect.height() * 0.5f) - ((i3 * f4) * f3), 0.0f), rect.height() - (i3 * f4)) + rect.top;
            f5 = f4;
        }
        matrix.setScale(f5, f5);
        matrix.postTranslate((int) (fMax + 0.5f), (int) (fMax2 + 0.5f));
    }

    public String toString() {
        return "focus_crop";
    }
}
