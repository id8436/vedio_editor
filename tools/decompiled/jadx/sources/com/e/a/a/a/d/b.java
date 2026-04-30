package com.e.a.a.a.d;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup;

/* JADX INFO: compiled from: BaseWrapperAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class b<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RecyclerView.Adapter<VH> f1632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f1633b = new c(this);

    public b(RecyclerView.Adapter<VH> adapter) {
        this.f1632a = adapter;
        this.f1632a.registerAdapterDataObserver(this.f1633b);
        super.setHasStableIds(this.f1632a.hasStableIds());
    }

    public void f() {
        a();
        if (this.f1632a != null && this.f1633b != null) {
            this.f1632a.unregisterAdapterDataObserver(this.f1633b);
        }
        this.f1632a = null;
        this.f1633b = null;
    }

    protected void a() {
    }

    public RecyclerView.Adapter<VH> g() {
        return this.f1632a;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.f1632a.onAttachedToRecyclerView(recyclerView);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.f1632a.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(VH vh) {
        this.f1632a.onViewAttachedToWindow(vh);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(VH vh) {
        this.f1632a.onViewDetachedFromWindow(vh);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewRecycled(VH vh) {
        this.f1632a.onViewRecycled(vh);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z) {
        super.setHasStableIds(z);
        this.f1632a.setHasStableIds(z);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        return (VH) this.f1632a.onCreateViewHolder(viewGroup, i);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(VH vh, int i) {
        this.f1632a.onBindViewHolder(vh, i);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1632a.getItemCount();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.f1632a.getItemId(i);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.f1632a.getItemViewType(i);
    }

    protected void b() {
        notifyDataSetChanged();
    }

    protected void a(int i, int i2) {
        notifyItemRangeChanged(i, i2);
    }

    protected void a(int i, int i2, Object obj) {
        notifyItemRangeChanged(i, i2, obj);
    }

    protected void b(int i, int i2) {
        notifyItemRangeInserted(i, i2);
    }

    protected void c(int i, int i2) {
        notifyItemRangeRemoved(i, i2);
    }

    protected void b(int i, int i2, int i3) {
        if (i3 != 1) {
            throw new IllegalStateException("itemCount should be always 1  (actual: " + i3 + ")");
        }
        notifyItemMoved(i, i2);
    }

    final void h() {
        b();
    }

    final void e(int i, int i2) {
        a(i, i2);
    }

    final void b(int i, int i2, Object obj) {
        a(i, i2, obj);
    }

    final void f(int i, int i2) {
        b(i, i2);
    }

    final void g(int i, int i2) {
        c(i, i2);
    }

    final void c(int i, int i2, int i3) {
        b(i, i2, i3);
    }
}
