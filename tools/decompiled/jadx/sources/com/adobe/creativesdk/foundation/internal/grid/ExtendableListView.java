package com.adobe.creativesdk.foundation.internal.grid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.ActivityChooserView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"WrongCall"})
public abstract class ExtendableListView extends AbsListView {
    private static final boolean DBG = false;
    private static final int INVALID_POINTER = -1;
    private static final int LAYOUT_FORCE_TOP = 1;
    private static final int LAYOUT_NORMAL = 0;
    private static final int LAYOUT_SYNC = 2;
    private static final String TAG = "ExtendableListView";
    private static final int TOUCH_MODE_DONE_WAITING = 5;
    private static final int TOUCH_MODE_DOWN = 3;
    private static final int TOUCH_MODE_FLINGING = 2;
    private static final int TOUCH_MODE_IDLE = 0;
    private static final int TOUCH_MODE_SCROLLING = 1;
    private static final int TOUCH_MODE_TAP = 4;
    private int mActivePointerId;
    ListAdapter mAdapter;
    private boolean mBlockLayoutRequests;
    protected boolean mClipToPadding;
    private boolean mDataChanged;
    protected int mFirstPosition;
    private FlingRunnable mFlingRunnable;
    private int mFlingVelocity;
    private ArrayList<FixedViewInfo> mFooterViewInfos;
    private ArrayList<FixedViewInfo> mHeaderViewInfos;
    private boolean mInLayout;
    private boolean mIsAttached;
    final boolean[] mIsScrap;
    private int mItemCount;
    private int mLastY;
    private int mLayoutMode;
    private int mMaximumVelocity;
    private int mMotionCorrection;
    private int mMotionPosition;
    private int mMotionX;
    private int mMotionY;
    boolean mNeedSync;
    private AdapterDataSetObserver mObserver;
    private int mOldItemCount;
    private AbsListView.OnScrollListener mOnScrollListener;
    private PerformClick mPerformClick;
    private RecycleBin mRecycleBin;
    private int mScrollState;
    protected int mSpecificTop;
    long mSyncHeight;
    protected int mSyncPosition;
    long mSyncRowId;
    private ListSavedState mSyncState;
    private int mTouchMode;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private int mWidthMeasureSpec;

    public class FixedViewInfo {
        public Object data;
        public boolean isSelectable;
        public View view;

        public FixedViewInfo() {
        }
    }

