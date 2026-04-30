package com.behance.sdk.ui.adapters.helpers;

import android.graphics.Canvas;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKTouchHelperCallback extends ItemTouchHelper.Callback {
    private static final float ALPHA_FULL = 1.0f;
    private final BehanceSDKAdapterTouchHelper mAdapter;
    private boolean longPressDragEnabled = true;
    private boolean itemViewSwipeEnabled = true;

    public BehanceSDKTouchHelperCallback(BehanceSDKAdapterTouchHelper behanceSDKAdapterTouchHelper) {
        this.mAdapter = behanceSDKAdapterTouchHelper;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public boolean isLongPressDragEnabled() {
        return this.longPressDragEnabled;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public boolean isItemViewSwipeEnabled() {
        return this.itemViewSwipeEnabled;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        if ((viewHolder.itemView.getTag() instanceof Integer) && ((Integer) viewHolder.itemView.getTag()).intValue() != 0) {
            return makeMovementFlags(0, 0);
        }
        if (recyclerView.getLayoutManager() instanceof GridLayoutManager) {
            return makeMovementFlags(this.longPressDragEnabled ? 15 : 0, 0);
        }
        return makeMovementFlags(this.longPressDragEnabled ? 3 : 0, this.itemViewSwipeEnabled ? 48 : 0);
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        if (viewHolder.getItemViewType() != viewHolder2.getItemViewType()) {
            return false;
        }
        this.mAdapter.onItemMoved(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
        return true;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        this.mAdapter.onItemRemoved(viewHolder.getAdapterPosition());
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f2, float f3, int i, boolean z) {
        if (i == 1) {
            viewHolder.itemView.setAlpha(1.0f - (Math.abs(f2) / viewHolder.itemView.getWidth()));
            viewHolder.itemView.setTranslationX(f2);
            return;
        }
        super.onChildDraw(canvas, recyclerView, viewHolder, f2, f3, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
        if (i != 0 && (viewHolder instanceof BehanceSDKViewHolderTouchHelper)) {
            ((BehanceSDKViewHolderTouchHelper) viewHolder).onItemSelected();
        }
        super.onSelectedChanged(viewHolder, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        viewHolder.itemView.setAlpha(1.0f);
        if (viewHolder instanceof BehanceSDKViewHolderTouchHelper) {
            ((BehanceSDKViewHolderTouchHelper) viewHolder).onItemCleared();
        }
    }

    public void setLongPressDragEnabled(boolean z) {
        this.longPressDragEnabled = z;
    }

    public void setItemViewSwipeEnabled(boolean z) {
        this.itemViewSwipeEnabled = z;
    }
}
