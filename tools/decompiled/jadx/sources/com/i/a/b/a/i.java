package com.i.a.b.a;

import android.widget.ImageView;

/* JADX INFO: compiled from: ViewScaleType.java */
/* JADX INFO: loaded from: classes3.dex */
public enum i {
    FIT_INSIDE,
    CROP;

    public static i a(ImageView imageView) {
        switch (j.f3283a[imageView.getScaleType().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return FIT_INSIDE;
            default:
                return CROP;
        }
    }
}
