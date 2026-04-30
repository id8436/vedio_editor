package com.e.a.a.a.d;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: BaseWrapperAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
final class c<VH extends RecyclerView.ViewHolder> extends RecyclerView.AdapterDataObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<b<VH>> f1634a;

    public c(b<VH> bVar) {
        this.f1634a = new WeakReference<>(bVar);
    }

    @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
    public void onChanged() {
        b<VH> bVar = this.f1634a.get();
        if (bVar != null) {
            bVar.h();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
    public void onItemRangeChanged(int i, int i2) {
        b<VH> bVar = this.f1634a.get();
        if (bVar != null) {
            bVar.e(i, i2);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
    public void onItemRangeChanged(int i, int i2, Object obj) {
        b<VH> bVar = this.f1634a.get();
        if (bVar != null) {
            bVar.b(i, i2, obj);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
    public void onItemRangeInserted(int i, int i2) {
        b<VH> bVar = this.f1634a.get();
        if (bVar != null) {
            bVar.f(i, i2);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
    public void onItemRangeRemoved(int i, int i2) {
        b<VH> bVar = this.f1634a.get();
        if (bVar != null) {
            bVar.g(i, i2);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
    public void onItemRangeMoved(int i, int i2, int i3) {
        b<VH> bVar = this.f1634a.get();
        if (bVar != null) {
            bVar.c(i, i2, i3);
        }
    }
}
