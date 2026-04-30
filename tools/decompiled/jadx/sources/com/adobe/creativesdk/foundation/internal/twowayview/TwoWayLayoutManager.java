package com.adobe.creativesdk.foundation.internal.twowayview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.ActivityChooserView;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.assetux.R;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TwoWayLayoutManager extends RecyclerView.LayoutManager {
    private static final String LOGTAG = "TwoWayLayoutManager";
    private boolean mIsVertical;
    private int mLayoutEnd;
    private int mLayoutStart;
    private SavedState mPendingSavedState;
    private int mPendingScrollOffset;
    private int mPendingScrollPosition;
    private RecyclerView mRecyclerView;

    public enum Direction {
        START,
        END
    }

    public enum Orientation {
        HORIZONTAL,
        VERTICAL
    }

    protected abstract boolean canAddMoreViews(Direction direction, int i);

    protected abstract void layoutChild(View view, Direction direction);

    protected abstract void measureChild(View view, Direction direction);

    public TwoWayLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoWayLayoutManager(Context context, AttributeSet attributeSet, int i) {
        int i2;
        this.mIsVertical = true;
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollOffset = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.adobe_csdk_twowayview_TwoWayLayoutManager, i, 0);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            if (index == R.styleable.adobe_csdk_twowayview_TwoWayLayoutManager_android_orientation && (i2 = typedArrayObtainStyledAttributes.getInt(index, -1)) >= 0) {
                setOrientation(Orientation.values()[i2]);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public TwoWayLayoutManager(Orientation orientation) {
        this.mIsVertical = true;
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollOffset = 0;
        this.mIsVertical = orientation == Orientation.VERTICAL;
    }

    private int getTotalSpace() {
        return this.mIsVertical ? (getHeight() - getPaddingBottom()) - getPaddingTop() : (getWidth() - getPaddingRight()) - getPaddingLeft();
    }

    protected int getStartWithPadding() {
        return this.mIsVertical ? getPaddingTop() : getPaddingLeft();
    }

    protected int getEndWithPadding() {
        return this.mIsVertical ? getHeight() - getPaddingBottom() : getWidth() - getPaddingRight();
    }

    protected int getChildStart(View view) {
        return this.mIsVertical ? getDecoratedTop(view) : getDecoratedLeft(view);
    }

    protected int getChildEnd(View view) {
        return this.mIsVertical ? getDecoratedBottom(view) : getDecoratedRight(view);
    }

    protected RecyclerView.Adapter getAdapter() {
        if (this.mRecyclerView != null) {
            return this.mRecyclerView.getAdapter();
        }
        return null;
    }

    private void offsetChildren(int i) {
        if (this.mIsVertical) {
            offsetChildrenVertical(i);
        } else {
            offsetChildrenHorizontal(i);
        }
        this.mLayoutStart += i;
        this.mLayoutEnd += i;
    }

    private void recycleChildrenOutOfBounds(Direction direction, RecyclerView.Recycler recycler) {
        if (direction == Direction.END) {
            recycleChildrenFromStart(direction, recycler);
        } else {
            recycleChildrenFromEnd(direction, recycler);
        }
    }

    private void recycleChildrenFromStart(Direction direction, RecyclerView.Recycler recycler) {
        int childCount = getChildCount();
        int startWithPadding = getStartWithPadding();
        int i = 0;
        int i2 = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (getChildEnd(childAt) >= startWithPadding) {
                break;
            }
            detachChild(childAt, direction);
            i++;
            i2++;
        }
        while (true) {
            i2--;
            if (i2 >= 0) {
                View childAt2 = getChildAt(0);
                removeAndRecycleView(childAt2, recycler);
                updateLayoutEdgesFromRemovedChild(childAt2, direction);
            } else {
                return;
            }
        }
    }

    private void recycleChildrenFromEnd(Direction direction, RecyclerView.Recycler recycler) {
        int endWithPadding = getEndWithPadding();
        int i = 0;
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (getChildStart(childAt) <= endWithPadding) {
                break;
            }
            detachChild(childAt, direction);
            i2++;
            i = childCount;
        }
        while (true) {
            i2--;
            if (i2 >= 0) {
                View childAt2 = getChildAt(i);
                removeAndRecycleViewAt(i, recycler);
                updateLayoutEdgesFromRemovedChild(childAt2, direction);
            } else {
                return;
            }
        }
    }

    private int scrollBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int iMin;
        int childCount = getChildCount();
        if (childCount == 0 || i == 0) {
            return 0;
        }
        int startWithPadding = getStartWithPadding();
        int endWithPadding = getEndWithPadding();
        int firstVisiblePosition = getFirstVisiblePosition();
        int totalSpace = getTotalSpace();
        if (i < 0) {
            iMin = Math.max(-(totalSpace - 1), i);
        } else {
            iMin = Math.min(totalSpace - 1, i);
        }
        boolean z = firstVisiblePosition == 0 && this.mLayoutStart >= startWithPadding && iMin <= 0;
        if ((childCount + firstVisiblePosition == state.getItemCount() && this.mLayoutEnd <= endWithPadding && iMin >= 0) || z) {
            return 0;
        }
        offsetChildren(-iMin);
        Direction direction = iMin > 0 ? Direction.END : Direction.START;
        recycleChildrenOutOfBounds(direction, recycler);
        int iAbs = Math.abs(iMin);
        if (canAddMoreViews(Direction.START, startWithPadding - iAbs) || canAddMoreViews(Direction.END, iAbs + endWithPadding)) {
            fillGap(direction, recycler, state);
        }
        return iMin;
    }

    private void fillGap(Direction direction, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int childCount = getChildCount();
        int extraLayoutSpace = getExtraLayoutSpace(state);
        int firstVisiblePosition = getFirstVisiblePosition();
        if (direction == Direction.END) {
            fillAfter(firstVisiblePosition + childCount, recycler, state, extraLayoutSpace);
            correctTooHigh(childCount, recycler, state);
        } else {
            fillBefore(firstVisiblePosition - 1, recycler, extraLayoutSpace);
            correctTooLow(childCount, recycler, state);
        }
    }

    private void fillBefore(int i, RecyclerView.Recycler recycler) {
        fillBefore(i, recycler, 0);
    }

    private void fillBefore(int i, RecyclerView.Recycler recycler, int i2) {
        int startWithPadding = getStartWithPadding() - i2;
        while (canAddMoreViews(Direction.START, startWithPadding) && i >= 0) {
            makeAndAddView(i, Direction.START, recycler);
            i--;
        }
    }

    private void fillAfter(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        fillAfter(i, recycler, state, 0);
    }

    private void fillAfter(int i, RecyclerView.Recycler recycler, RecyclerView.State state, int i2) {
        int endWithPadding = getEndWithPadding() + i2;
        int itemCount = state.getItemCount();
        while (canAddMoreViews(Direction.END, endWithPadding) && i < itemCount) {
            makeAndAddView(i, Direction.END, recycler);
            i++;
        }
    }

    private void fillSpecific(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i2 = 0;
        if (state.getItemCount() != 0) {
            makeAndAddView(i, Direction.END, recycler);
            int extraLayoutSpace = getExtraLayoutSpace(state);
            if (state.getTargetScrollPosition() >= i) {
                extraLayoutSpace = 0;
                i2 = extraLayoutSpace;
            }
            fillBefore(i - 1, recycler, extraLayoutSpace);
            adjustViewsStartOrEnd();
            fillAfter(i + 1, recycler, state, i2);
            correctTooHigh(getChildCount(), recycler, state);
        }
    }

    private void correctTooHigh(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getLastVisiblePosition() == state.getItemCount() - 1 && i != 0) {
            int startWithPadding = getStartWithPadding();
            int endWithPadding = getEndWithPadding();
            int firstVisiblePosition = getFirstVisiblePosition();
            int iMin = endWithPadding - this.mLayoutEnd;
            if (iMin > 0) {
                if (firstVisiblePosition > 0 || this.mLayoutStart < startWithPadding) {
                    if (firstVisiblePosition == 0) {
                        iMin = Math.min(iMin, startWithPadding - this.mLayoutStart);
                    }
                    offsetChildren(iMin);
                    if (firstVisiblePosition > 0) {
                        fillBefore(firstVisiblePosition - 1, recycler);
                        adjustViewsStartOrEnd();
                    }
                }
            }
        }
    }

    private void correctTooLow(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getFirstVisiblePosition() == 0 && i != 0) {
            int startWithPadding = getStartWithPadding();
            int endWithPadding = getEndWithPadding();
            int itemCount = state.getItemCount();
            int lastVisiblePosition = getLastVisiblePosition();
            int iMin = this.mLayoutStart - startWithPadding;
            if (iMin > 0) {
                if (lastVisiblePosition < itemCount - 1 || this.mLayoutEnd > endWithPadding) {
                    if (lastVisiblePosition == itemCount - 1) {
                        iMin = Math.min(iMin, this.mLayoutEnd - endWithPadding);
                    }
                    offsetChildren(-iMin);
                    if (lastVisiblePosition < itemCount - 1) {
                        fillAfter(lastVisiblePosition + 1, recycler, state);
                        adjustViewsStartOrEnd();
                        return;
                    }
                    return;
                }
                if (lastVisiblePosition == itemCount - 1) {
                    adjustViewsStartOrEnd();
                }
            }
        }
    }

    private void adjustViewsStartOrEnd() {
        if (getChildCount() != 0) {
            int startWithPadding = this.mLayoutStart - getStartWithPadding();
            if (startWithPadding < 0) {
                startWithPadding = 0;
            }
            if (startWithPadding != 0) {
                offsetChildren(-startWithPadding);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.view.View findNextScrapView(java.util.List<android.support.v7.widget.RecyclerView.ViewHolder> r8, com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager.Direction r9, int r10) {
        /*
            r4 = 0
            int r6 = r8.size()
            r1 = 2147483647(0x7fffffff, float:NaN)
            r0 = 0
            r5 = r0
            r3 = r4
        Lb:
            if (r5 >= r6) goto L42
            java.lang.Object r0 = r8.get(r5)
            android.support.v7.widget.RecyclerView$ViewHolder r0 = (android.support.v7.widget.RecyclerView.ViewHolder) r0
            int r2 = r0.getPosition()
            int r7 = r2 - r10
            if (r7 >= 0) goto L1f
            com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager$Direction r2 = com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager.Direction.END
            if (r9 == r2) goto L3f
        L1f:
            if (r7 <= 0) goto L2d
            com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager$Direction r2 = com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager.Direction.START
            if (r9 != r2) goto L2d
            r0 = r1
            r1 = r3
        L27:
            int r2 = r5 + 1
            r5 = r2
            r3 = r1
            r1 = r0
            goto Lb
        L2d:
            int r2 = java.lang.Math.abs(r7)
            if (r2 >= r1) goto L3f
            if (r7 != 0) goto L3c
        L35:
            if (r0 == 0) goto L3a
            android.view.View r0 = r0.itemView
        L39:
            return r0
        L3a:
            r0 = r4
            goto L39
        L3c:
            r1 = r0
            r0 = r2
            goto L27
        L3f:
            r0 = r1
            r1 = r3
            goto L27
        L42:
            r0 = r3
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager.findNextScrapView(java.util.List, com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager$Direction, int):android.view.View");
    }

    private void fillFromScrapList(List<RecyclerView.ViewHolder> list, Direction direction) {
        int childCount;
        int firstVisiblePosition = getFirstVisiblePosition();
        if (direction == Direction.END) {
            childCount = firstVisiblePosition + getChildCount();
        } else {
            childCount = firstVisiblePosition - 1;
        }
        while (true) {
            View viewFindNextScrapView = findNextScrapView(list, direction, childCount);
            if (viewFindNextScrapView != null) {
                setupChild(viewFindNextScrapView, direction);
                childCount += direction == Direction.END ? 1 : -1;
            } else {
                return;
            }
        }
    }

    private void setupChild(View view, Direction direction) {
        ItemSelectionSupport itemSelectionSupportFrom = ItemSelectionSupport.from(this.mRecyclerView);
        if (itemSelectionSupportFrom != null) {
            itemSelectionSupportFrom.setViewChecked(view, itemSelectionSupportFrom.isItemChecked(getPosition(view)));
        }
        measureChild(view, direction);
        layoutChild(view, direction);
    }

    private View makeAndAddView(int i, Direction direction, RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(i);
        boolean zIsItemRemoved = ((RecyclerView.LayoutParams) viewForPosition.getLayoutParams()).isItemRemoved();
        if (!zIsItemRemoved) {
            addView(viewForPosition, direction == Direction.END ? -1 : 0);
        }
        setupChild(viewForPosition, direction);
        if (!zIsItemRemoved) {
            updateLayoutEdgesFromNewChild(viewForPosition);
        }
        return viewForPosition;
    }

    private void handleUpdate() {
        int firstVisiblePosition = getFirstVisiblePosition();
        View viewFindViewByPosition = findViewByPosition(firstVisiblePosition);
        if (viewFindViewByPosition != null) {
            setPendingScrollPositionWithOffset(firstVisiblePosition, getChildStart(viewFindViewByPosition));
        } else {
            setPendingScrollPositionWithOffset(-1, 0);
        }
    }

    private void updateLayoutEdgesFromNewChild(View view) {
        int childStart = getChildStart(view);
        if (childStart < this.mLayoutStart) {
            this.mLayoutStart = childStart;
        }
        int childEnd = getChildEnd(view);
        if (childEnd > this.mLayoutEnd) {
            this.mLayoutEnd = childEnd;
        }
    }

    private void updateLayoutEdgesFromRemovedChild(View view, Direction direction) {
        int i;
        int childCount = getChildCount();
        if (childCount == 0) {
            resetLayoutEdges();
            return;
        }
        int childStart = getChildStart(view);
        int childEnd = getChildEnd(view);
        if (childStart <= this.mLayoutStart || childEnd >= this.mLayoutEnd) {
            if (direction == Direction.END) {
                this.mLayoutStart = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                i = 0;
                childStart = childEnd;
            } else {
                this.mLayoutEnd = Integer.MIN_VALUE;
                i = childCount - 1;
            }
            while (i >= 0 && i <= childCount - 1) {
                View childAt = getChildAt(i);
                if (direction == Direction.END) {
                    int childStart2 = getChildStart(childAt);
                    if (childStart2 < this.mLayoutStart) {
                        this.mLayoutStart = childStart2;
                    }
                    if (childStart2 < childStart) {
                        i++;
                    } else {
                        return;
                    }
                } else {
                    int childEnd2 = getChildEnd(childAt);
                    if (childEnd2 > this.mLayoutEnd) {
                        this.mLayoutEnd = childEnd2;
                    }
                    if (childEnd2 > childStart) {
                        i--;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private void resetLayoutEdges() {
        this.mLayoutStart = getStartWithPadding();
        this.mLayoutEnd = this.mLayoutStart;
    }

    protected int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.hasTargetScrollPosition()) {
            return getTotalSpace();
        }
        return 0;
    }

    private Bundle getPendingItemSelectionState() {
        if (this.mPendingSavedState != null) {
            return this.mPendingSavedState.itemSelectionState;
        }
        return null;
    }

    protected void setPendingScrollPositionWithOffset(int i, int i2) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollOffset = i2;
    }

    protected int getPendingScrollPosition() {
        return this.mPendingSavedState != null ? this.mPendingSavedState.anchorItemPosition : this.mPendingScrollPosition;
    }

    protected int getPendingScrollOffset() {
        if (this.mPendingSavedState != null) {
            return 0;
        }
        return this.mPendingScrollOffset;
    }

    protected int getAnchorItemPosition(RecyclerView.State state) {
        int itemCount = state.getItemCount();
        int pendingScrollPosition = getPendingScrollPosition();
        if (pendingScrollPosition != -1 && (pendingScrollPosition < 0 || pendingScrollPosition >= itemCount)) {
            pendingScrollPosition = -1;
        }
        if (pendingScrollPosition == -1) {
            if (getChildCount() > 0) {
                return findFirstValidChildPosition(itemCount);
            }
            return 0;
        }
        return pendingScrollPosition;
    }

    private int findFirstValidChildPosition(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            int position = getPosition(getChildAt(i2));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getDecoratedMeasuredWidth(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.rightMargin + super.getDecoratedMeasuredWidth(view) + marginLayoutParams.leftMargin;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getDecoratedMeasuredHeight(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.bottomMargin + super.getDecoratedMeasuredHeight(view) + marginLayoutParams.topMargin;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getDecoratedLeft(View view) {
        return super.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).leftMargin;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getDecoratedTop(View view) {
        return super.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getDecoratedRight(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.rightMargin + super.getDecoratedRight(view);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getDecoratedBottom(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.bottomMargin + super.getDecoratedBottom(view);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void layoutDecorated(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        super.layoutDecorated(view, i + marginLayoutParams.leftMargin, i2 + marginLayoutParams.topMargin, i3 - marginLayoutParams.rightMargin, i4 - marginLayoutParams.bottomMargin);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.mRecyclerView = recyclerView;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        this.mRecyclerView = null;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        super.onAdapterChanged(adapter, adapter2);
        ItemSelectionSupport itemSelectionSupportFrom = ItemSelectionSupport.from(this.mRecyclerView);
        if (adapter != null && itemSelectionSupportFrom != null) {
            itemSelectionSupportFrom.clearChoices();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        ItemSelectionSupport itemSelectionSupportFrom = ItemSelectionSupport.from(this.mRecyclerView);
        if (itemSelectionSupportFrom != null) {
            Bundle pendingItemSelectionState = getPendingItemSelectionState();
            if (pendingItemSelectionState != null) {
                itemSelectionSupportFrom.onRestoreInstanceState(pendingItemSelectionState);
            }
            if (state.didStructureChange()) {
                itemSelectionSupportFrom.onAdapterDataChanged();
            }
        }
        int anchorItemPosition = getAnchorItemPosition(state);
        detachAndScrapAttachedViews(recycler);
        fillSpecific(anchorItemPosition, recycler, state);
        onLayoutScrapList(recycler, state);
        setPendingScrollPositionWithOffset(-1, 0);
        this.mPendingSavedState = null;
    }

    protected void onLayoutScrapList(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() != 0 && !state.isPreLayout() && supportsPredictiveItemAnimations()) {
            List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
            fillFromScrapList(scrapList, Direction.START);
            fillFromScrapList(scrapList, Direction.END);
        }
    }

    protected void detachChild(View view, Direction direction) {
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        handleUpdate();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        handleUpdate();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        handleUpdate();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        handleUpdate();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        handleUpdate();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mIsVertical ? new RecyclerView.LayoutParams(-1, -2) : new RecyclerView.LayoutParams(-2, -1);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mIsVertical) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mIsVertical) {
            return scrollBy(i, recycler, state);
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return !this.mIsVertical;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mIsVertical;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        scrollToPositionWithOffset(i, 0);
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        setPendingScrollPositionWithOffset(i, i2);
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager.1
            @Override // android.support.v7.widget.LinearSmoothScroller
            public PointF computeScrollVectorForPosition(int i2) {
                if (getChildCount() == 0) {
                    return null;
                }
                int i3 = i2 < TwoWayLayoutManager.this.getFirstVisiblePosition() ? -1 : 1;
                if (TwoWayLayoutManager.this.mIsVertical) {
                    return new PointF(0.0f, i3);
                }
                return new PointF(i3, 0.0f);
            }

            @Override // android.support.v7.widget.LinearSmoothScroller
            protected int getVerticalSnapPreference() {
                return -1;
            }

            @Override // android.support.v7.widget.LinearSmoothScroller
            protected int getHorizontalSnapPreference() {
                return -1;
            }
        };
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return getFirstVisiblePosition();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return getFirstVisiblePosition();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return getChildCount();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return getChildCount();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return state.getItemCount();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return state.getItemCount();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        super.onMeasure(recycler, state, i, i2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(SavedState.EMPTY_STATE);
        int pendingScrollPosition = getPendingScrollPosition();
        if (pendingScrollPosition == -1) {
            pendingScrollPosition = getFirstVisiblePosition();
        }
        savedState.anchorItemPosition = pendingScrollPosition;
        ItemSelectionSupport itemSelectionSupportFrom = ItemSelectionSupport.from(this.mRecyclerView);
        if (itemSelectionSupportFrom != null) {
            savedState.itemSelectionState = itemSelectionSupportFrom.onSaveInstanceState();
        } else {
            savedState.itemSelectionState = Bundle.EMPTY;
        }
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        this.mPendingSavedState = (SavedState) parcelable;
        requestLayout();
    }

    public Orientation getOrientation() {
        return this.mIsVertical ? Orientation.VERTICAL : Orientation.HORIZONTAL;
    }

    public void setOrientation(Orientation orientation) {
        boolean z = orientation == Orientation.VERTICAL;
        if (this.mIsVertical != z) {
            this.mIsVertical = z;
            requestLayout();
        }
    }

    public int getFirstVisiblePosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    public int getLastVisiblePosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public class SavedState implements Parcelable {
        private int anchorItemPosition;
        private Bundle itemSelectionState;
        private final Parcelable superState;
        protected static final SavedState EMPTY_STATE = new SavedState();
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        private SavedState() {
            this.superState = null;
        }

        protected SavedState(Parcelable parcelable) {
            if (parcelable == null) {
                throw new IllegalArgumentException("superState must not be null");
            }
            this.superState = parcelable == EMPTY_STATE ? null : parcelable;
        }

        protected SavedState(Parcel parcel) {
            this.superState = EMPTY_STATE;
            this.anchorItemPosition = parcel.readInt();
            this.itemSelectionState = (Bundle) parcel.readParcelable(getClass().getClassLoader());
        }

        public Parcelable getSuperState() {
            return this.superState;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.anchorItemPosition);
            parcel.writeParcelable(this.itemSelectionState, i);
        }
    }
}
