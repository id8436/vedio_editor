package com.adobe.creativesdk.foundation.internal.twowayview.widget;

import android.content.Context;
import android.support.v7.widget.OrientationHelper;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AdobeCSDKBaseLayoutManager extends TwoWayLayoutManager {
    private OrientationHelper mOrientationHelper;
    private final boolean mSmoothScrollbarEnabled;

    public AdobeCSDKBaseLayoutManager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSmoothScrollbarEnabled = true;
    }

    public AdobeCSDKBaseLayoutManager(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSmoothScrollbarEnabled = true;
    }

    public AdobeCSDKBaseLayoutManager(TwoWayLayoutManager.Orientation orientation) {
        super(orientation);
        this.mSmoothScrollbarEnabled = true;
    }

    protected void ensureLayoutStateDueToChildContentChange(RecyclerView.State state) {
        int firstVisiblePosition;
        if (this.mOrientationHelper == null) {
            this.mOrientationHelper = OrientationHelper.createOrientationHelper(this, 1);
        }
        int itemCount = state.getItemCount();
        if (itemCount != 0 && getPendingScrollPosition() == -1 && (firstVisiblePosition = getFirstVisiblePosition()) >= 0 && firstVisiblePosition < itemCount) {
            View viewFindViewByPosition = findViewByPosition(firstVisiblePosition);
            if (viewFindViewByPosition != null) {
                setPendingScrollPositionWithOffset(firstVisiblePosition, getChildStart(viewFindViewByPosition));
            } else {
                setPendingScrollPositionWithOffset(-1, 0);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollRange(state, this.mOrientationHelper, getChildClosestToStart(), getChildClosestToEnd(), this, true);
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollExtent(state, this.mOrientationHelper, getChildClosestToStart(), getChildClosestToEnd(), this, true);
    }

    private View getChildClosestToEnd() {
        return getChildAt(getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(0);
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollOffset(state, this.mOrientationHelper, getChildClosestToStart(), getChildClosestToEnd(), this, true, false);
    }
}
