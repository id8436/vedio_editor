package com.b.a.d.b.b;

import android.util.DisplayMetrics;

/* JADX INFO: compiled from: MemorySizeCalculator.java */
/* JADX INFO: loaded from: classes2.dex */
class r implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DisplayMetrics f839a;

    public r(DisplayMetrics displayMetrics) {
        this.f839a = displayMetrics;
    }

    @Override // com.b.a.d.b.b.s
    public int a() {
        return this.f839a.widthPixels;
    }

    @Override // com.b.a.d.b.b.s
    public int b() {
        return this.f839a.heightPixels;
    }
}
