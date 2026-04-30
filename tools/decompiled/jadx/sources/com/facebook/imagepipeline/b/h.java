package com.facebook.imagepipeline.b;

import android.graphics.Bitmap;
import com.facebook.d.h.i;

/* JADX INFO: compiled from: SimpleBitmapReleaser.java */
/* JADX INFO: loaded from: classes2.dex */
public class h implements i<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static h f2394a;

    public static h a() {
        if (f2394a == null) {
            f2394a = new h();
        }
        return f2394a;
    }

    private h() {
    }

    @Override // com.facebook.d.h.i
    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }
}
