package com.facebook.drawee.view;

import android.view.View;
import android.view.ViewGroup;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: AspectRatioMeasure.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static void a(b bVar, float f2, @Nullable ViewGroup.LayoutParams layoutParams, int i, int i2) {
        if (f2 > 0.0f && layoutParams != null) {
            if (a(layoutParams.height)) {
                bVar.f2191b = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(bVar.f2190a) - i) / f2) + i2), bVar.f2191b), 1073741824);
            } else if (a(layoutParams.width)) {
                bVar.f2190a = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(bVar.f2191b) - i2) * f2) + i), bVar.f2190a), 1073741824);
            }
        }
    }

    private static boolean a(int i) {
        return i == 0 || i == -2;
    }
}
