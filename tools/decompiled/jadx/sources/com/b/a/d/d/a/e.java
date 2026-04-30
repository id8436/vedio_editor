package com.b.a.d.d.a;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: CenterCrop.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends d {
    public e(com.b.a.d.b.a.e eVar) {
        super(eVar);
    }

    @Override // com.b.a.d.d.a.d
    protected Bitmap a(com.b.a.d.b.a.e eVar, Bitmap bitmap, int i, int i2) {
        Bitmap bitmapA = eVar.a(i, i2, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        Bitmap bitmapA2 = z.a(bitmapA, bitmap, i, i2);
        if (bitmapA != null && bitmapA != bitmapA2 && !eVar.a(bitmapA)) {
            bitmapA.recycle();
        }
        return bitmapA2;
    }

    @Override // com.b.a.d.g
    public String a() {
        return "CenterCrop.com.bumptech.glide.load.resource.bitmap";
    }
}
