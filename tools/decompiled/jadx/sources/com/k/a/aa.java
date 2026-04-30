package com.k.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: compiled from: ImageViewAction.java */
/* JADX INFO: loaded from: classes3.dex */
class aa extends a<ImageView> {
    m m;

    aa(ak akVar, ImageView imageView, ax axVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, m mVar, boolean z) {
        super(akVar, imageView, axVar, i, i2, i3, drawable, str, obj, z);
        this.m = mVar;
    }

    @Override // com.k.a.a
    public void a(Bitmap bitmap, aq aqVar) {
        if (bitmap == null) {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
        }
        ImageView imageView = (ImageView) this.f3415c.get();
        if (imageView != null) {
            au.a(imageView, this.f3413a.f3453c, bitmap, aqVar, this.f3416d, this.f3413a.k);
            if (this.m != null) {
                this.m.a();
            }
        }
    }

    @Override // com.k.a.a
    public void a() {
        ImageView imageView = (ImageView) this.f3415c.get();
        if (imageView != null) {
            if (this.f3419g != 0) {
                imageView.setImageResource(this.f3419g);
            } else if (this.h != null) {
                imageView.setImageDrawable(this.h);
            }
            if (this.m != null) {
                this.m.b();
            }
        }
    }

    @Override // com.k.a.a
    void b() {
        super.b();
        if (this.m != null) {
            this.m = null;
        }
    }
}
