package com.facebook.drawee.e;

import android.graphics.Matrix;
import android.graphics.Rect;

/* JADX INFO: compiled from: ScalingUtils.java */
/* JADX INFO: loaded from: classes2.dex */
class v extends s {
    public static final t i = new v();

    private v() {
    }

    @Override // com.facebook.drawee.e.s
    public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
        float fWidth;
        float fHeight;
        if (f5 > f4) {
            fWidth = ((rect.width() - (i2 * f5)) * 0.5f) + rect.left;
            fHeight = rect.top;
        } else {
            fWidth = rect.left;
            fHeight = rect.top + ((rect.height() - (i3 * f4)) * 0.5f);
            f5 = f4;
        }
        matrix.setScale(f5, f5);
        matrix.postTranslate((int) (fWidth + 0.5f), (int) (fHeight + 0.5f));
    }

    public String toString() {
        return "center_crop";
    }
}
