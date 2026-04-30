package com.facebook.drawee.e;

import android.graphics.Matrix;
import android.graphics.Rect;

/* JADX INFO: compiled from: ScalingUtils.java */
/* JADX INFO: loaded from: classes2.dex */
class aa extends s {
    public static final t i = new aa();

    private aa() {
    }

    @Override // com.facebook.drawee.e.s
    public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
        float f6 = rect.left;
        float f7 = rect.top;
        matrix.setScale(f4, f5);
        matrix.postTranslate((int) (f6 + 0.5f), (int) (f7 + 0.5f));
    }

    public String toString() {
        return "fit_xy";
    }
}
