package com.adobe.creativesdk.foundation.internal.grid;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.ActivityChooserView;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.grid.ExtendableListView;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridView extends ExtendableListView {
    private static final boolean DBG = false;
    private static final int DEFAULT_COLUMNS_LANDSCAPE = 3;
    private static final int DEFAULT_COLUMNS_PORTRAIT = 2;
    private static final String TAG = "StaggeredGridView";
    private int[] mColumnBottoms;
    private int mColumnCount;
    private int mColumnCountLandscape;
    private int mColumnCountPortrait;
    private int[] mColumnLefts;
    private int[] mColumnTops;
    private int mColumnWidth;
    private int mDistanceToTop;
    private int mGridPaddingBottom;
    private int mGridPaddingLeft;
    private int mGridPaddingRight;
    private int mGridPaddingTop;
    private int mItemMargin;
    private boolean mNeedSync;
    private SparseArray<GridItemRecord> mPositionData;

    class GridItemRecord implements Parcelable {
        public static final Parcelable.Creator<GridItemRecord> CREATOR = new Parcelable.Creator<GridItemRecord>() { // from class: com.adobe.creativesdk.foundation.internal.grid.StaggeredGridView.GridItemRecord.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GridItemRecord createFromParcel(Parcel parcel) {
                return new GridItemRecord(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GridItemRecord[] newArray(int i) {
                return new GridItemRecord[i];
            }
        };
        int column;
        double heightRatio;
        boolean isHeaderFooter;

        GridItemRecord() {
        }

        private GridItemRecord(Parcel parcel) {
            this.column = parcel.readInt();
            this.heightRatio = parcel.readDouble();
            this.isHeaderFooter = parcel.readByte() == 1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.column);
            parcel.writeDouble(this.heightRatio);
            parcel.writeByte((byte) (this.isHeaderFooter ? 1 : 0));
        }

        public String toString() {
            return "GridItemRecord.ListSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " column:" + this.column + " heightRatio:" + this.heightRatio + " isHeaderFooter:" + this.isHeaderFooter + "}";
        }
    }

    public StaggeredGridView(Context context) {
        this(context, null);
    }

    public StaggeredGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StaggeredGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mColumnCountPortrait = 2;
        this.mColumnCountLandscape = 3;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.adobe_csdk_StaggeredGridView, i, 0);
            this.mColumnCount = typedArrayObtainStyledAttributes.getInteger(R.styleable.adobe_csdk_StaggeredGridView_adobe_csdk_column_count, 0);
            if (this.mColumnCount > 0) {
                this.mColumnCountPortrait = this.mColumnCount;
                this.mColumnCountLandscape = this.mColumnCount;
            } else {
                this.mColumnCountPortrait = typedArrayObtainStyledAttributes.getInteger(R.styleable.adobe_csdk_StaggeredGridView_adobe_csdk_column_count_portrait, 2);
                this.mColumnCountLandscape = typedArrayObtainStyledAttributes.getInteger(R.styleable.adobe_csdk_StaggeredGridView_adobe_csdk_column_count_landscape, 3);
            }
            this.mItemMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.adobe_csdk_StaggeredGridView_adobe_csdk_item_margin, 0);
            this.mGridPaddingLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.adobe_csdk_StaggeredGridView_adobe_csdk_grid_paddingLeft, 0);
            this.mGridPaddingRight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.adobe_csdk_StaggeredGridView_adobe_csdk_grid_paddingRight, 0);
            this.mGridPaddingTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.adobe_csdk_StaggeredGridView_adobe_csdk_grid_paddingTop, 0);
            this.mGridPaddingBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.adobe_csdk_StaggeredGridView_adobe_csdk_grid_paddingBottom, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
        this.mColumnCount = 0;
        this.mColumnTops = new int[0];
        this.mColumnBottoms = new int[0];
        this.mColumnLefts = new int[0];
        this.mPositionData = new SparseArray<>();
    }

    public int getRowPaddingLeft() {
        return getListPaddingLeft() + this.mGridPaddingLeft;
    }

    public int getRowPaddingRight() {
        return getListPaddingRight() + this.mGridPaddingRight;
    }

    public int getRowPaddingTop() {
        return getListPaddingTop() + this.mGridPaddingTop;
    }

    public int getRowPaddingBottom() {
        return getListPaddingBottom() + this.mGridPaddingBottom;
    }

    public void setGridPadding(int i, int i2, int i3, int i4) {
        this.mGridPaddingLeft = i;
        this.mGridPaddingTop = i2;
        this.mGridPaddingRight = i3;
        this.mGridPaddingBottom = i4;
    }

    public void setColumnCountPortrait(int i) {
        this.mColumnCountPortrait = i;
        onSizeChanged(getWidth(), getHeight());
        requestLayoutChildren();
    }

    public void setColumnCountLandscape(int i) {
        this.mColumnCountLandscape = i;
        onSizeChanged(getWidth(), getHeight());
        requestLayoutChildren();
    }

    public void setColumnCount(int i) {
        this.mColumnCountPortrait = i;
        this.mColumnCountLandscape = i;
        onSizeChanged(getWidth(), getHeight());
        requestLayoutChildren();
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mColumnCount <= 0) {
            this.mColumnCount = getMeasuredWidth() > getMeasuredHeight() ? this.mColumnCountLandscape : this.mColumnCountPortrait;
        }
        this.mColumnWidth = calculateColumnWidth(getMeasuredWidth());
        if (this.mColumnTops == null || this.mColumnTops.length != this.mColumnCount) {
            this.mColumnTops = new int[this.mColumnCount];
            initColumnTops();
        }
        if (this.mColumnBottoms == null || this.mColumnBottoms.length != this.mColumnCount) {
            this.mColumnBottoms = new int[this.mColumnCount];
            initColumnBottoms();
        }
        if (this.mColumnLefts == null || this.mColumnLefts.length != this.mColumnCount) {
            this.mColumnLefts = new int[this.mColumnCount];
            initColumnLefts();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected void onMeasureChild(View view, ExtendableListView.LayoutParams layoutParams) {
        int iMakeMeasureSpec;
        int i = layoutParams.viewType;
        int i2 = layoutParams.position;
        if (i == -2 || i == -1) {
            super.onMeasureChild(view, layoutParams);
        } else {
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.mColumnWidth, 1073741824);
            if (layoutParams.height > 0) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(-2, 0);
            }
            view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        }
        setPositionHeightRatio(i2, getChildHeight(view));
    }

    public int getColumnWidth() {
        return this.mColumnWidth;
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    public void resetToTop() {
        if (this.mColumnCount > 0) {
            if (this.mColumnTops == null) {
                this.mColumnTops = new int[this.mColumnCount];
            }
            if (this.mColumnBottoms == null) {
                this.mColumnBottoms = new int[this.mColumnCount];
            }
            initColumnTopsAndBottoms();
            this.mPositionData.clear();
            this.mNeedSync = false;
            this.mDistanceToTop = 0;
            setSelection(0);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected void onChildCreated(int i, boolean z) {
        super.onChildCreated(i, z);
        if (!isHeaderOrFooter(i)) {
            setPositionColumn(i, getChildColumn(i, z));
        } else {
            setPositionIsHeaderFooter(i);
        }
    }

    private void requestLayoutChildren() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                childAt.requestLayout();
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView, android.widget.AbsListView
    protected void layoutChildren() {
        preLayoutChildren();
        super.layoutChildren();
    }

    private void preLayoutChildren() {
        if (!this.mNeedSync) {
            Arrays.fill(this.mColumnBottoms, 0);
        } else {
            this.mNeedSync = false;
        }
        System.arraycopy(this.mColumnTops, 0, this.mColumnBottoms, 0, this.mColumnCount);
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected void onLayoutChild(View view, int i, boolean z, int i2, int i3, int i4, int i5) {
        if (isHeaderOrFooter(i)) {
            layoutGridHeaderFooter(view, i, z, i2, i3, i4, i5);
        } else {
            layoutGridChild(view, i, z, i2, i4);
        }
    }

    private void layoutGridHeaderFooter(View view, int i, boolean z, int i2, int i3, int i4, int i5) {
        int highestPositionedTop;
        int childHeight;
        if (z) {
            childHeight = getLowestPositionedBottom();
            highestPositionedTop = childHeight + getChildHeight(view);
        } else {
            highestPositionedTop = getHighestPositionedTop();
            childHeight = highestPositionedTop - getChildHeight(view);
        }
        for (int i6 = 0; i6 < this.mColumnCount; i6++) {
            updateColumnTopIfNeeded(i6, childHeight);
            updateColumnBottomIfNeeded(i6, highestPositionedTop);
        }
        super.onLayoutChild(view, i, z, i2, childHeight, i4, highestPositionedTop);
    }

    private int getSafeBottom(int i) {
        int i2 = this.mColumnBottoms[i];
        return Integer.MIN_VALUE != i2 ? i2 : getLowestPositionedBottom();
    }

    private int getSafeTop(int i) {
        int i2 = this.mColumnTops[i];
        return Integer.MAX_VALUE != i2 ? i2 : getHighestPositionedTop();
    }

    private void layoutGridChild(View view, int i, boolean z, int i2, int i3) {
        int childHeight;
        int i4;
        int positionColumn = getPositionColumn(i);
        int childTopMargin = getChildTopMargin(i);
        int childBottomMargin = getChildBottomMargin();
        int i5 = childTopMargin + childBottomMargin;
        if (z) {
            int safeBottom = getSafeBottom(positionColumn);
            int childHeight2 = getChildHeight(view) + i5 + safeBottom;
            childHeight = safeBottom;
            i4 = childHeight2;
        } else {
            int safeTop = getSafeTop(positionColumn);
            childHeight = safeTop - (getChildHeight(view) + i5);
            i4 = safeTop;
        }
        ((GridLayoutParams) view.getLayoutParams()).column = positionColumn;
        updateColumnBottomIfNeeded(positionColumn, i4);
        updateColumnTopIfNeeded(positionColumn, childHeight);
        view.layout(i2, childHeight + childTopMargin, i3, i4 - childBottomMargin);
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected void onOffsetChild(View view, int i, boolean z, int i2, int i3) {
        if (isHeaderOrFooter(i)) {
            offsetGridHeaderFooter(view, i, z, i2, i3);
        } else {
            offsetGridChild(view, i, z, i2, i3);
        }
    }

    private void offsetGridHeaderFooter(View view, int i, boolean z, int i2, int i3) {
        int highestPositionedTop;
        int childHeight;
        if (z) {
            childHeight = getLowestPositionedBottom();
            highestPositionedTop = getChildHeight(view) + childHeight;
        } else {
            highestPositionedTop = getHighestPositionedTop();
            childHeight = highestPositionedTop - getChildHeight(view);
        }
        for (int i4 = 0; i4 < this.mColumnCount; i4++) {
            updateColumnTopIfNeeded(i4, childHeight);
            updateColumnBottomIfNeeded(i4, highestPositionedTop);
        }
        super.onOffsetChild(view, i, z, i2, childHeight);
    }

    private void offsetGridChild(View view, int i, boolean z, int i2, int i3) {
        int childHeight;
        int i4;
        int positionColumn = getPositionColumn(i);
        int childTopMargin = getChildTopMargin(i);
        int childBottomMargin = childTopMargin + getChildBottomMargin();
        if (z) {
            int safeBottom = getSafeBottom(positionColumn);
            int childHeight2 = getChildHeight(view) + childBottomMargin + safeBottom;
            childHeight = safeBottom;
            i4 = childHeight2;
        } else {
            int safeTop = getSafeTop(positionColumn);
            childHeight = safeTop - (getChildHeight(view) + childBottomMargin);
            i4 = safeTop;
        }
        ((GridLayoutParams) view.getLayoutParams()).column = positionColumn;
        updateColumnBottomIfNeeded(positionColumn, i4);
        updateColumnTopIfNeeded(positionColumn, childHeight);
        super.onOffsetChild(view, i, z, i2, childHeight + childTopMargin);
    }

    private int getChildHeight(View view) {
        return view.getMeasuredHeight();
    }

    private int getChildTopMargin(int i) {
        if (i < getHeaderViewsCount() + this.mColumnCount) {
            return this.mItemMargin;
        }
        return 0;
    }

    private int getChildBottomMargin() {
        return this.mItemMargin;
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected ExtendableListView.LayoutParams generateChildLayoutParams(View view) {
        GridLayoutParams gridLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            gridLayoutParams = null;
        } else if (layoutParams instanceof GridLayoutParams) {
            gridLayoutParams = (GridLayoutParams) layoutParams;
        } else {
            gridLayoutParams = new GridLayoutParams(layoutParams);
        }
        if (gridLayoutParams == null) {
            return new GridLayoutParams(this.mColumnWidth, -2);
        }
        return gridLayoutParams;
    }

    private void updateColumnTopIfNeeded(int i, int i2) {
        if (i2 < this.mColumnTops[i]) {
            this.mColumnTops[i] = i2;
        }
    }

    private void updateColumnBottomIfNeeded(int i, int i2) {
        if (i2 > this.mColumnBottoms[i]) {
            this.mColumnBottoms[i] = i2;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected int getChildLeft(int i) {
        if (isHeaderOrFooter(i)) {
            return super.getChildLeft(i);
        }
        return this.mColumnLefts[getPositionColumn(i)];
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected int getChildTop(int i) {
        if (isHeaderOrFooter(i)) {
            return super.getChildTop(i);
        }
        int positionColumn = getPositionColumn(i);
        if (positionColumn == -1) {
            return getHighestPositionedBottom();
        }
        return this.mColumnBottoms[positionColumn];
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected int getNextChildDownsTop(int i) {
        return isHeaderOrFooter(i) ? super.getNextChildDownsTop(i) : getHighestPositionedBottom();
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected int getChildBottom(int i) {
        if (isHeaderOrFooter(i)) {
            return super.getChildBottom(i);
        }
        int positionColumn = getPositionColumn(i);
        if (positionColumn == -1) {
            return getLowestPositionedTop();
        }
        return this.mColumnTops[positionColumn];
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected int getNextChildUpsBottom(int i) {
        return isHeaderOrFooter(i) ? super.getNextChildUpsBottom(i) : getLowestPositionedTop();
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected int getLastChildBottom() {
        return isHeaderOrFooter(this.mFirstPosition + (getChildCount() + (-1))) ? super.getLastChildBottom() : getHighestPositionedBottom();
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected int getFirstChildTop() {
        return isHeaderOrFooter(this.mFirstPosition) ? super.getFirstChildTop() : getLowestPositionedTop();
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected int getHighestChildTop() {
        return isHeaderOrFooter(this.mFirstPosition) ? super.getHighestChildTop() : getHighestPositionedTop();
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected int getLowestChildBottom() {
        return isHeaderOrFooter(this.mFirstPosition + (getChildCount() + (-1))) ? super.getLowestChildBottom() : getLowestPositionedBottom();
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected void offsetChildrenTopAndBottom(int i) {
        super.offsetChildrenTopAndBottom(i);
        offsetAllColumnsTopAndBottom(i);
        offsetDistanceToTop(i);
    }

    protected void offsetChildrenTopAndBottom(int i, int i2) {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt != null && childAt.getLayoutParams() != null && (childAt.getLayoutParams() instanceof GridLayoutParams) && ((GridLayoutParams) childAt.getLayoutParams()).column == i2) {
                childAt.offsetTopAndBottom(i);
            }
        }
        offsetColumnTopAndBottom(i, i2);
    }

    private void offsetDistanceToTop(int i) {
        this.mDistanceToTop += i;
    }

    public int getDistanceToTop() {
        return this.mDistanceToTop;
    }

    private void offsetAllColumnsTopAndBottom(int i) {
        if (i != 0) {
            for (int i2 = 0; i2 < this.mColumnCount; i2++) {
                offsetColumnTopAndBottom(i, i2);
            }
        }
    }

    private void offsetColumnTopAndBottom(int i, int i2) {
        if (i != 0) {
            if (this.mColumnTops[i2] != Integer.MAX_VALUE) {
                int[] iArr = this.mColumnTops;
                iArr[i2] = iArr[i2] + i;
            }
            if (this.mColumnBottoms[i2] != Integer.MIN_VALUE) {
                int[] iArr2 = this.mColumnBottoms;
                iArr2[i2] = iArr2[i2] + i;
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected void adjustViewsAfterFillGap(boolean z) {
        super.adjustViewsAfterFillGap(z);
        if (!z) {
            alignTops();
        }
    }

    private void alignTops() {
        if (this.mFirstPosition == getHeaderViewsCount()) {
            int[] highestNonHeaderTops = getHighestNonHeaderTops();
            boolean z = true;
            int i = -1;
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < highestNonHeaderTops.length; i3++) {
                if (z && i3 > 0 && highestNonHeaderTops[i3] != i2) {
                    z = false;
                }
                if (highestNonHeaderTops[i3] < i2) {
                    i2 = highestNonHeaderTops[i3];
                    i = i3;
                }
            }
            if (!z) {
                for (int i4 = 0; i4 < highestNonHeaderTops.length; i4++) {
                    if (i4 != i) {
                        offsetChildrenTopAndBottom(i2 - highestNonHeaderTops[i4], i4);
                    }
                }
                invalidate();
            }
        }
    }

    private int[] getHighestNonHeaderTops() {
        int[] iArr = new int[this.mColumnCount];
        int childCount = getChildCount();
        if (childCount > 0) {
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt != null && childAt.getLayoutParams() != null && (childAt.getLayoutParams() instanceof GridLayoutParams)) {
                    GridLayoutParams gridLayoutParams = (GridLayoutParams) childAt.getLayoutParams();
                    if (gridLayoutParams.viewType != -2 && childAt.getTop() < iArr[gridLayoutParams.column]) {
                        iArr[gridLayoutParams.column] = childAt.getTop();
                    }
                }
            }
        }
        return iArr;
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected void onChildrenDetached(int i, int i2) {
        super.onChildrenDetached(i, i2);
        Arrays.fill(this.mColumnTops, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        Arrays.fill(this.mColumnBottoms, Integer.MIN_VALUE);
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if (childAt != null) {
                ExtendableListView.LayoutParams layoutParams = (ExtendableListView.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.viewType != -2 && (layoutParams instanceof GridLayoutParams)) {
                    GridLayoutParams gridLayoutParams = (GridLayoutParams) layoutParams;
                    int i4 = gridLayoutParams.column;
                    int i5 = gridLayoutParams.position;
                    int top = childAt.getTop();
                    if (top < this.mColumnTops[i4]) {
                        this.mColumnTops[i4] = top - getChildTopMargin(i5);
                    }
                    int bottom = childAt.getBottom();
                    if (bottom > this.mColumnBottoms[i4]) {
                        this.mColumnBottoms[i4] = bottom + getChildBottomMargin();
                    }
                } else {
                    int top2 = childAt.getTop();
                    int bottom2 = childAt.getBottom();
                    for (int i6 = 0; i6 < this.mColumnCount; i6++) {
                        if (top2 < this.mColumnTops[i6]) {
                            this.mColumnTops[i6] = top2;
                        }
                        if (bottom2 > this.mColumnBottoms[i6]) {
                            this.mColumnBottoms[i6] = bottom2;
                        }
                    }
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected boolean hasSpaceUp() {
        return getLowestPositionedTop() > (this.mClipToPadding ? getRowPaddingTop() : 0);
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView, android.widget.AbsListView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        onSizeChanged(i, i2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView
    protected void onSizeChanged(int i, int i2) {
        super.onSizeChanged(i, i2);
        int i3 = i > i2 ? this.mColumnCountLandscape : this.mColumnCountPortrait;
        if (this.mColumnCount != i3) {
            this.mColumnCount = i3;
            this.mColumnWidth = calculateColumnWidth(i);
            this.mColumnTops = new int[this.mColumnCount];
            this.mColumnBottoms = new int[this.mColumnCount];
            this.mColumnLefts = new int[this.mColumnCount];
            this.mDistanceToTop = 0;
            initColumnTopsAndBottoms();
            initColumnLefts();
            if (getCount() > 0 && this.mPositionData.size() > 0) {
                onColumnSync();
            }
            requestLayout();
        }
    }

    private int calculateColumnWidth(int i) {
        return ((i - (getRowPaddingLeft() + getRowPaddingRight())) - (this.mItemMargin * (this.mColumnCount + 1))) / this.mColumnCount;
    }

    private int calculateColumnLeft(int i) {
        return getRowPaddingLeft() + this.mItemMargin + ((this.mItemMargin + this.mColumnWidth) * i);
    }

    private void onColumnSync() {
        int iMin = Math.min(this.mSyncPosition, getCount() - 1);
        SparseArray sparseArray = new SparseArray(iMin);
        for (int i = 0; i < iMin; i++) {
            GridItemRecord gridItemRecord = this.mPositionData.get(i);
            if (gridItemRecord == null) {
                break;
            }
            Log.d(TAG, "onColumnSync:" + i + " ratio:" + gridItemRecord.heightRatio);
            sparseArray.append(i, Double.valueOf(gridItemRecord.heightRatio));
        }
        this.mPositionData.clear();
        for (int i2 = 0; i2 < iMin; i2++) {
            GridItemRecord orCreateRecord = getOrCreateRecord(i2);
            double dDoubleValue = ((Double) sparseArray.get(i2)).doubleValue();
            int i3 = (int) (((double) this.mColumnWidth) * dDoubleValue);
            orCreateRecord.heightRatio = dDoubleValue;
            if (isHeaderOrFooter(i2)) {
                int lowestPositionedBottom = getLowestPositionedBottom();
                int i4 = lowestPositionedBottom + i3;
                for (int i5 = 0; i5 < this.mColumnCount; i5++) {
                    this.mColumnTops[i5] = lowestPositionedBottom;
                    this.mColumnBottoms[i5] = i4;
                }
            } else {
                int highestPositionedBottomColumn = getHighestPositionedBottomColumn();
                int i6 = this.mColumnBottoms[highestPositionedBottomColumn];
                int childTopMargin = i3 + i6 + getChildTopMargin(i2) + getChildBottomMargin();
                this.mColumnTops[highestPositionedBottomColumn] = i6;
                this.mColumnBottoms[highestPositionedBottomColumn] = childTopMargin;
                orCreateRecord.column = highestPositionedBottomColumn;
            }
        }
        int highestPositionedBottomColumn2 = getHighestPositionedBottomColumn();
        setPositionColumn(iMin, highestPositionedBottomColumn2);
        int i7 = this.mColumnBottoms[highestPositionedBottomColumn2];
        offsetAllColumnsTopAndBottom((-i7) + this.mSpecificTop);
        this.mDistanceToTop = -i7;
        System.arraycopy(this.mColumnBottoms, 0, this.mColumnTops, 0, this.mColumnCount);
    }

    private void setPositionColumn(int i, int i2) {
        getOrCreateRecord(i).column = i2;
    }

    private void setPositionHeightRatio(int i, int i2) {
        getOrCreateRecord(i).heightRatio = ((double) i2) / ((double) this.mColumnWidth);
    }

    private void setPositionIsHeaderFooter(int i) {
        getOrCreateRecord(i).isHeaderFooter = true;
    }

    private GridItemRecord getOrCreateRecord(int i) {
        GridItemRecord gridItemRecord = this.mPositionData.get(i, null);
        if (gridItemRecord == null) {
            GridItemRecord gridItemRecord2 = new GridItemRecord();
            this.mPositionData.append(i, gridItemRecord2);
            return gridItemRecord2;
        }
        return gridItemRecord;
    }

    private int getPositionColumn(int i) {
        GridItemRecord gridItemRecord = this.mPositionData.get(i, null);
        if (gridItemRecord != null) {
            return gridItemRecord.column;
        }
        return -1;
    }

    private boolean isHeaderOrFooter(int i) {
        return this.mAdapter.getItemViewType(i) == -2;
    }

    private int getChildColumn(int i, boolean z) {
        int positionColumn = getPositionColumn(i);
        int i2 = this.mColumnCount;
        if (positionColumn < 0 || positionColumn >= i2) {
            if (z) {
                return getHighestPositionedBottomColumn();
            }
            return getLowestPositionedTopColumn();
        }
        return positionColumn;
    }

    private void initColumnTopsAndBottoms() {
        initColumnTops();
        initColumnBottoms();
    }

    private void initColumnTops() {
        Arrays.fill(this.mColumnTops, getPaddingTop() + this.mGridPaddingTop);
    }

    private void initColumnBottoms() {
        Arrays.fill(this.mColumnBottoms, getPaddingTop() + this.mGridPaddingTop);
    }

    private void initColumnLefts() {
        for (int i = 0; i < this.mColumnCount; i++) {
            this.mColumnLefts[i] = calculateColumnLeft(i);
        }
    }

    private int getHighestPositionedBottom() {
        return this.mColumnBottoms[getHighestPositionedBottomColumn()];
    }

    private int getMinColumnCount() {
        return Math.min(getCount(), this.mColumnCount);
    }

    private int getHighestPositionedBottomColumn() {
        int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i2 = 0;
        for (int i3 = 0; i3 < getMinColumnCount(); i3++) {
            int i4 = this.mColumnBottoms[i3];
            if (Integer.MIN_VALUE != i4 && i4 < i) {
                i = i4;
                i2 = i3;
            }
        }
        return i2;
    }

    private int getLowestPositionedBottom() {
        return this.mColumnBottoms[getLowestPositionedBottomColumn()];
    }

    private int getLowestPositionedBottomColumn() {
        int i = Integer.MIN_VALUE;
        int i2 = 0;
        for (int i3 = 0; i3 < getMinColumnCount(); i3++) {
            int i4 = this.mColumnBottoms[i3];
            if (Integer.MIN_VALUE != i4 && i4 > i) {
                i = i4;
                i2 = i3;
            }
        }
        return i2;
    }

    private int getLowestPositionedTop() {
        return this.mColumnTops[getLowestPositionedTopColumn()];
    }

    private int getLowestPositionedTopColumn() {
        int i = Integer.MIN_VALUE;
        int i2 = 0;
        for (int i3 = 0; i3 < getMinColumnCount(); i3++) {
            int i4 = this.mColumnTops[i3];
            if (Integer.MAX_VALUE != i4 && i4 > i) {
                i = i4;
                i2 = i3;
            }
        }
        return i2;
    }

    private int getHighestPositionedTop() {
        return this.mColumnTops[getHighestPositionedTopColumn()];
    }

    private int getHighestPositionedTopColumn() {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (int i3 = 0; i3 < getMinColumnCount(); i3++) {
            int i4 = this.mColumnTops[i3];
            if (Integer.MAX_VALUE != i4 && i4 < i) {
                i = i4;
                i2 = i3;
            }
        }
        return i2;
    }

    public class GridLayoutParams extends ExtendableListView.LayoutParams {
        int column;

        public GridLayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            enforceStaggeredLayout();
        }

        public GridLayoutParams(int i, int i2) {
            super(i, i2);
            enforceStaggeredLayout();
        }

        public GridLayoutParams(int i, int i2, int i3) {
            super(i, i2);
            enforceStaggeredLayout();
        }

        public GridLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            enforceStaggeredLayout();
        }

        private void enforceStaggeredLayout() {
            if (this.width != -1) {
                this.width = -1;
            }
            if (this.height == -1) {
                this.height = -2;
            }
        }
    }

    public class GridListSavedState extends ExtendableListView.ListSavedState {
        public static final Parcelable.Creator<GridListSavedState> CREATOR = new Parcelable.Creator<GridListSavedState>() { // from class: com.adobe.creativesdk.foundation.internal.grid.StaggeredGridView.GridListSavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GridListSavedState createFromParcel(Parcel parcel) {
                return new GridListSavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GridListSavedState[] newArray(int i) {
                return new GridListSavedState[i];
            }
        };
        int columnCount;
        int[] columnTops;
        SparseArray positionData;

        public GridListSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public GridListSavedState(Parcel parcel) {
            super(parcel);
            this.columnCount = parcel.readInt();
            this.columnTops = new int[this.columnCount >= 0 ? this.columnCount : 0];
            parcel.readIntArray(this.columnTops);
            this.positionData = parcel.readSparseArray(GridItemRecord.class.getClassLoader());
        }

        @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView.ListSavedState, com.adobe.creativesdk.foundation.internal.grid.ClassLoaderSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.columnCount);
            parcel.writeIntArray(this.columnTops);
            parcel.writeSparseArray(this.positionData);
        }

        @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView.ListSavedState
        public String toString() {
            return "StaggeredGridView.GridListSavedState{" + Integer.toHexString(System.identityHashCode(this)) + "}";
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView, android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        ExtendableListView.ListSavedState listSavedState = (ExtendableListView.ListSavedState) super.onSaveInstanceState();
        GridListSavedState gridListSavedState = new GridListSavedState(listSavedState.getSuperState());
        gridListSavedState.selectedId = listSavedState.selectedId;
        gridListSavedState.firstId = listSavedState.firstId;
        gridListSavedState.viewTop = listSavedState.viewTop;
        gridListSavedState.position = listSavedState.position;
        gridListSavedState.height = listSavedState.height;
        if ((getChildCount() > 0 && getCount() > 0) && this.mFirstPosition > 0) {
            gridListSavedState.columnCount = this.mColumnCount;
            gridListSavedState.columnTops = this.mColumnTops;
            gridListSavedState.positionData = this.mPositionData;
        } else {
            gridListSavedState.columnCount = this.mColumnCount >= 0 ? this.mColumnCount : 0;
            gridListSavedState.columnTops = new int[gridListSavedState.columnCount];
            gridListSavedState.positionData = new SparseArray();
        }
        return gridListSavedState;
    }

    @Override // com.adobe.creativesdk.foundation.internal.grid.ExtendableListView, android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        GridListSavedState gridListSavedState = (GridListSavedState) parcelable;
        this.mColumnCount = gridListSavedState.columnCount;
        this.mColumnTops = gridListSavedState.columnTops;
        this.mColumnBottoms = new int[this.mColumnCount];
        this.mPositionData = gridListSavedState.positionData;
        this.mNeedSync = true;
        super.onRestoreInstanceState(gridListSavedState);
    }
}
