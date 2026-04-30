package com.behance.sdk.ui.components;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPreCachingLinearLayoutManager extends LinearLayoutManager {
    private int preCacheDist;

    public BehanceSDKPreCachingLinearLayoutManager(Context context) {
        super(context);
        this.preCacheDist = 0;
        this.preCacheDist = context.getResources().getDimensionPixelSize(R.dimen.bsdk_layout_manager_pre_cache_distance);
    }

    public BehanceSDKPreCachingLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.preCacheDist = 0;
        this.preCacheDist = context.getResources().getDimensionPixelSize(R.dimen.bsdk_layout_manager_pre_cache_distance);
    }

    public BehanceSDKPreCachingLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.preCacheDist = 0;
        this.preCacheDist = context.getResources().getDimensionPixelSize(R.dimen.bsdk_layout_manager_pre_cache_distance);
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    protected int getExtraLayoutSpace(RecyclerView.State state) {
        return this.preCacheDist;
    }

    public void setPreCacheDist(int i) {
        this.preCacheDist = i;
    }
}
