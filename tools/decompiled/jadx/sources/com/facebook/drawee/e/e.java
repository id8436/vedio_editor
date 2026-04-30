package com.facebook.drawee.e;

import android.annotation.SuppressLint;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: DrawableProperties.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2094a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2095b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorFilter f2096c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2097d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2098e = -1;

    public void a(int i) {
        this.f2094a = i;
    }

    public void a(ColorFilter colorFilter) {
        this.f2096c = colorFilter;
        this.f2095b = true;
    }

    public void a(boolean z) {
        this.f2097d = z ? 1 : 0;
    }

    public void b(boolean z) {
        this.f2098e = z ? 1 : 0;
    }

    @SuppressLint({"Range"})
    public void a(Drawable drawable) {
        if (drawable != null) {
            if (this.f2094a != -1) {
                drawable.setAlpha(this.f2094a);
            }
            if (this.f2095b) {
                drawable.setColorFilter(this.f2096c);
            }
            if (this.f2097d != -1) {
                drawable.setDither(this.f2097d != 0);
            }
            if (this.f2098e != -1) {
                drawable.setFilterBitmap(this.f2098e != 0);
            }
        }
    }
}
