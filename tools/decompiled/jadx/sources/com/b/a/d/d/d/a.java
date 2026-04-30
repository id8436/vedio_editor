package com.b.a.d.d.d;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: GifBitmapProvider.java */
/* JADX INFO: loaded from: classes2.dex */
class a implements com.b.a.b.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.b.a.e f1033a;

    public a(com.b.a.d.b.a.e eVar) {
        this.f1033a = eVar;
    }

    @Override // com.b.a.b.b
    public Bitmap a(int i, int i2, Bitmap.Config config) {
        return this.f1033a.b(i, i2, config);
    }

    @Override // com.b.a.b.b
    public void a(Bitmap bitmap) {
        if (!this.f1033a.a(bitmap)) {
            bitmap.recycle();
        }
    }
}
