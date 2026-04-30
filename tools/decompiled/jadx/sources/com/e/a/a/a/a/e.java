package com.e.a.a.a.a;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView;

/* JADX INFO: compiled from: RefactoredDefaultItemAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends com.e.a.a.a.a.a.f {
    public e(a aVar) {
        super(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public void a(com.e.a.a.a.a.a.a aVar) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAnimate = ViewCompat.animate(aVar.f1544a.itemView);
        viewPropertyAnimatorCompatAnimate.alpha(1.0f);
        viewPropertyAnimatorCompatAnimate.setDuration(h());
        a(aVar, aVar.f1544a, viewPropertyAnimatorCompatAnimate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void c(com.e.a.a.a.a.a.a aVar, RecyclerView.ViewHolder viewHolder) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public void b(com.e.a.a.a.a.a.a aVar, RecyclerView.ViewHolder viewHolder) {
        ViewCompat.setAlpha(viewHolder.itemView, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(com.e.a.a.a.a.a.a aVar, RecyclerView.ViewHolder viewHolder) {
        ViewCompat.setAlpha(viewHolder.itemView, 1.0f);
    }

    @Override // com.e.a.a.a.a.a.f
    public boolean a(RecyclerView.ViewHolder viewHolder) {
        e(viewHolder);
        ViewCompat.setAlpha(viewHolder.itemView, 0.0f);
        c(new com.e.a.a.a.a.a.a(viewHolder));
        return true;
    }
}
