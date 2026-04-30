package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class GridSpacesItemDecoration extends RecyclerView.ItemDecoration {
    private int offset;

    public GridSpacesItemDecoration(int i, Context context) {
        this.offset = dpToPx(i, context);
    }

    public int dpToPx(int i, Context context) {
        return Math.round((context.getResources().getDisplayMetrics().xdpi / 160.0f) * i);
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        rect.set(this.offset, this.offset, this.offset, this.offset);
    }
}
