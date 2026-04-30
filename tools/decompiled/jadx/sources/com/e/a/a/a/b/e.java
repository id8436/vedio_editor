package com.e.a.a.a.b;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;

/* JADX INFO: compiled from: DraggableItemAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public interface e<T extends RecyclerView.ViewHolder> {
    boolean onCheckCanStartDrag(T t, int i, int i2, int i3);

    j onGetItemDraggableRange(T t, int i);

    void onMoveItem(int i, int i2);
}
