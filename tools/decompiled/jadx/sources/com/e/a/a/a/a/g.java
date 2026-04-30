package com.e.a.a.a.a;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.e.a.a.a.a.a.i;
import com.e.a.a.a.a.a.k;

/* JADX INFO: compiled from: RefactoredDefaultItemAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends i {
    public g(a aVar) {
        super(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public void a(k kVar) {
        View view = kVar.f1561a.itemView;
        int i = kVar.f1564d - kVar.f1562b;
        int i2 = kVar.f1565e - kVar.f1563c;
        if (i != 0) {
            ViewCompat.animate(view).translationX(0.0f);
        }
        if (i2 != 0) {
            ViewCompat.animate(view).translationY(0.0f);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAnimate = ViewCompat.animate(view);
        viewPropertyAnimatorCompatAnimate.setDuration(h());
        a(kVar, kVar.f1561a, viewPropertyAnimatorCompatAnimate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void c(k kVar, RecyclerView.ViewHolder viewHolder) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public void b(k kVar, RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        ViewCompat.setTranslationY(view, 0.0f);
        ViewCompat.setTranslationX(view, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(k kVar, RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        int i = kVar.f1564d - kVar.f1562b;
        int i2 = kVar.f1565e - kVar.f1563c;
        if (i != 0) {
            ViewCompat.animate(view).translationX(0.0f);
        }
        if (i2 != 0) {
            ViewCompat.animate(view).translationY(0.0f);
        }
        if (i != 0) {
            ViewCompat.setTranslationX(view, 0.0f);
        }
        if (i2 != 0) {
            ViewCompat.setTranslationY(view, 0.0f);
        }
    }

    @Override // com.e.a.a.a.a.a.i
    public boolean a(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        int translationX = (int) (i + ViewCompat.getTranslationX(viewHolder.itemView));
        int translationY = (int) (i2 + ViewCompat.getTranslationY(viewHolder.itemView));
        e(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        k kVar = new k(viewHolder, translationX, translationY, i3, i4);
        if (i5 == 0 && i6 == 0) {
            e(kVar, kVar.f1561a);
            kVar.a(kVar.f1561a);
            return false;
        }
        if (i5 != 0) {
            ViewCompat.setTranslationX(view, -i5);
        }
        if (i6 != 0) {
            ViewCompat.setTranslationY(view, -i6);
        }
        c(kVar);
        return true;
    }
}
