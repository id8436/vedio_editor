package com.behance.sdk.ui.decorators;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSpaceItemDecorationGrid extends RecyclerView.ItemDecoration {
    private final int mSpaceHeight;

    public BehanceSDKSpaceItemDecorationGrid(Context context) {
        this.mSpaceHeight = context.getResources().getDimensionPixelSize(R.dimen.bsdk_card_grid_item_spacing);
    }

    public BehanceSDKSpaceItemDecorationGrid(int i) {
        this.mSpaceHeight = i;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.bottom = this.mSpaceHeight;
        rect.top = this.mSpaceHeight;
        rect.right = this.mSpaceHeight;
        rect.left = this.mSpaceHeight;
    }
}
