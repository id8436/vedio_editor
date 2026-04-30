package com.m.a.d;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

/* JADX INFO: compiled from: LinearLayoutOrientationProvider.java */
/* JADX INFO: loaded from: classes3.dex */
public class a implements b {
    @Override // com.m.a.d.b
    public int a(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).getOrientation();
        }
        throw new IllegalStateException("StickyListHeadersDecoration can only be used with a LinearLayoutManager.");
    }
}
