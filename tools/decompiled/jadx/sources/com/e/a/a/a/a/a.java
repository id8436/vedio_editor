package com.e.a.a.a.a;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SimpleItemAnimator;

/* JADX INFO: compiled from: BaseItemAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends SimpleItemAnimator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f1543a;

    @Override // android.support.v7.widget.SimpleItemAnimator
    public final void onAddStarting(RecyclerView.ViewHolder viewHolder) {
        a(viewHolder);
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public final void onAddFinished(RecyclerView.ViewHolder viewHolder) {
        b(viewHolder);
        if (this.f1543a != null) {
            this.f1543a.b(viewHolder);
        }
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public final void onChangeStarting(RecyclerView.ViewHolder viewHolder, boolean z) {
        a(viewHolder, z);
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public final void onChangeFinished(RecyclerView.ViewHolder viewHolder, boolean z) {
        b(viewHolder, z);
        if (this.f1543a != null) {
            this.f1543a.d(viewHolder);
        }
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public final void onMoveStarting(RecyclerView.ViewHolder viewHolder) {
        c(viewHolder);
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public final void onMoveFinished(RecyclerView.ViewHolder viewHolder) {
        d(viewHolder);
        if (this.f1543a != null) {
            this.f1543a.c(viewHolder);
        }
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public final void onRemoveStarting(RecyclerView.ViewHolder viewHolder) {
        e(viewHolder);
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public final void onRemoveFinished(RecyclerView.ViewHolder viewHolder) {
        f(viewHolder);
        if (this.f1543a != null) {
            this.f1543a.a(viewHolder);
        }
    }

    protected void a(RecyclerView.ViewHolder viewHolder) {
    }

    protected void b(RecyclerView.ViewHolder viewHolder) {
    }

    protected void a(RecyclerView.ViewHolder viewHolder, boolean z) {
    }

    protected void b(RecyclerView.ViewHolder viewHolder, boolean z) {
    }

    protected void c(RecyclerView.ViewHolder viewHolder) {
    }

    protected void d(RecyclerView.ViewHolder viewHolder) {
    }

    protected void e(RecyclerView.ViewHolder viewHolder) {
    }

    protected void f(RecyclerView.ViewHolder viewHolder) {
    }

    public boolean a() {
        if (isRunning()) {
            return false;
        }
        dispatchAnimationsFinished();
        return true;
    }

    public boolean b() {
        return false;
    }
}
