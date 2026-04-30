package com.behance.sdk.ui.decorators;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSpaceItemDecorationGridEdgeless extends RecyclerView.ItemDecoration {
    private final int mSpaceHeight;

    public BehanceSDKSpaceItemDecorationGridEdgeless(Context context) {
        this.mSpaceHeight = context.getResources().getDimensionPixelSize(R.dimen.bsdk_card_grid_item_spacing);
    }

    public BehanceSDKSpaceItemDecorationGridEdgeless(int i) {
        this.mSpaceHeight = i;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int spanCount = ((GridLayoutManager) recyclerView.getLayoutManager()).getSpanCount();
        int i = childAdapterPosition % spanCount;
        rect.bottom = childAdapterPosition >= (state.getItemCount() / spanCount) * spanCount ? 0 : this.mSpaceHeight;
        rect.top = childAdapterPosition < spanCount ? 0 : this.mSpaceHeight;
        rect.right = i == spanCount + (-1) ? 0 : this.mSpaceHeight;
        rect.left = i != 0 ? this.mSpaceHeight : 0;
    }
}
