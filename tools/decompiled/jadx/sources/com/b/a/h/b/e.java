package com.b.a.h.b;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: compiled from: ImageViewTarget.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class e<Z> extends l<ImageView, Z> implements com.b.a.h.a.e {
    protected abstract void a(Z z);

    public e(ImageView imageView) {
        super(imageView);
    }

    @Override // com.b.a.h.a.e
    public Drawable b() {
        return ((ImageView) this.f1201a).getDrawable();
    }

    @Override // com.b.a.h.a.e
    public void a(Drawable drawable) {
        ((ImageView) this.f1201a).setImageDrawable(drawable);
    }

    @Override // com.b.a.h.b.a, com.b.a.h.b.k
    public void onLoadStarted(Drawable drawable) {
        ((ImageView) this.f1201a).setImageDrawable(drawable);
    }

    @Override // com.b.a.h.b.a, com.b.a.h.b.k
    public void onLoadFailed(Exception exc, Drawable drawable) {
        ((ImageView) this.f1201a).setImageDrawable(drawable);
    }

    @Override // com.b.a.h.b.a, com.b.a.h.b.k
    public void onLoadCleared(Drawable drawable) {
        ((ImageView) this.f1201a).setImageDrawable(drawable);
    }

    @Override // com.b.a.h.b.k
    public void onResourceReady(Z z, com.b.a.h.a.d<? super Z> dVar) {
        if (dVar == null || !dVar.a(z, this)) {
            a(z);
        }
    }
}
