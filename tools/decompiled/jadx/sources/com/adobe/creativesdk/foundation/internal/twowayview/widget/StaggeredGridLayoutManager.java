package com.adobe.creativesdk.foundation.internal.twowayview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.Lanes;

/* JADX INFO: loaded from: classes2.dex */
public class StaggeredGridLayoutManager extends GridLayoutManager {
    private static final int DEFAULT_NUM_COLS = 2;
    private static final int DEFAULT_NUM_ROWS = 2;
    private static final String LOGTAG = "StaggeredGridLayoutManager";

    public class StaggeredItemEntry extends BaseLayoutManager.ItemEntry {
        public static final Parcelable.Creator<StaggeredItemEntry> CREATOR = new Parcelable.Creator<StaggeredItemEntry>() { // from class: com.adobe.creativesdk.foundation.internal.twowayview.widget.StaggeredGridLayoutManager.StaggeredItemEntry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StaggeredItemEntry createFromParcel(Parcel parcel) {
                return new StaggeredItemEntry(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StaggeredItemEntry[] newArray(int i) {
                return new StaggeredItemEntry[i];
            }
        };
        private int height;
        private final int span;
        private int width;

        public StaggeredItemEntry(int i, int i2, int i3) {
            super(i, i2);
            this.span = i3;
        }

        public StaggeredItemEntry(Parcel parcel) {
            super(parcel);
            this.span = parcel.readInt();
            this.width = parcel.readInt();
            this.height = parcel.readInt();
        }

        @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager.ItemEntry, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.span);
            parcel.writeInt(this.width);
            parcel.writeInt(this.height);
        }
    }

    public StaggeredGridLayoutManager(Context context) {
        this(context, null);
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 2, 2);
    }

    public StaggeredGridLayoutManager(TwoWayLayoutManager.Orientation orientation, int i, int i2) {
        super(orientation, i, i2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    int getLaneSpanForChild(View view) {
        return ((LayoutParams) view.getLayoutParams()).span;
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    int getLaneSpanForPosition(int i) {
        StaggeredItemEntry staggeredItemEntry = (StaggeredItemEntry) getItemEntryForPosition(i);
        if (staggeredItemEntry != null) {
            return staggeredItemEntry.span;
        }
        throw new IllegalStateException("Could not find span for position " + i);
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.GridLayoutManager, com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    void getLaneForPosition(Lanes.LaneInfo laneInfo, int i, TwoWayLayoutManager.Direction direction) {
        StaggeredItemEntry staggeredItemEntry = (StaggeredItemEntry) getItemEntryForPosition(i);
        if (staggeredItemEntry != null) {
            laneInfo.set(staggeredItemEntry.startLane, staggeredItemEntry.anchorLane);
        } else {
            laneInfo.setUndefined();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    void getLaneForChild(Lanes.LaneInfo laneInfo, View view, TwoWayLayoutManager.Direction direction) {
        super.getLaneForChild(laneInfo, view, direction);
        if (laneInfo.isUndefined()) {
            getLanes().findLane(laneInfo, getLaneSpanForChild(view), direction);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.GridLayoutManager, com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    void moveLayoutToPosition(int i, int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        StaggeredItemEntry staggeredItemEntry;
        boolean zIsVertical = isVertical();
        Lanes lanes = getLanes();
        lanes.reset(0);
        for (int i3 = 0; i3 <= i; i3++) {
            StaggeredItemEntry staggeredItemEntry2 = (StaggeredItemEntry) getItemEntryForPosition(i3);
            if (staggeredItemEntry2 != null) {
                this.mTempLaneInfo.set(staggeredItemEntry2.startLane, staggeredItemEntry2.anchorLane);
                if (this.mTempLaneInfo.isUndefined()) {
                    lanes.findLane(this.mTempLaneInfo, getLaneSpanForPosition(i3), TwoWayLayoutManager.Direction.END);
                    staggeredItemEntry2.setLane(this.mTempLaneInfo);
                }
                lanes.getChildFrame(this.mTempRect, staggeredItemEntry2.width, staggeredItemEntry2.height, this.mTempLaneInfo, TwoWayLayoutManager.Direction.END);
                staggeredItemEntry = staggeredItemEntry2;
            } else {
                View viewForPosition = recycler.getViewForPosition(i3);
                measureChild(viewForPosition, TwoWayLayoutManager.Direction.END);
                StaggeredItemEntry staggeredItemEntry3 = (StaggeredItemEntry) getItemEntryForPosition(i3);
                this.mTempLaneInfo.set(staggeredItemEntry3.startLane, staggeredItemEntry3.anchorLane);
                lanes.getChildFrame(this.mTempRect, getDecoratedMeasuredWidth(viewForPosition), getDecoratedMeasuredHeight(viewForPosition), this.mTempLaneInfo, TwoWayLayoutManager.Direction.END);
                cacheItemFrame(staggeredItemEntry3, this.mTempRect);
                staggeredItemEntry = staggeredItemEntry3;
            }
            if (i3 != i) {
                pushChildFrame(staggeredItemEntry, this.mTempRect, staggeredItemEntry.startLane, staggeredItemEntry.span, TwoWayLayoutManager.Direction.END);
            }
        }
        lanes.getLane(this.mTempLaneInfo.startLane, this.mTempRect);
        lanes.reset(TwoWayLayoutManager.Direction.END);
        lanes.offset(i2 - (zIsVertical ? this.mTempRect.bottom : this.mTempRect.right));
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    BaseLayoutManager.ItemEntry cacheChildLaneAndSpan(View view, TwoWayLayoutManager.Direction direction) {
        int position = getPosition(view);
        this.mTempLaneInfo.setUndefined();
        StaggeredItemEntry staggeredItemEntry = (StaggeredItemEntry) getItemEntryForPosition(position);
        if (staggeredItemEntry != null) {
            this.mTempLaneInfo.set(staggeredItemEntry.startLane, staggeredItemEntry.anchorLane);
        }
        if (this.mTempLaneInfo.isUndefined()) {
            getLaneForChild(this.mTempLaneInfo, view, direction);
        }
        if (staggeredItemEntry == null) {
            StaggeredItemEntry staggeredItemEntry2 = new StaggeredItemEntry(this.mTempLaneInfo.startLane, this.mTempLaneInfo.anchorLane, getLaneSpanForChild(view));
            setItemEntryForPosition(position, staggeredItemEntry2);
            return staggeredItemEntry2;
        }
        staggeredItemEntry.setLane(this.mTempLaneInfo);
        return staggeredItemEntry;
    }

    void cacheItemFrame(StaggeredItemEntry staggeredItemEntry, Rect rect) {
        staggeredItemEntry.width = rect.right - rect.left;
        staggeredItemEntry.height = rect.bottom - rect.top;
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager
    BaseLayoutManager.ItemEntry cacheChildFrame(View view, Rect rect) {
        StaggeredItemEntry staggeredItemEntry = (StaggeredItemEntry) getItemEntryForPosition(getPosition(view));
        if (staggeredItemEntry == null) {
            throw new IllegalStateException("Tried to cache frame on undefined item");
        }
        cacheItemFrame(staggeredItemEntry, rect);
        return staggeredItemEntry;
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        boolean zCheckLayoutParams = super.checkLayoutParams(layoutParams);
        if (!(layoutParams instanceof LayoutParams)) {
            return zCheckLayoutParams;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        return (layoutParams2.span >= 1 && layoutParams2.span <= getLaneCount()) & zCheckLayoutParams;
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager, com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public LayoutParams generateDefaultLayoutParams() {
        return isVertical() ? new LayoutParams(-1, -2) : new LayoutParams(-2, -1);
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        if (isVertical()) {
            layoutParams2.width = -1;
            layoutParams2.height = layoutParams.height;
        } else {
            layoutParams2.width = layoutParams.width;
            layoutParams2.height = -1;
        }
        if (layoutParams instanceof LayoutParams) {
            layoutParams2.span = Math.max(1, Math.min(((LayoutParams) layoutParams).span, getLaneCount()));
        }
        return layoutParams2;
    }

    @Override // com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public class LayoutParams extends RecyclerView.LayoutParams {
        private static final int DEFAULT_SPAN = 1;
        public int span;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.span = 1;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.adobe_csdk_twowayview_StaggeredGridViewChild);
            this.span = Math.max(1, typedArrayObtainStyledAttributes.getInt(R.styleable.adobe_csdk_twowayview_StaggeredGridViewChild_adobe_csdk_twowayview_span, -1));
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            init(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            init(marginLayoutParams);
        }

        private void init(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                this.span = ((LayoutParams) layoutParams).span;
            } else {
                this.span = 1;
            }
        }
    }
}
