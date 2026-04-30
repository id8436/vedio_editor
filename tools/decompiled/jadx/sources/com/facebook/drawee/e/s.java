package com.facebook.drawee.e;

import android.graphics.Matrix;
import android.graphics.Rect;

/* JADX INFO: compiled from: ScalingUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class s implements t {
    public abstract void a(Matrix matrix, Rect rect, int i, int i2, float f2, float f3, float f4, float f5);

    @Override // com.facebook.drawee.e.t
    public Matrix a(Matrix matrix, Rect rect, int i, int i2, float f2, float f3) {
        a(matrix, rect, i, i2, f2, f3, rect.width() / i, rect.height() / i2);
        return matrix;
    }
}
