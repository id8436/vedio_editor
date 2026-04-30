package com.b.a;

import android.widget.ImageView;

/* JADX INFO: compiled from: GenericRequestBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
/* synthetic */ class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f1144a = new int[ImageView.ScaleType.values().length];

    static {
        try {
            f1144a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f1144a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f1144a[ImageView.ScaleType.FIT_START.ordinal()] = 3;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f1144a[ImageView.ScaleType.FIT_END.ordinal()] = 4;
        } catch (NoSuchFieldError e5) {
        }
    }
}
