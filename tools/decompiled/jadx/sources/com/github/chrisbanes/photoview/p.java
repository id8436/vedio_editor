package com.github.chrisbanes.photoview;

import android.widget.ImageView;

/* JADX INFO: compiled from: PhotoViewAttacher.java */
/* JADX INFO: loaded from: classes2.dex */
/* synthetic */ class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f3160a = new int[ImageView.ScaleType.values().length];

    static {
        try {
            f3160a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f3160a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f3160a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f3160a[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
        } catch (NoSuchFieldError e5) {
        }
    }
}
