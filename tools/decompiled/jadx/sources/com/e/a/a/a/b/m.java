package com.e.a.a.a.b;

import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;

/* JADX INFO: compiled from: RecyclerViewDragDropManager.java */
/* JADX INFO: loaded from: classes2.dex */
class m implements RecyclerView.OnItemTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f1615a;

    m(l lVar) {
        this.f1615a = lVar;
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        return this.f1615a.a(recyclerView, motionEvent);
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        this.f1615a.b(recyclerView, motionEvent);
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
        this.f1615a.c(z);
    }
}
