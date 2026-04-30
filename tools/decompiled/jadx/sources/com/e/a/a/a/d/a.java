package com.e.a.a.a.d;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.e.a.a.a.b.f;

/* JADX INFO: compiled from: AbstractDraggableItemViewHolder.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends RecyclerView.ViewHolder implements f {
    private int mDragStateFlags;

    public a(View view) {
        super(view);
    }

    @Override // com.e.a.a.a.b.f
    public void setDragStateFlags(int i) {
        this.mDragStateFlags = i;
    }

    @Override // com.e.a.a.a.b.f
    public int getDragStateFlags() {
        return this.mDragStateFlags;
    }
}
