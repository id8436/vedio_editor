package com.adobe.creativesdk.foundation.internal.twowayview.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.Lanes;

/* JADX INFO: loaded from: classes2.dex */
public class ListLayoutManager extends BaseLayoutManager {
    private static final String LOGTAG = "ListLayoutManager";

    public ListLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ListLayoutManager(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public ListLayoutManager(Context context, TwoWayLayoutManager.Orientation orientation) {
        super(orientation);
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    int getLaneCount() {
        return 1;
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    void getLaneForPosition(Lanes.LaneInfo laneInfo, int i, TwoWayLayoutManager.Direction direction) {
        laneInfo.set(0, 0);
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    void moveLayoutToPosition(int i, int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        getLanes().reset(i2);
    }
}
