package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import com.adobe.creativesdk.foundation.internal.grid.StaggeredGridView;

/* JADX INFO: loaded from: classes.dex */
public class AdobeStorageEndlessScrollStaggeredGridView extends StaggeredGridView implements AbsListView.OnScrollListener {
    private static final int DEFAULT_VISIBLE_THRESHOLD = 5;
    private IAdobeEndlessScrollStaggeredGridListener listener;
    private boolean loading;
    private int visibleThreshold;

    public AdobeStorageEndlessScrollStaggeredGridView(Context context) {
        super(context);
        this.visibleThreshold = 5;
        this.loading = true;
        setOnScrollListener(this);
    }

    public AdobeStorageEndlessScrollStaggeredGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.visibleThreshold = 5;
        this.loading = true;
        setOnScrollListener(this);
    }

    public AdobeStorageEndlessScrollStaggeredGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.visibleThreshold = 5;
        this.loading = true;
        setOnScrollListener(this);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.listener != null) {
            if (!isLoading() && i3 > 0 && i3 - i2 <= this.visibleThreshold + i) {
                setLoading(true);
                this.listener.onEndlessScrollStaggeredGridLoadNextPage();
            }
            if (i3 > 0 && i + i2 == i3) {
                this.listener.onEndlessScrollStaggeredGridShowLoadingProgressBar();
            }
        }
    }

    public int getVisibleThreshold() {
        return this.visibleThreshold;
    }

    public void setVisibleThreshold(int i) {
        if (i > 0) {
            this.visibleThreshold = i;
        }
    }

    public IAdobeEndlessScrollStaggeredGridListener getListener() {
        return this.listener;
    }

    public void setListener(IAdobeEndlessScrollStaggeredGridListener iAdobeEndlessScrollStaggeredGridListener) {
        this.listener = iAdobeEndlessScrollStaggeredGridListener;
    }

    public boolean isLoading() {
        return this.loading;
    }

    public void setLoading(boolean z) {
        this.loading = z;
    }
}
