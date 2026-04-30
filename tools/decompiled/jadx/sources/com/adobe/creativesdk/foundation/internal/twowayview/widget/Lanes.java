package com.adobe.creativesdk.foundation.internal.twowayview.widget;

import android.graphics.Rect;
import android.support.v7.widget.ActivityChooserView;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
class Lanes {
    public static final int NO_LANE = -1;
    private Integer mInnerEnd;
    private Integer mInnerStart;
    private final boolean mIsVertical;
    private final int mLaneSize;
    private final Rect[] mLanes;
    private final BaseLayoutManager mLayout;
    private final Rect[] mSavedLanes;
    private final Rect mTempRect = new Rect();
    private final LaneInfo mTempLaneInfo = new LaneInfo();

    public class LaneInfo {
        public int anchorLane;
        public int startLane;

        public boolean isUndefined() {
            return this.startLane == -1 || this.anchorLane == -1;
        }

        public void set(int i, int i2) {
            this.startLane = i;
            this.anchorLane = i2;
        }

        public void setUndefined() {
            this.startLane = -1;
            this.anchorLane = -1;
        }
    }

    public Lanes(BaseLayoutManager baseLayoutManager, TwoWayLayoutManager.Orientation orientation, Rect[] rectArr, int i) {
        this.mLayout = baseLayoutManager;
        this.mIsVertical = orientation == TwoWayLayoutManager.Orientation.VERTICAL;
        this.mLanes = rectArr;
        this.mLaneSize = i;
        this.mSavedLanes = new Rect[this.mLanes.length];
        for (int i2 = 0; i2 < this.mLanes.length; i2++) {
            this.mSavedLanes[i2] = new Rect();
        }
    }

