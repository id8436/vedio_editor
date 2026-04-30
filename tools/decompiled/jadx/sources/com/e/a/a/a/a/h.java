package com.e.a.a.a.a;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView;
import com.e.a.a.a.a.a.j;
import com.e.a.a.a.a.a.l;

/* JADX INFO: compiled from: RefactoredDefaultItemAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends j {
    public h(a aVar) {
        super(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public void a(l lVar) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAnimate = ViewCompat.animate(lVar.f1566a.itemView);
        viewPropertyAnimatorCompatAnimate.setDuration(h());
        viewPropertyAnimatorCompatAnimate.alpha(0.0f);
        a(lVar, lVar.f1566a, viewPropertyAnimatorCompatAnimate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void c(l lVar, RecyclerView.ViewHolder viewHolder) {
        ViewCompat.setAlpha(viewHolder.itemView, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public void b(l lVar, RecyclerView.ViewHolder viewHolder) {
        ViewCompat.setAlpha(viewHolder.itemView, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(l lVar, RecyclerView.ViewHolder viewHolder) {
    }

    @Override // com.e.a.a.a.a.a.j
    public boolean a(RecyclerView.ViewHolder viewHolder) {
        e(viewHolder);
        c(new l(viewHolder));
        return true;
    }
}
