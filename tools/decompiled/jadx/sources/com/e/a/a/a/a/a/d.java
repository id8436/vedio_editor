package com.e.a.a.a.a.a;

import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: compiled from: BaseItemAnimationManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements ViewPropertyAnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f1551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f1552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RecyclerView.ViewHolder f1553c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewPropertyAnimatorCompat f1554d;

    public d(b bVar, g gVar, RecyclerView.ViewHolder viewHolder, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        this.f1551a = bVar;
        this.f1552b = gVar;
        this.f1553c = viewHolder;
        this.f1554d = viewPropertyAnimatorCompat;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        this.f1551a.d(this.f1552b, this.f1553c);
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        b bVar = this.f1551a;
        g gVar = this.f1552b;
        RecyclerView.ViewHolder viewHolder = this.f1553c;
        this.f1554d.setListener(null);
        this.f1551a = null;
        this.f1552b = null;
        this.f1553c = null;
        this.f1554d = null;
        bVar.c(gVar, viewHolder);
        bVar.e(gVar, viewHolder);
        gVar.a(viewHolder);
        bVar.f1548d.remove(viewHolder);
        bVar.g();
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationCancel(View view) {
        this.f1551a.a(this.f1552b, this.f1553c);
    }
}
