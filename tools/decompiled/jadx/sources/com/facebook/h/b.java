package com.facebook.h;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: BitmapUtil.java */
/* JADX INFO: loaded from: classes2.dex */
/* synthetic */ class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f2266a = new int[Bitmap.Config.values().length];

    static {
        try {
            f2266a[Bitmap.Config.ARGB_8888.ordinal()] = 1;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f2266a[Bitmap.Config.ALPHA_8.ordinal()] = 2;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f2266a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f2266a[Bitmap.Config.RGB_565.ordinal()] = 4;
        } catch (NoSuchFieldError e5) {
        }
    }
}
