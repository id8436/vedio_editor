package com.m.a;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup;

/* JADX INFO: compiled from: StickyRecyclerHeadersAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
public interface b<VH extends RecyclerView.ViewHolder> {
    long getHeaderId(int i);

    int getItemCount();

    void onBindHeaderViewHolder(VH vh, int i);

    VH onCreateHeaderViewHolder(ViewGroup viewGroup);
}
