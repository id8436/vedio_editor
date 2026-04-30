package com.b.a.d.d.a;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: BitmapTransformation.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d implements com.b.a.d.g<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.b.a.d.b.a.e f968a;

    protected abstract Bitmap a(com.b.a.d.b.a.e eVar, Bitmap bitmap, int i, int i2);

    public d(com.b.a.d.b.a.e eVar) {
        this.f968a = eVar;
    }

    @Override // com.b.a.d.g
    public final com.b.a.d.b.z<Bitmap> a(com.b.a.d.b.z<Bitmap> zVar, int i, int i2) {
        if (!com.b.a.j.h.a(i, i2)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        Bitmap bitmapB = zVar.b();
        if (i == Integer.MIN_VALUE) {
            i = bitmapB.getWidth();
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = bitmapB.getHeight();
        }
        Bitmap bitmapA = a(this.f968a, bitmapB, i, i2);
        if (!bitmapB.equals(bitmapA)) {
            return c.a(bitmapA, this.f968a);
        }
        return zVar;
    }
}
