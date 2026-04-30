package com.behance.sdk.listeners;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BehanceSDKEndlessRecyclerOnScrollListener extends RecyclerView.OnScrollListener {
    int firstVisibleItem;
    private LinearLayoutManager mLinearLayoutManager;
    private StaggeredGridLayoutManager mStaggeredGridLayoutManager;
    int totalItemCount;
    int visibleItemCount;
    private int previousTotal = 0;
    private boolean loading = true;
    private int visibleThreshold = 5;
    private int current_page = 1;

    public abstract void onLoadMore(int i);

    public BehanceSDKEndlessRecyclerOnScrollListener(LinearLayoutManager linearLayoutManager) {
        this.mLinearLayoutManager = linearLayoutManager;
    }

    public BehanceSDKEndlessRecyclerOnScrollListener(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.mStaggeredGridLayoutManager = staggeredGridLayoutManager;
    }

    @Override // android.support.v7.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        super.onScrolled(recyclerView, i, i2);
        this.visibleItemCount = recyclerView.getChildCount();
        if (this.mLinearLayoutManager == null) {
            this.totalItemCount = this.mStaggeredGridLayoutManager.getItemCount();
            this.firstVisibleItem = this.mStaggeredGridLayoutManager.findFirstVisibleItemPositions(new int[8])[0];
        } else {
            this.totalItemCount = this.mLinearLayoutManager.getItemCount();
            this.firstVisibleItem = this.mLinearLayoutManager.findFirstVisibleItemPosition();
        }
        if (this.loading && this.totalItemCount > this.previousTotal) {
            this.loading = false;
            this.previousTotal = this.totalItemCount;
        }
        if (!this.loading && this.totalItemCount - this.visibleItemCount <= this.firstVisibleItem + this.visibleThreshold) {
            this.current_page++;
            onLoadMore(this.current_page);
            this.loading = true;
        }
    }

    public void setVisibleThreshold(int i) {
        this.visibleThreshold = i;
    }

    public void resetScrollCount() {
        this.previousTotal = 0;
    }
}