    public Lanes(BaseLayoutManager baseLayoutManager, int i) {
        this.mLayout = baseLayoutManager;
        this.mIsVertical = baseLayoutManager.isVertical();
        this.mLanes = new Rect[i];
        this.mSavedLanes = new Rect[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.mLanes[i2] = new Rect();
            this.mSavedLanes[i2] = new Rect();
        }
        this.mLaneSize = calculateLaneSize(baseLayoutManager, i);
        int paddingLeft = baseLayoutManager.getPaddingLeft();
        int paddingTop = baseLayoutManager.getPaddingTop();
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = i3 * this.mLaneSize;
            int i5 = paddingLeft + (this.mIsVertical ? i4 : 0);
            int i6 = paddingTop + (this.mIsVertical ? 0 : i4);
            this.mLanes[i3].set(i5, i6, this.mIsVertical ? this.mLaneSize + i5 : i5, this.mIsVertical ? i6 : this.mLaneSize + i6);
        }
    }

    public static int calculateLaneSize(BaseLayoutManager baseLayoutManager, int i) {
        if (baseLayoutManager.isVertical()) {
            int paddingLeft = baseLayoutManager.getPaddingLeft();
            return ((baseLayoutManager.getWidth() - paddingLeft) - baseLayoutManager.getPaddingRight()) / i;
        }
        int paddingTop = baseLayoutManager.getPaddingTop();
        return ((baseLayoutManager.getHeight() - paddingTop) - baseLayoutManager.getPaddingBottom()) / i;
    }

    private void invalidateEdges() {
        this.mInnerStart = null;
        this.mInnerEnd = null;
    }

    public TwoWayLayoutManager.Orientation getOrientation() {
        return this.mIsVertical ? TwoWayLayoutManager.Orientation.VERTICAL : TwoWayLayoutManager.Orientation.HORIZONTAL;
    }

    public void save() {
        for (int i = 0; i < this.mLanes.length; i++) {
            this.mSavedLanes[i].set(this.mLanes[i]);
        }
    }

    public void restore() {
        for (int i = 0; i < this.mLanes.length; i++) {
            this.mLanes[i].set(this.mSavedLanes[i]);
        }
    }

    public int getLaneSize() {
        return this.mLaneSize;
    }

    public int getCount() {
        return this.mLanes.length;
    }

    private void offsetLane(int i, int i2) {
        Rect rect = this.mLanes[i];
        int i3 = this.mIsVertical ? 0 : i2;
        if (!this.mIsVertical) {
            i2 = 0;
        }
        rect.offset(i3, i2);
    }

    public void offset(int i) {
        for (int i2 = 0; i2 < this.mLanes.length; i2++) {
            offset(i2, i);
        }
        invalidateEdges();
    }

    public void offset(int i, int i2) {
        offsetLane(i, i2);
        invalidateEdges();
    }

    public void getLane(int i, Rect rect) {
        rect.set(this.mLanes[i]);
    }

    public int pushChildFrame(Rect rect, int i, int i2, TwoWayLayoutManager.Direction direction) {
        int i3;
        Rect rect2 = this.mLanes[i];
        if (this.mIsVertical) {
            if (direction == TwoWayLayoutManager.Direction.END) {
                i3 = rect.top - rect2.bottom;
                rect2.bottom = rect.bottom + i2;
            } else {
                i3 = rect.bottom - rect2.top;
                rect2.top = rect.top - i2;
            }
        } else if (direction == TwoWayLayoutManager.Direction.END) {
            i3 = rect.left - rect2.right;
            rect2.right = rect.right + i2;
        } else {
            i3 = rect.right - rect2.left;
            rect2.left = rect.left - i2;
        }
        invalidateEdges();
        return i3;
    }

    public void popChildFrame(Rect rect, int i, int i2, TwoWayLayoutManager.Direction direction) {
        Rect rect2 = this.mLanes[i];
        if (this.mIsVertical) {
            if (direction == TwoWayLayoutManager.Direction.END) {
                rect2.top = rect.bottom - i2;
            } else {
                rect2.bottom = rect.top + i2;
            }
        } else if (direction == TwoWayLayoutManager.Direction.END) {
            rect2.left = rect.right - i2;
        } else {
            rect2.right = rect.left + i2;
        }
        invalidateEdges();
    }

    public void getChildFrame(Rect rect, int i, int i2, LaneInfo laneInfo, TwoWayLayoutManager.Direction direction) {
        Rect rect2 = this.mLanes[laneInfo.startLane];
        Rect rect3 = this.mLanes[direction == TwoWayLayoutManager.Direction.END ? laneInfo.anchorLane : laneInfo.startLane];
        if (this.mIsVertical) {
            rect.left = rect2.left;
            rect.top = direction == TwoWayLayoutManager.Direction.END ? rect3.bottom : rect3.top - i2;
        } else {
            rect.top = rect2.top;
            rect.left = direction == TwoWayLayoutManager.Direction.END ? rect3.right : rect3.left - i;
        }
        rect.right = rect.left + i;
        rect.bottom = rect.top + i2;
    }

    private boolean intersects(int i, int i2, Rect rect) {
        for (int i3 = i; i3 < i + i2; i3++) {
            if (Rect.intersects(this.mLanes[i3], rect)) {
                return true;
            }
        }
        return false;
    }

    private int findLaneThatFitsSpan(int i, int i2, TwoWayLayoutManager.Direction direction) {
        int iMax = Math.max(0, (i - i2) + 1);
        int iMin = Math.min(iMax + i2, (this.mLanes.length - i2) + 1);
        while (iMax < iMin) {
            this.mTempLaneInfo.set(iMax, i);
            getChildFrame(this.mTempRect, this.mIsVertical ? i2 * this.mLaneSize : 1, this.mIsVertical ? 1 : i2 * this.mLaneSize, this.mTempLaneInfo, direction);
            if (!intersects(iMax, i2, this.mTempRect)) {
                return iMax;
            }
            iMax++;
        }
        return -1;
    }

    public void findLane(LaneInfo laneInfo, int i, TwoWayLayoutManager.Direction direction) {
        int i2;
        int iFindLaneThatFitsSpan;
        laneInfo.setUndefined();
        int i3 = direction == TwoWayLayoutManager.Direction.END ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : Integer.MIN_VALUE;
        for (int i4 = 0; i4 < this.mLanes.length; i4++) {
            if (this.mIsVertical) {
                i2 = direction == TwoWayLayoutManager.Direction.END ? this.mLanes[i4].bottom : this.mLanes[i4].top;
            } else {
                i2 = direction == TwoWayLayoutManager.Direction.END ? this.mLanes[i4].right : this.mLanes[i4].left;
            }
            if (((direction == TwoWayLayoutManager.Direction.END && i2 < i3) || (direction == TwoWayLayoutManager.Direction.START && i2 > i3)) && (iFindLaneThatFitsSpan = findLaneThatFitsSpan(i4, i, direction)) != -1) {
                laneInfo.set(iFindLaneThatFitsSpan, i4);
                i3 = i2;
            }
        }
    }

    public void reset(TwoWayLayoutManager.Direction direction) {
        for (int i = 0; i < this.mLanes.length; i++) {
            Rect rect = this.mLanes[i];
            if (this.mIsVertical) {
                if (direction == TwoWayLayoutManager.Direction.START) {
                    rect.bottom = rect.top;
                } else {
                    rect.top = rect.bottom;
                }
            } else if (direction == TwoWayLayoutManager.Direction.START) {
                rect.right = rect.left;
            } else {
                rect.left = rect.right;
            }
        }
        invalidateEdges();
    }

    public void reset(int i) {
        for (int i2 = 0; i2 < this.mLanes.length; i2++) {
            Rect rect = this.mLanes[i2];
            rect.offsetTo(this.mIsVertical ? rect.left : i, this.mIsVertical ? i : rect.top);
            if (this.mIsVertical) {
                rect.bottom = rect.top;
            } else {
                rect.right = rect.left;
            }
        }
        invalidateEdges();
    }

    public int getInnerStart() {
        if (this.mInnerStart != null) {
            return this.mInnerStart.intValue();
        }
        this.mInnerStart = Integer.MIN_VALUE;
        for (int i = 0; i < this.mLanes.length; i++) {
            Rect rect = this.mLanes[i];
            this.mInnerStart = Integer.valueOf(Math.max(this.mInnerStart.intValue(), this.mIsVertical ? rect.top : rect.left));
        }
        return this.mInnerStart.intValue();
    }

    public int getInnerEnd() {
        if (this.mInnerEnd != null) {
            return this.mInnerEnd.intValue();
        }
        this.mInnerEnd = Integer.valueOf(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        for (int i = 0; i < this.mLanes.length; i++) {
            Rect rect = this.mLanes[i];
            this.mInnerEnd = Integer.valueOf(Math.min(this.mInnerEnd.intValue(), this.mIsVertical ? rect.bottom : rect.right));
        }
        return this.mInnerEnd.intValue();
    }
}
