package com.e.a.a.a.b;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: compiled from: BaseDraggableItemDecorator.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements ViewPropertyAnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewPropertyAnimatorCompat f1577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f1578b;

    b(a aVar, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        this.f1578b = aVar;
        this.f1577a = viewPropertyAnimatorCompat;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        this.f1577a.setListener(null);
        ViewCompat.setTranslationX(view, 0.0f);
        ViewCompat.setTranslationY(view, 0.0f);
        if (view.getParent() instanceof RecyclerView) {
            ViewCompat.postInvalidateOnAnimation((RecyclerView) view.getParent());
        }
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationCancel(View view) {
    }
}
