package com.b.a.h.b;

import android.widget.ImageView;

/* JADX INFO: compiled from: GlideDrawableImageViewTarget.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends e<com.b.a.d.d.b.b> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.b.a.d.d.b.b f1193c;

    public d(ImageView imageView) {
        this(imageView, -1);
    }

    public d(ImageView imageView, int i) {
        super(imageView);
        this.f1192b = i;
    }

    @Override // com.b.a.h.b.e, com.b.a.h.b.k
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResourceReady(com.b.a.d.d.b.b bVar, com.b.a.h.a.d<? super com.b.a.d.d.b.b> dVar) {
        if (!bVar.a()) {
            float intrinsicWidth = bVar.getIntrinsicWidth() / bVar.getIntrinsicHeight();
            if (Math.abs((((ImageView) this.f1201a).getWidth() / ((ImageView) this.f1201a).getHeight()) - 1.0f) <= 0.05f && Math.abs(intrinsicWidth - 1.0f) <= 0.05f) {
                bVar = new i(bVar, ((ImageView) this.f1201a).getWidth());
            }
        }
        super.onResourceReady(bVar, dVar);
        this.f1193c = bVar;
        bVar.a(this.f1192b);
        bVar.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.h.b.e
    public void a(com.b.a.d.d.b.b bVar) {
        ((ImageView) this.f1201a).setImageDrawable(bVar);
    }

    @Override // com.b.a.h.b.a, com.b.a.e.j
    public void onStart() {
        if (this.f1193c != null) {
            this.f1193c.start();
        }
    }

    @Override // com.b.a.h.b.a, com.b.a.e.j
    public void onStop() {
        if (this.f1193c != null) {
            this.f1193c.stop();
        }
    }
}
