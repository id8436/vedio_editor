package com.facebook.drawee.e;

import android.graphics.Matrix;
import android.graphics.Rect;

/* JADX INFO: compiled from: ScalingUtils.java */
/* JADX INFO: loaded from: classes2.dex */
class u extends s {
    public static final t i = new u();

    private u() {
    }

    @Override // com.facebook.drawee.e.s
    public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
        matrix.setTranslate((int) (rect.left + ((rect.width() - i2) * 0.5f) + 0.5f), (int) (rect.top + ((rect.height() - i3) * 0.5f) + 0.5f));
    }

    public String toString() {
        return "center";
    }
}
