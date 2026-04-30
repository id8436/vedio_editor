package com.adobe.creativesdk.foundation.internal.twowayview.widget;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.Lanes;

/* JADX INFO: loaded from: classes2.dex */
class ItemSpacingOffsets {
    private boolean mAddSpacingAtEnd;
    private final int mHorizontalSpacing;
    private final Lanes.LaneInfo mTempLaneInfo = new Lanes.LaneInfo();
    private final int mVerticalSpacing;

    public ItemSpacingOffsets(int i, int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Spacings should be equal or greater than 0");
        }
        this.mVerticalSpacing = i;
        this.mHorizontalSpacing = i2;
    }

    private boolean isSecondLane(BaseLayoutManager baseLayoutManager, int i, int i2) {
        if (i2 == 0 || i == 0) {
            return false;
        }
        int i3 = -1;
        int i4 = i - 1;
        while (i4 >= 0) {
            baseLayoutManager.getLaneForPosition(this.mTempLaneInfo, i4, TwoWayLayoutManager.Direction.END);
            i3 = this.mTempLaneInfo.startLane;
            if (i3 != i2) {
                break;
            }
            i4--;
        }
        int laneSpanForPosition = baseLayoutManager.getLaneSpanForPosition(i4);
        if (i3 == 0) {
            return i2 == i3 + laneSpanForPosition;
        }
        return false;
    }

    private static boolean isFirstChildInLane(BaseLayoutManager baseLayoutManager, int i) {
        int count = baseLayoutManager.getLanes().getCount();
        if (i >= count) {
            return false;
        }
        int laneSpanForPosition = 0;
        for (int i2 = 0; i2 < i; i2++) {
            laneSpanForPosition += baseLayoutManager.getLaneSpanForPosition(i2);
            if (laneSpanForPosition >= count) {
                return false;
            }
        }
        return true;
    }

    private static boolean isLastChildInLane(BaseLayoutManager baseLayoutManager, int i, int i2) {
        return (i < i2 - baseLayoutManager.getLanes().getCount() || (baseLayoutManager instanceof SpannableGridLayoutManager) || (baseLayoutManager instanceof StaggeredGridLayoutManager)) ? false : true;
    }

    public void setAddSpacingAtEnd(boolean z) {
        this.mAddSpacingAtEnd = z;
    }

    public void getItemOffsets(Rect rect, int i, RecyclerView recyclerView) {
        int i2;
        int i3;
        BaseLayoutManager baseLayoutManager = (BaseLayoutManager) recyclerView.getLayoutManager();
        baseLayoutManager.getLaneForPosition(this.mTempLaneInfo, i, TwoWayLayoutManager.Direction.END);
        int i4 = this.mTempLaneInfo.startLane;
        int laneSpanForPosition = baseLayoutManager.getLaneSpanForPosition(i);
        int count = baseLayoutManager.getLanes().getCount();
        int itemCount = recyclerView.getAdapter().getItemCount();
        boolean zIsVertical = baseLayoutManager.isVertical();
        boolean z = i4 == 0;
        boolean zIsSecondLane = isSecondLane(baseLayoutManager, i, i4);
        boolean z2 = i4 + laneSpanForPosition == count;
        boolean z3 = i4 + laneSpanForPosition == count + (-1);
        int i5 = zIsVertical ? this.mHorizontalSpacing : this.mVerticalSpacing;
        if (z) {
            i2 = 0;
        } else if (z2 && !zIsSecondLane) {
            i2 = (int) (((double) i5) * 0.75d);
        } else if (zIsSecondLane && !z2) {
            i2 = (int) (((double) i5) * 0.25d);
        } else {
            i2 = (int) (((double) i5) * 0.5d);
        }
        if (z2) {
            i3 = 0;
        } else if (z && !z3) {
            i3 = (int) (((double) i5) * 0.75d);
        } else if (z3 && !z) {
            i3 = (int) (((double) i5) * 0.25d);
        } else {
            i3 = (int) (((double) i5) * 0.5d);
        }
        boolean zIsFirstChildInLane = isFirstChildInLane(baseLayoutManager, i);
        boolean z4 = !this.mAddSpacingAtEnd && isLastChildInLane(baseLayoutManager, i, itemCount);
        if (zIsVertical) {
            rect.left = i2;
            rect.top = zIsFirstChildInLane ? 0 : this.mVerticalSpacing / 2;
            rect.right = i3;
            rect.bottom = z4 ? 0 : this.mVerticalSpacing / 2;
            return;
        }
        rect.left = zIsFirstChildInLane ? 0 : this.mHorizontalSpacing / 2;
        rect.top = i2;
        rect.right = z4 ? 0 : this.mHorizontalSpacing / 2;
        rect.bottom = i3;
    }
}
