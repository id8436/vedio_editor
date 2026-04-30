package com.i.a.b;

import android.graphics.Bitmap;
import android.view.View;

/* JADX INFO: compiled from: ImageLoader.java */
/* JADX INFO: loaded from: classes3.dex */
class i extends com.i.a.b.f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap f3343a;

    private i() {
    }

    @Override // com.i.a.b.f.c, com.i.a.b.f.a
    public void onLoadingComplete(String str, View view, Bitmap bitmap) {
        this.f3343a = bitmap;
    }

    public Bitmap a() {
        return this.f3343a;
    }
}
