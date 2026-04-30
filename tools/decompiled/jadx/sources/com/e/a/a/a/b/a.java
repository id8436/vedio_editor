package com.e.a.a.a.b;

import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.animation.Interpolator;

/* JADX INFO: compiled from: BaseDraggableItemDecorator.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class a extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected RecyclerView f1572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected RecyclerView.ViewHolder f1573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1574c = 200;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1575d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Interpolator f1576e;

    public a(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        this.f1572a = recyclerView;
        this.f1573b = viewHolder;
        this.f1575d = (int) ((recyclerView.getResources().getDisplayMetrics().density * 2.0f) + 0.5f);
    }

    public void a(int i) {
        this.f1574c = i;
    }

    public void a(Interpolator interpolator) {
        this.f1576e = interpolator;
    }

    protected void a(View view, boolean z) {
        int translationX = (int) ViewCompat.getTranslationX(view);
        int translationY = (int) ViewCompat.getTranslationY(view);
        int width = view.getWidth() / 2;
        int height = view.getHeight() / 2;
        float fAbs = width > 0 ? Math.abs(translationX / width) : 0.0f;
        float fAbs2 = height > 0 ? Math.abs(translationY / height) : 0.0f;
        float fMin = 1.0f - Math.min(fAbs, 1.0f);
        float fMin2 = 1.0f - Math.min(fAbs2, 1.0f);
        int iMax = Math.max((int) (((1.0f - (fMin * fMin)) * this.f1574c) + 0.5f), (int) (((1.0f - (fMin2 * fMin2)) * this.f1574c) + 0.5f));
        int iMax2 = Math.max(Math.abs(translationX), Math.abs(translationY));
        if (a() && z && iMax > 20 && iMax2 > this.f1575d) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAnimate = ViewCompat.animate(view);
            viewPropertyAnimatorCompatAnimate.cancel();
            viewPropertyAnimatorCompatAnimate.setDuration(iMax);
            viewPropertyAnimatorCompatAnimate.setInterpolator(this.f1576e);
            viewPropertyAnimatorCompatAnimate.translationX(0.0f);
            viewPropertyAnimatorCompatAnimate.translationY(0.0f);
            viewPropertyAnimatorCompatAnimate.setListener(new b(this, viewPropertyAnimatorCompatAnimate));
            viewPropertyAnimatorCompatAnimate.start();
            return;
        }
        ViewCompat.setTranslationX(view, 0.0f);
        ViewCompat.setTranslationY(view, 0.0f);
    }

    protected static void a(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f2, float f3) {
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.endAnimation(viewHolder);
        }
        ViewCompat.setTranslationX(viewHolder.itemView, f2);
        ViewCompat.setTranslationY(viewHolder.itemView, f3);
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT >= 11;
    }
}
