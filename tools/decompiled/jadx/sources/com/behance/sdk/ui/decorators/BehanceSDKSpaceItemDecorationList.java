package com.behance.sdk.ui.decorators;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSpaceItemDecorationList extends RecyclerView.ItemDecoration {
    private final int mVerticalSpaceHeight;

    public BehanceSDKSpaceItemDecorationList(int i) {
        this.mVerticalSpaceHeight = i;
    }

    public BehanceSDKSpaceItemDecorationList(Context context) {
        this.mVerticalSpaceHeight = context.getResources().getDimensionPixelSize(R.dimen.bsdk_card_view_vertical_spacing);
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.bottom = this.mVerticalSpaceHeight;
    }
}
