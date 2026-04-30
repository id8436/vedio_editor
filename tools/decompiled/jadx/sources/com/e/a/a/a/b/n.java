package com.e.a.a.a.b;

import android.support.v7.widget.RecyclerView;

/* JADX INFO: compiled from: RecyclerViewDragDropManager.java */
/* JADX INFO: loaded from: classes2.dex */
class n extends RecyclerView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f1616a;

    n(l lVar) {
        this.f1616a = lVar;
    }

    @Override // android.support.v7.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        this.f1616a.a(recyclerView, i);
    }

    @Override // android.support.v7.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        this.f1616a.a(recyclerView, i, i2);
    }
}
