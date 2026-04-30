package com.e.a.a.a.a;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: compiled from: RefactoredDefaultItemAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends com.e.a.a.a.a.a.h {
    public f(a aVar) {
        super(aVar);
    }

    @Override // com.e.a.a.a.a.a.h
    protected void a(com.e.a.a.a.a.a.e eVar) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAnimate = ViewCompat.animate(eVar.f1556b.itemView);
        viewPropertyAnimatorCompatAnimate.setDuration(h());
        viewPropertyAnimatorCompatAnimate.translationX(eVar.f1559e - eVar.f1557c);
        viewPropertyAnimatorCompatAnimate.translationY(eVar.f1560f - eVar.f1558d);
        viewPropertyAnimatorCompatAnimate.alpha(0.0f);
        a(eVar, eVar.f1556b, viewPropertyAnimatorCompatAnimate);
    }

    @Override // com.e.a.a.a.a.a.h
    protected void b(com.e.a.a.a.a.a.e eVar) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAnimate = ViewCompat.animate(eVar.f1555a.itemView);
        viewPropertyAnimatorCompatAnimate.translationX(0.0f);
        viewPropertyAnimatorCompatAnimate.translationY(0.0f);
        viewPropertyAnimatorCompatAnimate.setDuration(h());
        viewPropertyAnimatorCompatAnimate.alpha(1.0f);
        a(eVar, eVar.f1555a, viewPropertyAnimatorCompatAnimate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void c(com.e.a.a.a.a.a.e eVar, RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        ViewCompat.setAlpha(view, 1.0f);
        ViewCompat.setTranslationX(view, 0.0f);
        ViewCompat.setTranslationY(view, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public void b(com.e.a.a.a.a.a.e eVar, RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        ViewCompat.setAlpha(view, 1.0f);
        ViewCompat.setTranslationX(view, 0.0f);
        ViewCompat.setTranslationY(view, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(com.e.a.a.a.a.a.e eVar, RecyclerView.ViewHolder viewHolder) {
    }

    @Override // com.e.a.a.a.a.a.h
    public boolean a(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        float translationX = ViewCompat.getTranslationX(viewHolder.itemView);
        float translationY = ViewCompat.getTranslationY(viewHolder.itemView);
        float alpha = ViewCompat.getAlpha(viewHolder.itemView);
        e(viewHolder);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        ViewCompat.setTranslationX(viewHolder.itemView, translationX);
        ViewCompat.setTranslationY(viewHolder.itemView, translationY);
        ViewCompat.setAlpha(viewHolder.itemView, alpha);
        if (viewHolder2 != null) {
            e(viewHolder2);
            ViewCompat.setTranslationX(viewHolder2.itemView, -i5);
            ViewCompat.setTranslationY(viewHolder2.itemView, -i6);
            ViewCompat.setAlpha(viewHolder2.itemView, 0.0f);
        }
        c(new com.e.a.a.a.a.a.e(viewHolder, viewHolder2, i, i2, i3, i4));
        return true;
    }
}
