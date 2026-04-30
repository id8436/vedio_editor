package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.d.d.k;

/* JADX INFO: loaded from: classes2.dex */
public class Bitmaps {
    private static native void nativePinBitmap(Bitmap bitmap);

    static {
        a.a();
    }

    public static void a(Bitmap bitmap) {
        k.a(bitmap);
        nativePinBitmap(bitmap);
    }
}
