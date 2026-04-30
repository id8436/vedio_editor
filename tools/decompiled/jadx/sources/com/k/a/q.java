package com.k.a;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: DeferredRequestCreator.java */
/* JADX INFO: loaded from: classes3.dex */
class q implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ba f3554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final WeakReference<ImageView> f3555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    m f3556c;

    q(ba baVar, ImageView imageView, m mVar) {
        this.f3554a = baVar;
        this.f3555b = new WeakReference<>(imageView);
        this.f3556c = mVar;
        imageView.getViewTreeObserver().addOnPreDrawListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.f3555b.get();
        if (imageView != null) {
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                int width = imageView.getWidth();
                int height = imageView.getHeight();
                if (width > 0 && height > 0) {
                    viewTreeObserver.removeOnPreDrawListener(this);
                    this.f3554a.b().a(width, height).a(imageView, this.f3556c);
                }
            }
        }
        return true;
    }

    void a() {
        this.f3556c = null;
        ImageView imageView = this.f3555b.get();
        if (imageView != null) {
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
        }
    }
}