    public ExtendableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mScrollState = 0;
        this.mVelocityTracker = null;
        this.mActivePointerId = -1;
        this.mBlockLayoutRequests = false;
        this.mIsScrap = new boolean[1];
        this.mSyncRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        setWillNotDraw(false);
        setClipToPadding(false);
        setFocusableInTouchMode(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mRecycleBin = new RecycleBin();
        this.mObserver = new AdapterDataSetObserver();
        this.mHeaderViewInfos = new ArrayList<>();
        this.mFooterViewInfos = new ArrayList<>();
        this.mLayoutMode = 0;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mAdapter != null) {
            this.mDataChanged = true;
            this.mOldItemCount = this.mItemCount;
            this.mItemCount = this.mAdapter.getCount();
        }
        this.mIsAttached = true;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mRecycleBin.clear();
        if (this.mFlingRunnable != null) {
            removeCallbacks(this.mFlingRunnable);
        }
        this.mIsAttached = false;
    }

    @Override // android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onWindowFocusChanged(boolean z) {
    }

    @Override // android.widget.AbsListView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        onSizeChanged(i, i2);
    }

    protected void onSizeChanged(int i, int i2) {
        if (getChildCount() > 0) {
            stopFlingRunnable();
            this.mRecycleBin.clear();
            this.mDataChanged = true;
            rememberSyncState();
        }
    }

    @Override // android.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.mObserver);
        }
        if (this.mHeaderViewInfos.size() > 0 || this.mFooterViewInfos.size() > 0) {
            this.mAdapter = new HeaderViewListAdapter(this.mHeaderViewInfos, this.mFooterViewInfos, listAdapter);
        } else {
            this.mAdapter = listAdapter;
        }
        this.mDataChanged = true;
        this.mItemCount = listAdapter != null ? listAdapter.getCount() : 0;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.mObserver);
            this.mRecycleBin.setViewTypeCount(listAdapter.getViewTypeCount());
        }
        requestLayout();
    }

    @Override // android.widget.AdapterView
    public int getCount() {
        return this.mItemCount;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView
    public View getSelectedView() {
        return null;
    }

    @Override // android.widget.AdapterView
    public void setSelection(int i) {
        if (i >= 0) {
            this.mLayoutMode = 2;
            this.mSpecificTop = getListPaddingTop();
            this.mFirstPosition = 0;
            if (this.mNeedSync) {
                this.mSyncPosition = i;
                this.mSyncRowId = this.mAdapter.getItemId(i);
            }
            requestLayout();
        }
    }

    public void addHeaderView(View view, Object obj, boolean z) {
        if (this.mAdapter != null && !(this.mAdapter instanceof HeaderViewListAdapter)) {
            throw new IllegalStateException("Cannot add header view to list -- setAdapter has already been called.");
        }
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        fixedViewInfo.view = view;
        fixedViewInfo.data = obj;
        fixedViewInfo.isSelectable = z;
        this.mHeaderViewInfos.add(fixedViewInfo);
        if (this.mAdapter != null && this.mObserver != null) {
            this.mObserver.onChanged();
        }
    }

    public void addHeaderView(View view) {
        addHeaderView(view, null, true);
    }

    public int getHeaderViewsCount() {
        return this.mHeaderViewInfos.size();
    }

    public boolean removeHeaderView(View view) {
        boolean z;
        if (this.mHeaderViewInfos.size() <= 0) {
            return false;
        }
        if (this.mAdapter == null || !((HeaderViewListAdapter) this.mAdapter).removeHeader(view)) {
            z = false;
        } else {
            if (this.mObserver != null) {
                this.mObserver.onChanged();
            }
            z = true;
        }
        removeFixedViewInfo(view, this.mHeaderViewInfos);
        return z;
    }

    private void removeFixedViewInfo(View view, ArrayList<FixedViewInfo> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (arrayList.get(i).view == view) {
                arrayList.remove(i);
                return;
            }
        }
    }

    public void addFooterView(View view, Object obj, boolean z) {
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        fixedViewInfo.view = view;
        fixedViewInfo.data = obj;
        fixedViewInfo.isSelectable = z;
        this.mFooterViewInfos.add(fixedViewInfo);
        if (this.mAdapter != null && this.mObserver != null) {
            this.mObserver.onChanged();
        }
    }

    public void addFooterView(View view) {
        addFooterView(view, null, true);
    }

    public int getFooterViewsCount() {
        return this.mFooterViewInfos.size();
    }

    public boolean removeFooterView(View view) {
        boolean z;
        if (this.mFooterViewInfos.size() <= 0) {
            return false;
        }
        if (this.mAdapter == null || !((HeaderViewListAdapter) this.mAdapter).removeFooter(view)) {
            z = false;
        } else {
            if (this.mObserver != null) {
                this.mObserver.onChanged();
            }
            z = true;
        }
        removeFixedViewInfo(view, this.mFooterViewInfos);
        return z;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        super.setClipToPadding(z);
        this.mClipToPadding = z;
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.mBlockLayoutRequests && !this.mInLayout) {
            super.requestLayout();
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mAdapter != null) {
            if (z) {
                int childCount = getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    getChildAt(i5).forceLayout();
                }
                this.mRecycleBin.markChildrenDirty();
            }
            this.mInLayout = true;
            layoutChildren();
            this.mInLayout = false;
        }
    }

    @Override // android.widget.AbsListView
    protected void layoutChildren() {
        if (this.mBlockLayoutRequests) {
            return;
        }
        this.mBlockLayoutRequests = true;
        try {
            super.layoutChildren();
            invalidate();
            if (this.mAdapter == null) {
                clearState();
                return;
            }
            int listPaddingTop = getListPaddingTop();
            int childCount = getChildCount();
            View childAt = this.mLayoutMode == 0 ? getChildAt(0) : null;
            boolean z = this.mDataChanged;
            if (z) {
                handleDataChanged();
            }
            if (this.mItemCount == 0) {
                clearState();
                return;
            }
            if (this.mItemCount != this.mAdapter.getCount()) {
                throw new IllegalStateException("The content of the adapter has changed but ExtendableListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ExtendableListView(" + getId() + ", " + getClass() + ") with Adapter(" + this.mAdapter.getClass() + ")]");
            }
            int i = this.mFirstPosition;
            RecycleBin recycleBin = this.mRecycleBin;
            if (z) {
                for (int i2 = 0; i2 < childCount; i2++) {
                    recycleBin.addScrapView(getChildAt(i2), i + i2);
                }
            } else {
                recycleBin.fillActiveViews(childCount, i);
            }
            detachAllViewsFromParent();
            recycleBin.removeSkippedScrap();
            switch (this.mLayoutMode) {
                case 1:
                    this.mFirstPosition = 0;
                    resetToTop();
                    adjustViewsUpOrDown();
                    fillFromTop(listPaddingTop);
                    adjustViewsUpOrDown();
                    break;
                case 2:
                    fillSpecific(this.mSyncPosition, this.mSpecificTop);
                    break;
                default:
                    if (childCount == 0) {
                        fillFromTop(listPaddingTop);
                    } else if (this.mFirstPosition < this.mItemCount) {
                        int i3 = this.mFirstPosition;
                        if (childAt != null) {
                            listPaddingTop = childAt.getTop();
                        }
                        fillSpecific(i3, listPaddingTop);
                    } else {
                        fillSpecific(0, listPaddingTop);
                    }
                    break;
            }
            recycleBin.scrapActiveViews();
            this.mDataChanged = false;
            this.mNeedSync = false;
            this.mLayoutMode = 0;
        } finally {
            this.mBlockLayoutRequests = false;
        }
    }

    @Override // android.widget.AbsListView
    protected void handleDataChanged() {
        super.handleDataChanged();
        int i = this.mItemCount;
        if (i > 0 && this.mNeedSync) {
            this.mNeedSync = false;
            this.mSyncState = null;
            this.mLayoutMode = 2;
            this.mSyncPosition = Math.min(Math.max(0, this.mSyncPosition), i - 1);
            return;
        }
        this.mLayoutMode = 1;
        this.mNeedSync = false;
        this.mSyncState = null;
    }

    public void resetToTop() {
    }

    @Override // android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        this.mWidthMeasureSpec = i;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchPointerUp;
        if (!isEnabled()) {
            return isClickable() || isLongClickable();
        }
        initVelocityTrackerIfNotExists();
        this.mVelocityTracker.addMovement(motionEvent);
        if (!hasChildren()) {
            return false;
        }
        switch (motionEvent.getAction() & 255) {
            case 0:
                zOnTouchPointerUp = onTouchDown(motionEvent);
                break;
            case 1:
            case 4:
            case 5:
            default:
                zOnTouchPointerUp = onTouchUp(motionEvent);
                break;
            case 2:
                zOnTouchPointerUp = onTouchMove(motionEvent);
                break;
            case 3:
                zOnTouchPointerUp = onTouchCancel(motionEvent);
                break;
            case 6:
                zOnTouchPointerUp = onTouchPointerUp(motionEvent);
                break;
        }
        notifyTouchMode();
        return zOnTouchPointerUp;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (!this.mIsAttached) {
            return false;
        }
        switch (action & 255) {
            case 0:
                int i = this.mTouchMode;
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                this.mActivePointerId = motionEvent.getPointerId(0);
                int iFindMotionRow = findMotionRow(y);
                if (i != 2 && iFindMotionRow >= 0) {
                    this.mMotionX = x;
                    this.mMotionY = y;
                    this.mMotionPosition = iFindMotionRow;
                    this.mTouchMode = 3;
                }
                this.mLastY = Integer.MIN_VALUE;
                initOrResetVelocityTracker();
                this.mVelocityTracker.addMovement(motionEvent);
                if (i == 2) {
                }
                break;
            case 1:
            case 3:
                this.mTouchMode = 0;
                this.mActivePointerId = -1;
                recycleVelocityTracker();
                reportScrollStateChange(0);
                break;
            case 2:
                switch (this.mTouchMode) {
                    case 3:
                        int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                        if (iFindPointerIndex == -1) {
                            this.mActivePointerId = motionEvent.getPointerId(0);
                            iFindPointerIndex = 0;
                        }
                        int y2 = (int) motionEvent.getY(iFindPointerIndex);
                        initVelocityTrackerIfNotExists();
                        this.mVelocityTracker.addMovement(motionEvent);
                        if (startScrollIfNeeded(y2)) {
                        }
                        break;
                }
                break;
            case 6:
                onSecondaryPointerUp(motionEvent);
                break;
        }
        return false;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            recycleVelocityTracker();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    private boolean onTouchDown(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int iPointToPosition = pointToPosition(x, y);
        this.mVelocityTracker.clear();
        this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, 0);
        if (this.mTouchMode != 2 && !this.mDataChanged && iPointToPosition >= 0 && getAdapter().isEnabled(iPointToPosition)) {
            this.mTouchMode = 3;
            if (motionEvent.getEdgeFlags() != 0 && iPointToPosition < 0) {
                return false;
            }
        } else if (this.mTouchMode == 2) {
            this.mTouchMode = 1;
            this.mMotionCorrection = 0;
            iPointToPosition = findMotionRow(y);
        }
        this.mMotionX = x;
        this.mMotionY = y;
        this.mMotionPosition = iPointToPosition;
        this.mLastY = Integer.MIN_VALUE;
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private boolean onTouchMove(MotionEvent motionEvent) {
        int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
        if (iFindPointerIndex < 0) {
            Log.e(TAG, "onTouchMove could not find pointer with id " + this.mActivePointerId + " - did ExtendableListView receive an inconsistent event stream?");
            return false;
        }
        int y = (int) MotionEventCompat.getY(motionEvent, iFindPointerIndex);
        if (this.mDataChanged) {
            layoutChildren();
        }
        switch (this.mTouchMode) {
            case 1:
                scrollIfNeeded(y);
                return true;
            case 2:
            default:
                return true;
            case 3:
            case 4:
            case 5:
                startScrollIfNeeded(y);
                return true;
        }
    }

    private boolean onTouchCancel(MotionEvent motionEvent) {
        this.mTouchMode = 0;
        setPressed(false);
        invalidate();
        recycleVelocityTracker();
        this.mActivePointerId = -1;
        return true;
    }

    private boolean onTouchUp(MotionEvent motionEvent) {
        switch (this.mTouchMode) {
            case 1:
                return onTouchUpScrolling(motionEvent);
            case 2:
            default:
                setPressed(false);
                invalidate();
                recycleVelocityTracker();
                this.mActivePointerId = -1;
                return true;
            case 3:
            case 4:
            case 5:
                return onTouchUpTap(motionEvent);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean onTouchUpScrolling(android.view.MotionEvent r6) {
        /*
            r5 = this;
            r1 = 1
            r2 = 0
            boolean r0 = r5.hasChildren()
            if (r0 == 0) goto L5e
            int r0 = r5.getFirstChildTop()
            int r3 = r5.getLastChildBottom()
            int r4 = r5.mFirstPosition
            if (r4 != 0) goto L5c
            int r4 = r5.getListPaddingTop()
            if (r0 < r4) goto L5c
            int r0 = r5.mFirstPosition
            int r4 = r5.getChildCount()
            int r0 = r0 + r4
            int r4 = r5.mItemCount
            if (r0 >= r4) goto L5c
            int r0 = r5.getHeight()
            int r4 = r5.getListPaddingBottom()
            int r0 = r0 - r4
            if (r3 > r0) goto L5c
            r0 = r1
        L31:
            if (r0 != 0) goto L5e
            android.view.VelocityTracker r0 = r5.mVelocityTracker
            r3 = 1000(0x3e8, float:1.401E-42)
            int r4 = r5.mMaximumVelocity
            float r4 = (float) r4
            r0.computeCurrentVelocity(r3, r4)
            android.view.VelocityTracker r0 = r5.mVelocityTracker
            int r3 = r5.mActivePointerId
            float r0 = r0.getYVelocity(r3)
            float r3 = java.lang.Math.abs(r0)
            int r4 = r5.mFlingVelocity
            float r4 = (float) r4
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 <= 0) goto L5e
            r5.startFlingRunnable(r0)
            r0 = 2
            r5.mTouchMode = r0
            r5.mMotionY = r2
            r5.invalidate()
        L5b:
            return r1
        L5c:
            r0 = r2
            goto L31
        L5e:
            r5.stopFlingRunnable()
            r5.recycleVelocityTracker()
            r5.mTouchMode = r2
            goto L5b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.grid.ExtendableListView.onTouchUpScrolling(android.view.MotionEvent):boolean");
    }

    private boolean onTouchUpTap(MotionEvent motionEvent) {
        if (this.mPerformClick == null) {
            invalidate();
            this.mPerformClick = new PerformClick();
        }
        int i = this.mMotionPosition;
        if (!this.mDataChanged && i >= 0 && this.mAdapter.isEnabled(i)) {
            PerformClick performClick = this.mPerformClick;
            performClick.mClickMotionPosition = i;
            performClick.rememberWindowAttachCount();
            performClick.run();
            return true;
        }
        return true;
    }

    private boolean onTouchPointerUp(MotionEvent motionEvent) {
        onSecondaryPointerUp(motionEvent);
        int i = this.mMotionX;
        int i2 = this.mMotionY;
        int iPointToPosition = pointToPosition(i, i2);
        if (iPointToPosition >= 0) {
            this.mMotionPosition = iPointToPosition;
        }
        this.mLastY = i2;
        return true;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.mActivePointerId) {
            int i = action == 0 ? 1 : 0;
            this.mMotionX = (int) motionEvent.getX(i);
            this.mMotionY = (int) motionEvent.getY(i);
            this.mActivePointerId = motionEvent.getPointerId(i);
            recycleVelocityTracker();
        }
    }

    private boolean startScrollIfNeeded(int i) {
        int i2 = i - this.mMotionY;
        if (Math.abs(i2) <= this.mTouchSlop) {
            return false;
        }
        this.mTouchMode = 1;
        this.mMotionCorrection = i2 > 0 ? this.mTouchSlop : -this.mTouchSlop;
        setPressed(false);
        View childAt = getChildAt(this.mMotionPosition - this.mFirstPosition);
        if (childAt != null) {
            childAt.setPressed(false);
        }
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        scrollIfNeeded(i);
        return true;
    }

    private void scrollIfNeeded(int i) {
        int childCount;
        boolean zMoveTheChildren;
        ViewParent parent;
        int i2 = i - this.mMotionY;
        int i3 = i2 - this.mMotionCorrection;
        int i4 = this.mLastY != Integer.MIN_VALUE ? i - this.mLastY : i3;
        if (this.mTouchMode == 1 && i != this.mLastY) {
            if (Math.abs(i2) > this.mTouchSlop && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (this.mMotionPosition >= 0) {
                childCount = this.mMotionPosition - this.mFirstPosition;
            } else {
                childCount = getChildCount() / 2;
            }
            if (i4 == 0) {
                zMoveTheChildren = false;
            } else {
                zMoveTheChildren = moveTheChildren(i3, i4);
            }
            if (getChildAt(childCount) != null) {
                if (zMoveTheChildren) {
                }
                this.mMotionY = i;
            }
            this.mLastY = i;
        }
    }

    private int findMotionRow(int i) {
        int childCount = getChildCount();
        if (childCount > 0) {
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i <= getChildAt(i2).getBottom()) {
                    return i2 + this.mFirstPosition;
                }
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean moveTheChildren(int i, int i2) {
        int iMin;
        int i3;
        int i4;
        if (!hasChildren()) {
            return true;
        }
        int highestChildTop = getHighestChildTop();
        int lowestChildBottom = getLowestChildBottom();
        int listPaddingTop = 0;
        int listPaddingBottom = 0;
        if (this.mClipToPadding) {
            listPaddingTop = getListPaddingTop();
            listPaddingBottom = getListPaddingBottom();
        }
        int height = getHeight();
        int firstChildTop = listPaddingTop - getFirstChildTop();
        int lastChildBottom = getLastChildBottom() - (height - listPaddingBottom);
        int listPaddingBottom2 = (height - getListPaddingBottom()) - getListPaddingTop();
        if (i2 < 0) {
            iMin = Math.max(-(listPaddingBottom2 - 1), i2);
        } else {
            iMin = Math.min(listPaddingBottom2 - 1, i2);
        }
        int i5 = this.mFirstPosition;
        int listPaddingTop2 = getListPaddingTop();
        int listPaddingBottom3 = height - getListPaddingBottom();
        int childCount = getChildCount();
        boolean z = i5 == 0 && highestChildTop >= listPaddingTop2 && iMin >= 0;
        boolean z2 = i5 + childCount == this.mItemCount && lowestChildBottom <= listPaddingBottom3 && iMin <= 0;
        if (z) {
            return iMin != 0;
        }
        if (z2) {
            return iMin != 0;
        }
        boolean z3 = iMin < 0;
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = this.mItemCount - getFooterViewsCount();
        int i6 = 0;
        if (z3) {
            int listPaddingTop3 = -iMin;
            if (this.mClipToPadding) {
                listPaddingTop3 += getListPaddingTop();
            }
            int i7 = 0;
            int i8 = 0;
            while (i8 < childCount) {
                View childAt = getChildAt(i8);
                if (childAt.getBottom() >= listPaddingTop3) {
                    break;
                }
                int i9 = i7 + 1;
                int i10 = i5 + i8;
                if (i10 >= headerViewsCount && i10 < footerViewsCount) {
                    this.mRecycleBin.addScrapView(childAt, i10);
                }
                i8++;
                i7 = i9;
            }
            i3 = i7;
            i4 = 0;
        } else {
            int listPaddingBottom4 = height - iMin;
            if (this.mClipToPadding) {
                listPaddingBottom4 -= getListPaddingBottom();
            }
            int i11 = 0;
            int i12 = childCount - 1;
            while (true) {
                if (i12 < 0) {
                    i3 = i11;
                    i4 = i6;
                    break;
                }
                View childAt2 = getChildAt(i12);
                if (childAt2.getTop() <= listPaddingBottom4) {
                    i3 = i11;
                    i4 = i6;
                    break;
                }
                int i13 = i11 + 1;
                int i14 = i5 + i12;
                if (i14 >= headerViewsCount && i14 < footerViewsCount) {
                    this.mRecycleBin.addScrapView(childAt2, i14);
                }
                i11 = i13;
                i6 = i12;
                i12--;
            }
        }
        this.mBlockLayoutRequests = true;
        if (i3 > 0) {
            detachViewsFromParent(i4, i3);
            this.mRecycleBin.removeSkippedScrap();
            onChildrenDetached(i4, i3);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        offsetChildrenTopAndBottom(iMin);
        if (z3) {
            this.mFirstPosition = i3 + this.mFirstPosition;
        }
        int iAbs = Math.abs(iMin);
        if (firstChildTop < iAbs || lastChildBottom < iAbs) {
            fillGap(z3);
        }
        this.mBlockLayoutRequests = false;
        invokeOnItemScrollListener();
        return false;
    }

    protected void onChildrenDetached(int i, int i2) {
    }

    protected void fillGap(boolean z) {
        int childCount = getChildCount();
        if (z) {
            int i = childCount + this.mFirstPosition;
            fillDown(i, getChildTop(i));
        } else {
            int i2 = this.mFirstPosition - 1;
            fillUp(i2, getChildBottom(i2));
        }
        adjustViewsAfterFillGap(z);
    }

    protected void adjustViewsAfterFillGap(boolean z) {
        if (z) {
            correctTooHigh(getChildCount());
        } else {
            correctTooLow(getChildCount());
        }
    }

    private View fillDown(int i, int i2) {
        int height = getHeight();
        if (this.mClipToPadding) {
            height -= getListPaddingBottom();
        }
        while (true) {
            if ((i2 >= height && !hasSpaceDown()) || i >= this.mItemCount) {
                break;
            }
            makeAndAddView(i, i2, true, false);
            i++;
            i2 = getNextChildDownsTop(i);
        }
        return null;
    }

    protected boolean hasSpaceDown() {
        return false;
    }

    private View fillUp(int i, int i2) {
        int listPaddingTop = this.mClipToPadding ? getListPaddingTop() : 0;
        while (true) {
            if ((i2 <= listPaddingTop && !hasSpaceUp()) || i < 0) {
                break;
            }
            makeAndAddView(i, i2, false, false);
            i--;
            i2 = getNextChildUpsBottom(i);
        }
        this.mFirstPosition = i + 1;
        return null;
    }

    protected boolean hasSpaceUp() {
        return false;
    }

    private View fillFromTop(int i) {
        this.mFirstPosition = Math.min(this.mFirstPosition, this.mItemCount - 1);
        if (this.mFirstPosition < 0) {
            this.mFirstPosition = 0;
        }
        return fillDown(this.mFirstPosition, i);
    }

    private View fillSpecific(int i, int i2) {
        makeAndAddView(i, i2, true, false);
        this.mFirstPosition = i;
        int nextChildUpsBottom = getNextChildUpsBottom(i - 1);
        int nextChildDownsTop = getNextChildDownsTop(i + 1);
        View viewFillUp = fillUp(i - 1, nextChildUpsBottom);
        adjustViewsUpOrDown();
        View viewFillDown = fillDown(i + 1, nextChildDownsTop);
        int childCount = getChildCount();
        if (childCount > 0) {
            correctTooHigh(childCount);
        }
        return viewFillUp != null ? viewFillUp : viewFillDown;
    }

    private View makeAndAddView(int i, int i2, boolean z, boolean z2) {
        View activeView;
        onChildCreated(i, z);
        if (!this.mDataChanged && (activeView = this.mRecycleBin.getActiveView(i)) != null) {
            setupChild(activeView, i, i2, z, z2, true);
            return activeView;
        }
        View viewObtainView = obtainView(i, this.mIsScrap);
        setupChild(viewObtainView, i, i2, z, z2, this.mIsScrap[0]);
        return viewObtainView;
    }

    private void setupChild(View view, int i, int i2, boolean z, boolean z2, boolean z3) {
        LayoutParams layoutParamsGenerateChildLayoutParams;
        boolean z4 = view.isSelected();
        int i3 = this.mTouchMode;
        boolean z5 = i3 > 3 && i3 < 1 && this.mMotionPosition == i;
        boolean z6 = z5 != view.isPressed();
        boolean z7 = !z3 || z4 || view.isLayoutRequested();
        int itemViewType = this.mAdapter.getItemViewType(i);
        if (itemViewType == -2) {
            layoutParamsGenerateChildLayoutParams = generateWrapperLayoutParams(view);
        } else {
            layoutParamsGenerateChildLayoutParams = generateChildLayoutParams(view);
        }
        layoutParamsGenerateChildLayoutParams.viewType = itemViewType;
        layoutParamsGenerateChildLayoutParams.position = i;
        if (z3 || (layoutParamsGenerateChildLayoutParams.recycledHeaderFooter && layoutParamsGenerateChildLayoutParams.viewType == -2)) {
            attachViewToParent(view, z ? -1 : 0, layoutParamsGenerateChildLayoutParams);
        } else {
            if (layoutParamsGenerateChildLayoutParams.viewType == -2) {
                layoutParamsGenerateChildLayoutParams.recycledHeaderFooter = true;
            }
            addViewInLayout(view, z ? -1 : 0, layoutParamsGenerateChildLayoutParams, true);
        }
        if (z4) {
            view.setSelected(false);
        }
        if (z6) {
            view.setPressed(z5);
        }
        if (z7) {
            onMeasureChild(view, layoutParamsGenerateChildLayoutParams);
        } else {
            cleanupLayoutState(view);
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = z ? i2 : i2 - measuredHeight;
        int childLeft = getChildLeft(i);
        if (z7) {
            onLayoutChild(view, i, z, childLeft, i4, childLeft + measuredWidth, i4 + measuredHeight);
        } else {
            onOffsetChild(view, i, z, childLeft, i4);
        }
    }

    protected LayoutParams generateChildLayoutParams(View view) {
        return generateWrapperLayoutParams(view);
    }

    protected LayoutParams generateWrapperLayoutParams(View view) {
        LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams = null;
        } else if (layoutParams2 instanceof LayoutParams) {
            layoutParams = (LayoutParams) layoutParams2;
        } else {
            layoutParams = new LayoutParams(layoutParams2);
        }
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        return layoutParams;
    }

    protected void onMeasureChild(View view, LayoutParams layoutParams) {
        int iMakeMeasureSpec;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, getListPaddingLeft() + getListPaddingRight(), layoutParams.width);
        int i = layoutParams.height;
        if (i > 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, iMakeMeasureSpec);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2, 0);
    }

    protected LayoutParams generateHeaderFooterLayoutParams(View view) {
        return new LayoutParams(-1, -2, 0);
    }

    private View obtainView(int i, boolean[] zArr) {
        zArr[0] = false;
        View scrapView = this.mRecycleBin.getScrapView(i);
        if (scrapView != null) {
            View view = this.mAdapter.getView(i, scrapView, this);
            if (view != scrapView) {
                this.mRecycleBin.addScrapView(scrapView, i);
                return view;
            }
            zArr[0] = true;
            return view;
        }
        return this.mAdapter.getView(i, null, this);
    }

    private void correctTooHigh(int i) {
        if ((this.mFirstPosition + i) - 1 == this.mItemCount - 1 && i > 0) {
            int bottom = ((getBottom() - getTop()) - getListPaddingBottom()) - getLowestChildBottom();
            int highestChildTop = getHighestChildTop();
            if (bottom > 0) {
                if (this.mFirstPosition > 0 || highestChildTop < getListPaddingTop()) {
                    if (this.mFirstPosition == 0) {
                        bottom = Math.min(bottom, getListPaddingTop() - highestChildTop);
                    }
                    offsetChildrenTopAndBottom(bottom);
                    if (this.mFirstPosition > 0) {
                        int i2 = this.mFirstPosition - 1;
                        fillUp(i2, getNextChildUpsBottom(i2));
                        adjustViewsUpOrDown();
                    }
                }
            }
        }
    }

    private void correctTooLow(int i) {
        if (this.mFirstPosition == 0 && i > 0) {
            int highestChildTop = getHighestChildTop();
            int listPaddingTop = getListPaddingTop();
            int top = (getTop() - getBottom()) - getListPaddingBottom();
            int iMin = highestChildTop - listPaddingTop;
            int lowestChildBottom = getLowestChildBottom();
            int i2 = (this.mFirstPosition + i) - 1;
            if (iMin > 0) {
                if (i2 < this.mItemCount - 1 || lowestChildBottom > top) {
                    if (i2 == this.mItemCount - 1) {
                        iMin = Math.min(iMin, lowestChildBottom - top);
                    }
                    offsetChildrenTopAndBottom(-iMin);
                    if (i2 < this.mItemCount - 1) {
                        int i3 = i2 + 1;
                        fillDown(i3, getNextChildDownsTop(i3));
                        adjustViewsUpOrDown();
                        return;
                    }
                    return;
                }
                if (i2 == this.mItemCount - 1) {
                    adjustViewsUpOrDown();
                }
            }
        }
    }

    private void adjustViewsUpOrDown() {
        if (getChildCount() > 0) {
            int highestChildTop = getHighestChildTop() - getListPaddingTop();
            if (highestChildTop < 0) {
                highestChildTop = 0;
            }
            if (highestChildTop != 0) {
                offsetChildrenTopAndBottom(-highestChildTop);
            }
        }
    }

    protected void onChildCreated(int i, boolean z) {
    }

    protected void onLayoutChild(View view, int i, boolean z, int i2, int i3, int i4, int i5) {
        view.layout(i2, i3, i4, i5);
    }

    protected void onOffsetChild(View view, int i, boolean z, int i2, int i3) {
        view.offsetLeftAndRight(i2 - view.getLeft());
        view.offsetTopAndBottom(i3 - view.getTop());
    }

    protected int getChildLeft(int i) {
        return getListPaddingLeft();
    }

    protected int getChildTop(int i) {
        int childCount = getChildCount();
        int listPaddingTop = 0;
        if (this.mClipToPadding) {
            listPaddingTop = getListPaddingTop();
        }
        return childCount > 0 ? getChildAt(childCount - 1).getBottom() : listPaddingTop;
    }

    protected int getChildBottom(int i) {
        return getChildCount() > 0 ? getChildAt(0).getTop() : getHeight() - (this.mClipToPadding ? getListPaddingBottom() : 0);
    }

    protected int getNextChildDownsTop(int i) {
        int childCount = getChildCount();
        if (childCount > 0) {
            return getChildAt(childCount - 1).getBottom();
        }
        return 0;
    }

    protected int getNextChildUpsBottom(int i) {
        int childCount = getChildCount();
        if (childCount != 0 && childCount > 0) {
            return getChildAt(0).getTop();
        }
        return 0;
    }

    protected int getFirstChildTop() {
        if (hasChildren()) {
            return getChildAt(0).getTop();
        }
        return 0;
    }

    protected int getHighestChildTop() {
        if (hasChildren()) {
            return getChildAt(0).getTop();
        }
        return 0;
    }

    protected int getLastChildBottom() {
        if (hasChildren()) {
            return getChildAt(getChildCount() - 1).getBottom();
        }
        return 0;
    }

    protected int getLowestChildBottom() {
        if (hasChildren()) {
            return getChildAt(getChildCount() - 1).getBottom();
        }
        return 0;
    }

    protected boolean hasChildren() {
        return getChildCount() > 0;
    }

    protected void offsetChildrenTopAndBottom(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).offsetTopAndBottom(i);
        }
    }

    @Override // android.widget.AdapterView
    public int getFirstVisiblePosition() {
        return Math.max(0, this.mFirstPosition - getHeaderViewsCount());
    }

    @Override // android.widget.AdapterView
    public int getLastVisiblePosition() {
        return Math.min((this.mFirstPosition + getChildCount()) - 1, this.mAdapter.getCount() - 1);
    }

    private void initOrResetVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            this.mVelocityTracker.clear();
        }
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private void recycleVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void startFlingRunnable(float f2) {
        if (this.mFlingRunnable == null) {
            this.mFlingRunnable = new FlingRunnable();
        }
        this.mFlingRunnable.start((int) (-f2));
    }

    private void stopFlingRunnable() {
        if (this.mFlingRunnable == null) {
            return;
        }
        this.mFlingRunnable.endFling();
    }

    class FlingRunnable implements Runnable {
        private int mLastFlingY;
        private final Scroller mScroller;

        FlingRunnable() {
            this.mScroller = new Scroller(ExtendableListView.this.getContext());
        }

        void start(int i) {
            int i2 = i < 0 ? Integer.MAX_VALUE : 0;
            this.mLastFlingY = i2;
            this.mScroller.forceFinished(true);
            this.mScroller.fling(0, i2, 0, i, 0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            ExtendableListView.this.mTouchMode = 2;
            ExtendableListView.this.postOnAnimate(this);
        }

        void startScroll(int i, int i2) {
            int i3 = i < 0 ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : 0;
            this.mLastFlingY = i3;
            this.mScroller.startScroll(0, i3, 0, i, i2);
            ExtendableListView.this.mTouchMode = 2;
            ExtendableListView.this.postOnAnimate(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void endFling() {
            this.mLastFlingY = 0;
            ExtendableListView.this.mTouchMode = 0;
            ExtendableListView.this.reportScrollStateChange(0);
            ExtendableListView.this.removeCallbacks(this);
            this.mScroller.forceFinished(true);
        }

        @Override // java.lang.Runnable
        public void run() {
            int iMax;
            switch (ExtendableListView.this.mTouchMode) {
                case 2:
                    if (ExtendableListView.this.mItemCount == 0 || ExtendableListView.this.getChildCount() == 0) {
                        endFling();
                    } else {
                        Scroller scroller = this.mScroller;
                        boolean zComputeScrollOffset = scroller.computeScrollOffset();
                        int currY = scroller.getCurrY();
                        int i = this.mLastFlingY - currY;
                        if (i > 0) {
                            ExtendableListView.this.mMotionPosition = ExtendableListView.this.mFirstPosition;
                            iMax = Math.min(((ExtendableListView.this.getHeight() - ExtendableListView.this.getPaddingBottom()) - ExtendableListView.this.getPaddingTop()) - 1, i);
                        } else {
                            ExtendableListView.this.mMotionPosition = (ExtendableListView.this.getChildCount() - 1) + ExtendableListView.this.mFirstPosition;
                            iMax = Math.max(-(((ExtendableListView.this.getHeight() - ExtendableListView.this.getPaddingBottom()) - ExtendableListView.this.getPaddingTop()) - 1), i);
                        }
                        boolean zMoveTheChildren = ExtendableListView.this.moveTheChildren(iMax, iMax);
                        if (zComputeScrollOffset && !zMoveTheChildren) {
                            ExtendableListView.this.invalidate();
                            this.mLastFlingY = currY;
                            ExtendableListView.this.postOnAnimate(this);
                        } else {
                            endFling();
                        }
                    }
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOnAnimate(Runnable runnable) {
        ViewCompat.postOnAnimation(this, runnable);
    }

    public void notifyTouchMode() {
        switch (this.mTouchMode) {
            case 0:
                reportScrollStateChange(0);
                break;
            case 1:
                reportScrollStateChange(1);
                break;
            case 2:
                reportScrollStateChange(2);
                break;
        }
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        super.setOnScrollListener(onScrollListener);
        this.mOnScrollListener = onScrollListener;
    }

    void reportScrollStateChange(int i) {
        if (i != this.mScrollState) {
            this.mScrollState = i;
            if (this.mOnScrollListener != null) {
                this.mOnScrollListener.onScrollStateChanged(this, i);
            }
        }
    }

    void invokeOnItemScrollListener() {
        if (this.mOnScrollListener != null) {
            this.mOnScrollListener.onScroll(this, this.mFirstPosition, getChildCount(), this.mItemCount);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyStatus() {
        boolean z = getAdapter() == null || getAdapter().isEmpty();
        if (isInFilterMode()) {
            z = false;
        }
        View emptyView = getEmptyView();
        if (z) {
            if (emptyView != null) {
                emptyView.setVisibility(0);
                setVisibility(8);
            } else {
                setVisibility(0);
            }
            if (this.mDataChanged) {
                onLayout(false, getLeft(), getTop(), getRight(), getBottom());
                return;
            }
            return;
        }
        if (emptyView != null) {
            emptyView.setVisibility(8);
        }
        setVisibility(0);
    }

    class AdapterDataSetObserver extends DataSetObserver {
        private Parcelable mInstanceState = null;

        AdapterDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ExtendableListView.this.mDataChanged = true;
            ExtendableListView.this.mOldItemCount = ExtendableListView.this.mItemCount;
            ExtendableListView.this.mItemCount = ExtendableListView.this.getAdapter().getCount();
            ExtendableListView.this.mRecycleBin.clearTransientStateViews();
            if (ExtendableListView.this.getAdapter().hasStableIds() && this.mInstanceState != null && ExtendableListView.this.mOldItemCount == 0 && ExtendableListView.this.mItemCount > 0) {
                ExtendableListView.this.onRestoreInstanceState(this.mInstanceState);
                this.mInstanceState = null;
            } else {
                ExtendableListView.this.rememberSyncState();
            }
            ExtendableListView.this.updateEmptyStatus();
            ExtendableListView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ExtendableListView.this.mDataChanged = true;
            if (ExtendableListView.this.getAdapter().hasStableIds()) {
                this.mInstanceState = ExtendableListView.this.onSaveInstanceState();
            }
            ExtendableListView.this.mOldItemCount = ExtendableListView.this.mItemCount;
            ExtendableListView.this.mItemCount = 0;
            ExtendableListView.this.mNeedSync = false;
            ExtendableListView.this.updateEmptyStatus();
            ExtendableListView.this.requestLayout();
        }

        public void clearSavedState() {
            this.mInstanceState = null;
        }
    }

    public class LayoutParams extends AbsListView.LayoutParams {
        long itemId;
        int position;
        boolean recycledHeaderFooter;
        int viewType;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.itemId = -1L;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.itemId = -1L;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.itemId = -1L;
            this.viewType = i3;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.itemId = -1L;
        }
    }

    class RecycleBin {
        private View[] mActiveViews = new View[0];
        private ArrayList<View> mCurrentScrap;
        private int mFirstActivePosition;
        private ArrayList<View>[] mScrapViews;
        private ArrayList<View> mSkippedScrap;
        private SparseArrayCompat<View> mTransientStateViews;
        private int mViewTypeCount;

        RecycleBin() {
        }

        public void setViewTypeCount(int i) {
            if (i < 1) {
                throw new IllegalArgumentException("Can't have a viewTypeCount < 1");
            }
            ArrayList<View>[] arrayListArr = new ArrayList[i];
            for (int i2 = 0; i2 < i; i2++) {
                arrayListArr[i2] = new ArrayList<>();
            }
            this.mViewTypeCount = i;
            this.mCurrentScrap = arrayListArr[0];
            this.mScrapViews = arrayListArr;
        }

        public void markChildrenDirty() {
            if (this.mViewTypeCount == 1) {
                ArrayList<View> arrayList = this.mCurrentScrap;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    arrayList.get(i).forceLayout();
                }
            } else {
                int i2 = this.mViewTypeCount;
                for (int i3 = 0; i3 < i2; i3++) {
                    ArrayList<View> arrayList2 = this.mScrapViews[i3];
                    int size2 = arrayList2.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        arrayList2.get(i4).forceLayout();
                    }
                }
            }
            if (this.mTransientStateViews != null) {
                int size3 = this.mTransientStateViews.size();
                for (int i5 = 0; i5 < size3; i5++) {
                    this.mTransientStateViews.valueAt(i5).forceLayout();
                }
            }
        }

        public boolean shouldRecycleViewType(int i) {
            return i >= 0;
        }

        void clear() {
            if (this.mViewTypeCount == 1) {
                ArrayList<View> arrayList = this.mCurrentScrap;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ExtendableListView.this.removeDetachedView(arrayList.remove((size - 1) - i), false);
                }
            } else {
                int i2 = this.mViewTypeCount;
                for (int i3 = 0; i3 < i2; i3++) {
                    ArrayList<View> arrayList2 = this.mScrapViews[i3];
                    int size2 = arrayList2.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        ExtendableListView.this.removeDetachedView(arrayList2.remove((size2 - 1) - i4), false);
                    }
                }
            }
            if (this.mTransientStateViews != null) {
                this.mTransientStateViews.clear();
            }
        }

        void fillActiveViews(int i, int i2) {
            if (this.mActiveViews.length < i) {
                this.mActiveViews = new View[i];
            }
            this.mFirstActivePosition = i2;
            View[] viewArr = this.mActiveViews;
            for (int i3 = 0; i3 < i; i3++) {
                View childAt = ExtendableListView.this.getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.viewType != -2) {
                    viewArr[i3] = childAt;
                }
            }
        }

        View getActiveView(int i) {
            int i2 = i - this.mFirstActivePosition;
            View[] viewArr = this.mActiveViews;
            if (i2 < 0 || i2 >= viewArr.length) {
                return null;
            }
            View view = viewArr[i2];
            viewArr[i2] = null;
            return view;
        }

        View getTransientStateView(int i) {
            int iIndexOfKey;
            if (this.mTransientStateViews == null || (iIndexOfKey = this.mTransientStateViews.indexOfKey(i)) < 0) {
                return null;
            }
            View viewValueAt = this.mTransientStateViews.valueAt(iIndexOfKey);
            this.mTransientStateViews.removeAt(iIndexOfKey);
            return viewValueAt;
        }

        void clearTransientStateViews() {
            if (this.mTransientStateViews != null) {
                this.mTransientStateViews.clear();
            }
        }

        View getScrapView(int i) {
            if (this.mViewTypeCount == 1) {
                return ExtendableListView.retrieveFromScrap(this.mCurrentScrap, i);
            }
            int itemViewType = ExtendableListView.this.mAdapter.getItemViewType(i);
            if (itemViewType >= 0 && itemViewType < this.mScrapViews.length) {
                return ExtendableListView.retrieveFromScrap(this.mScrapViews[itemViewType], i);
            }
            return null;
        }

        void addScrapView(View view, int i) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.position = i;
                int i2 = layoutParams.viewType;
                boolean zHasTransientState = ViewCompat.hasTransientState(view);
                if (!shouldRecycleViewType(i2) || zHasTransientState) {
                    if (i2 != -2 || zHasTransientState) {
                        if (this.mSkippedScrap == null) {
                            this.mSkippedScrap = new ArrayList<>();
                        }
                        this.mSkippedScrap.add(view);
                    }
                    if (zHasTransientState) {
                        if (this.mTransientStateViews == null) {
                            this.mTransientStateViews = new SparseArrayCompat<>();
                        }
                        this.mTransientStateViews.put(i, view);
                        return;
                    }
                    return;
                }
                if (this.mViewTypeCount == 1) {
                    this.mCurrentScrap.add(view);
                } else {
                    this.mScrapViews[i2].add(view);
                }
            }
        }

        void removeSkippedScrap() {
            if (this.mSkippedScrap != null) {
                int size = this.mSkippedScrap.size();
                for (int i = 0; i < size; i++) {
                    ExtendableListView.this.removeDetachedView(this.mSkippedScrap.get(i), false);
                }
                this.mSkippedScrap.clear();
            }
        }

        void scrapActiveViews() {
            View[] viewArr = this.mActiveViews;
            boolean z = this.mViewTypeCount > 1;
            ArrayList<View> arrayList = this.mCurrentScrap;
            for (int length = viewArr.length - 1; length >= 0; length--) {
                View view = viewArr[length];
                if (view != null) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    viewArr[length] = null;
                    boolean zHasTransientState = ViewCompat.hasTransientState(view);
                    int i = layoutParams.viewType;
                    if (!shouldRecycleViewType(i) || zHasTransientState) {
                        if (i != -2 || zHasTransientState) {
                            ExtendableListView.this.removeDetachedView(view, false);
                        }
                        if (zHasTransientState) {
                            if (this.mTransientStateViews == null) {
                                this.mTransientStateViews = new SparseArrayCompat<>();
                            }
                            this.mTransientStateViews.put(this.mFirstActivePosition + length, view);
                        }
                    } else {
                        if (z) {
                            arrayList = this.mScrapViews[i];
                        }
                        layoutParams.position = this.mFirstActivePosition + length;
                        arrayList.add(view);
                    }
                }
            }
            pruneScrapViews();
        }

        private void pruneScrapViews() {
            int i = 0;
            int length = this.mActiveViews.length;
            int i2 = this.mViewTypeCount;
            ArrayList<View>[] arrayListArr = this.mScrapViews;
            for (int i3 = 0; i3 < i2; i3++) {
                ArrayList<View> arrayList = arrayListArr[i3];
                int size = arrayList.size();
                int i4 = size - length;
                int i5 = size - 1;
                int i6 = 0;
                while (i6 < i4) {
                    ExtendableListView.this.removeDetachedView(arrayList.remove(i5), false);
                    i6++;
                    i5--;
                }
            }
            if (this.mTransientStateViews != null) {
                while (i < this.mTransientStateViews.size()) {
                    if (!ViewCompat.hasTransientState(this.mTransientStateViews.valueAt(i))) {
                        this.mTransientStateViews.removeAt(i);
                        i--;
                    }
                    i++;
                }
            }
        }

        void setCacheColorHint(int i) {
            if (this.mViewTypeCount == 1) {
                ArrayList<View> arrayList = this.mCurrentScrap;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.get(i2).setDrawingCacheBackgroundColor(i);
                }
            } else {
                int i3 = this.mViewTypeCount;
                for (int i4 = 0; i4 < i3; i4++) {
                    ArrayList<View> arrayList2 = this.mScrapViews[i4];
                    int size2 = arrayList2.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        arrayList2.get(i5).setDrawingCacheBackgroundColor(i);
                    }
                }
            }
            for (View view : this.mActiveViews) {
                if (view != null) {
                    view.setDrawingCacheBackgroundColor(i);
                }
            }
        }
    }

    static View retrieveFromScrap(ArrayList<View> arrayList, int i) {
        int size = arrayList.size();
        if (size > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                View view = arrayList.get(i2);
                if (((LayoutParams) view.getLayoutParams()).position == i) {
                    arrayList.remove(i2);
                    return view;
                }
            }
            return arrayList.remove(size - 1);
        }
        return null;
    }

    void rememberSyncState() {
        if (getChildCount() > 0) {
            this.mNeedSync = true;
            this.mSyncHeight = getHeight();
            View childAt = getChildAt(0);
            ListAdapter adapter = getAdapter();
            if (this.mFirstPosition >= 0 && this.mFirstPosition < adapter.getCount()) {
                this.mSyncRowId = adapter.getItemId(this.mFirstPosition);
            } else {
                this.mSyncRowId = -1L;
            }
            if (childAt != null) {
                this.mSpecificTop = childAt.getTop();
            }
            this.mSyncPosition = this.mFirstPosition;
        }
    }

    private void clearState() {
        clearRecycledState(this.mHeaderViewInfos);
        clearRecycledState(this.mFooterViewInfos);
        removeAllViewsInLayout();
        this.mFirstPosition = 0;
        this.mDataChanged = false;
        this.mRecycleBin.clear();
        this.mNeedSync = false;
        this.mSyncState = null;
        this.mLayoutMode = 0;
        invalidate();
    }

    private void clearRecycledState(ArrayList<FixedViewInfo> arrayList) {
        if (arrayList != null) {
            Iterator<FixedViewInfo> it = arrayList.iterator();
            while (it.hasNext()) {
                LayoutParams layoutParams = (LayoutParams) it.next().view.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.recycledHeaderFooter = false;
                }
            }
        }
    }

    public class ListSavedState extends ClassLoaderSavedState {
        public static final Parcelable.Creator<ListSavedState> CREATOR = new Parcelable.Creator<ListSavedState>() { // from class: com.adobe.creativesdk.foundation.internal.grid.ExtendableListView.ListSavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ListSavedState createFromParcel(Parcel parcel) {
                return new ListSavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ListSavedState[] newArray(int i) {
                return new ListSavedState[i];
            }
        };
        protected long firstId;
        protected int height;
        protected int position;
        protected long selectedId;
        protected int viewTop;

        public ListSavedState(Parcelable parcelable) {
            super(parcelable, AbsListView.class.getClassLoader());
        }

        public ListSavedState(Parcel parcel) {
            super(parcel);
            this.selectedId = parcel.readLong();
            this.firstId = parcel.readLong();
            this.viewTop = parcel.readInt();
            this.position = parcel.readInt();
            this.height = parcel.readInt();
        }

        @Override // com.adobe.creativesdk.foundation.internal.grid.ClassLoaderSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.selectedId);
            parcel.writeLong(this.firstId);
            parcel.writeInt(this.viewTop);
            parcel.writeInt(this.position);
            parcel.writeInt(this.height);
        }

        public String toString() {
            return "ExtendableListView.ListSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.selectedId + " firstId=" + this.firstId + " viewTop=" + this.viewTop + " position=" + this.position + " height=" + this.height + "}";
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        ListSavedState listSavedState = new ListSavedState(super.onSaveInstanceState());
        if (this.mSyncState != null) {
            listSavedState.selectedId = this.mSyncState.selectedId;
            listSavedState.firstId = this.mSyncState.firstId;
            listSavedState.viewTop = this.mSyncState.viewTop;
            listSavedState.position = this.mSyncState.position;
            listSavedState.height = this.mSyncState.height;
            return listSavedState;
        }
        boolean z = getChildCount() > 0 && this.mItemCount > 0;
        listSavedState.selectedId = getSelectedItemId();
        listSavedState.height = getHeight();
        if (z && this.mFirstPosition > 0) {
            listSavedState.viewTop = getChildAt(0).getTop();
            int i = this.mFirstPosition;
            if (i >= this.mItemCount) {
                i = this.mItemCount - 1;
            }
            listSavedState.position = i;
            listSavedState.firstId = this.mAdapter.getItemId(i);
        } else {
            listSavedState.viewTop = 0;
            listSavedState.firstId = -1L;
            listSavedState.position = 0;
        }
        return listSavedState;
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ListSavedState listSavedState = (ListSavedState) parcelable;
        super.onRestoreInstanceState(listSavedState.getSuperState());
        this.mDataChanged = true;
        this.mSyncHeight = listSavedState.height;
        if (listSavedState.firstId >= 0) {
            this.mNeedSync = true;
            this.mSyncState = listSavedState;
            this.mSyncRowId = listSavedState.firstId;
            this.mSyncPosition = listSavedState.position;
            this.mSpecificTop = listSavedState.viewTop;
        }
        requestLayout();
    }

    class PerformClick extends WindowRunnnable implements Runnable {
        int mClickMotionPosition;

        private PerformClick() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            View childAt;
            if (!ExtendableListView.this.mDataChanged) {
                ListAdapter listAdapter = ExtendableListView.this.mAdapter;
                int i = this.mClickMotionPosition;
                if (listAdapter != null && ExtendableListView.this.mItemCount > 0 && i != -1 && i < listAdapter.getCount() && sameWindow() && (childAt = ExtendableListView.this.getChildAt(i)) != null) {
                    ExtendableListView.this.performItemClick(childAt, ExtendableListView.this.mFirstPosition + i, listAdapter.getItemId(i));
                }
            }
        }
    }

    class WindowRunnnable {
        private int mOriginalAttachCount;

        private WindowRunnnable() {
        }

        public void rememberWindowAttachCount() {
            this.mOriginalAttachCount = ExtendableListView.this.getWindowAttachCount();
        }

        public boolean sameWindow() {
            return ExtendableListView.this.hasWindowFocus() && ExtendableListView.this.getWindowAttachCount() == this.mOriginalAttachCount;
        }
    }
}
