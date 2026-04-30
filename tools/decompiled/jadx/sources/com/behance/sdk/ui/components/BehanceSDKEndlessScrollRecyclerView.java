package com.behance.sdk.ui.components;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.util.AttributeSet;
import com.behance.sdk.listeners.BehanceSDKEndlessRecyclerOnScrollListener;
import com.behance.sdk.listeners.IBehanceSDKEndlessScrollRecyclerViewListener;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEndlessScrollRecyclerView extends RecyclerView {
    private IBehanceSDKEndlessScrollRecyclerViewListener callbackListener;
    private BehanceSDKEndlessRecyclerOnScrollListener listener;

    public BehanceSDKEndlessScrollRecyclerView(Context context) {
        super(context);
    }

    public BehanceSDKEndlessScrollRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BehanceSDKEndlessScrollRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void initializeScrollListener(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.listener = new BehanceSDKEndlessRecyclerOnScrollListener(staggeredGridLayoutManager) { // from class: com.behance.sdk.ui.components.BehanceSDKEndlessScrollRecyclerView.1
            @Override // com.behance.sdk.listeners.BehanceSDKEndlessRecyclerOnScrollListener
            public void onLoadMore(int i) {
                BehanceSDKEndlessScrollRecyclerView.this.loadNextPage();
            }
        };
        addOnScrollListener(this.listener);
    }

    public void initializeScrollListener(LinearLayoutManager linearLayoutManager) {
        this.listener = new BehanceSDKEndlessRecyclerOnScrollListener(linearLayoutManager) { // from class: com.behance.sdk.ui.components.BehanceSDKEndlessScrollRecyclerView.2
            @Override // com.behance.sdk.listeners.BehanceSDKEndlessRecyclerOnScrollListener
            public void onLoadMore(int i) {
                BehanceSDKEndlessScrollRecyclerView.this.loadNextPage();
            }
        };
        addOnScrollListener(this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNextPage() {
        if (this.callbackListener != null) {
            this.callbackListener.loadNextPage();
        }
    }

    public void setCallbackListener(IBehanceSDKEndlessScrollRecyclerViewListener iBehanceSDKEndlessScrollRecyclerViewListener) {
        this.callbackListener = iBehanceSDKEndlessScrollRecyclerViewListener;
    }

    public void resetScrollCount() {
        if (this.listener != null) {
            this.listener.resetScrollCount();
        }
    }
}
