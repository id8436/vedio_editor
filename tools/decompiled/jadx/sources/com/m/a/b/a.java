package com.m.a.b;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: DimensionCalculator.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {
    public Rect a(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? a((ViewGroup.MarginLayoutParams) layoutParams) : new Rect();
    }

    private Rect a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
    }
}
