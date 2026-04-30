package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class MarginDecoration extends RecyclerView.ItemDecoration {
    private int margin;

    public MarginDecoration(Context context) {
        this.margin = context.getResources().getDimensionPixelSize(R.dimen.adobe_csdk_asset_multipage_spacing);
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.set(this.margin, this.margin, this.margin, this.margin);
    }
}
