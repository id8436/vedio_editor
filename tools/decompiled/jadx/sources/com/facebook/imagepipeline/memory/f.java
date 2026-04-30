package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: BitmapCounter.java */
/* JADX INFO: loaded from: classes2.dex */
class f implements com.facebook.d.h.i<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f2926a;

    f(e eVar) {
        this.f2926a = eVar;
    }

    @Override // com.facebook.d.h.i
    public void a(Bitmap bitmap) {
        try {
            this.f2926a.b(bitmap);
        } finally {
            bitmap.recycle();
        }
    }
}
