package com.behance.sdk.mobeta.android.dslv;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.behance.sdk.R;
import com.behance.sdk.util.BehanceSDKConstants;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class DragSortListView extends ListView {
    private static final int DRAGGING = 4;
    public static final int DRAG_NEG_X = 2;
    public static final int DRAG_NEG_Y = 8;
    public static final int DRAG_POS_X = 1;
    public static final int DRAG_POS_Y = 4;
    private static final int DROPPING = 2;
    private static final int IDLE = 0;
    private static final int NO_CANCEL = 0;
    private static final int ON_INTERCEPT_TOUCH_EVENT = 2;
    private static final int ON_TOUCH_EVENT = 1;
    private static final int REMOVING = 1;
    private static final int STOPPED = 3;
    private static final int sCacheSize = 3;
    private AdapterWrapper mAdapterWrapper;
    private boolean mAnimate;
    private boolean mBlockLayoutRequests;
    private MotionEvent mCancelEvent;
    private int mCancelMethod;
    private HeightCache mChildHeightCache;
    private float mCurrFloatAlpha;
    private int mDownScrollStartY;
    private float mDownScrollStartYF;
    private int mDragDeltaX;
    private int mDragDeltaY;
    private float mDragDownScrollHeight;
    private float mDragDownScrollStartFrac;
    private boolean mDragEnabled;
    private int mDragFlags;
    private DragListener mDragListener;
    private DragScroller mDragScroller;
    private DragSortTracker mDragSortTracker;
    private int mDragState;
    private float mDragUpScrollHeight;
    private float mDragUpScrollStartFrac;
    private DropAnimator mDropAnimator;
    private DropListener mDropListener;
    private int mFirstExpPos;
    private float mFloatAlpha;
    private Point mFloatLoc;
    private int mFloatPos;
    private View mFloatView;
    private int mFloatViewHeight;
    private int mFloatViewHeightHalf;
    private FloatViewManager mFloatViewManager;
    private int mFloatViewMid;
    private boolean mFloatViewOnMeasured;
    private boolean mIgnoreTouchEvent;
    private boolean mInTouchEvent;
    private int mItemHeightCollapsed;
    private boolean mLastCallWasIntercept;
    private int mLastY;
    private LiftAnimator mLiftAnimator;
    private boolean mListViewIntercepted;
    private float mMaxScrollSpeed;
    private DataSetObserver mObserver;
    private RemoveAnimator mRemoveAnimator;
    private RemoveListener mRemoveListener;
    private float mRemoveVelocityX;
    private View[] mSampleViewTypes;
    private DragScrollProfile mScrollProfile;
    private int mSecondExpPos;
    private float mSlideFrac;
    private float mSlideRegionFrac;
    private int mSrcPos;
    private Point mTouchLoc;
    private boolean mTrackDragSort;
    private int mUpScrollStartY;
    private float mUpScrollStartYF;
    private boolean mUseRemoveVelocity;
    private int mWidthMeasureSpec;
    private int mX;
    private int mY;

    public interface DragListener {
        void drag(int i, int i2);
    }

    public interface DragScrollProfile {
        float getSpeed(float f2, long j);
    }

    public interface DragSortListener extends DragListener, DropListener, RemoveListener {
    }

    public interface DropListener {
        void drop(int i, int i2);
    }

    public interface FloatViewManager {
        View onCreateFloatView(int i);

        void onDestroyFloatView(View view);

        void onDragFloatView(View view, Point point, Point point2);
    }

    public interface RemoveListener {
        void remove(int i);
    }

    @SuppressLint({"Recycle"})
    public DragSortListView(Context context, AttributeSet attributeSet) {
        int i;
        super(context, attributeSet);
        this.mFloatLoc = new Point();
        this.mTouchLoc = new Point();
        this.mFloatViewOnMeasured = false;
        this.mFloatAlpha = 1.0f;
        this.mCurrFloatAlpha = 1.0f;
        this.mAnimate = false;
        this.mDragEnabled = true;
        this.mDragState = 0;
        this.mItemHeightCollapsed = 1;
        this.mWidthMeasureSpec = 0;
        this.mSampleViewTypes = new View[1];
        this.mDragUpScrollStartFrac = 0.33333334f;
        this.mDragDownScrollStartFrac = 0.33333334f;
        this.mMaxScrollSpeed = 0.5f;
        this.mScrollProfile = new DragScrollProfile() { // from class: com.behance.sdk.mobeta.android.dslv.DragSortListView.1
            @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.DragScrollProfile
            public float getSpeed(float f2, long j) {
                return DragSortListView.this.mMaxScrollSpeed * f2;
            }
        };
        this.mDragFlags = 0;
        this.mLastCallWasIntercept = false;
        this.mInTouchEvent = false;
        this.mFloatViewManager = null;
        this.mCancelMethod = 0;
        this.mSlideRegionFrac = 0.25f;
        this.mSlideFrac = 0.0f;
        this.mTrackDragSort = false;
        this.mBlockLayoutRequests = false;
        this.mIgnoreTouchEvent = false;
        this.mChildHeightCache = new HeightCache(3);
        this.mRemoveVelocityX = 0.0f;
        this.mListViewIntercepted = false;
        int i2 = 150;
        if (attributeSet == null) {
            i = 150;
        } else {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.DragSortListView, 0, 0);
            this.mItemHeightCollapsed = Math.max(1, typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DragSortListView_collapsed_height, 1));
            this.mTrackDragSort = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DragSortListView_track_drag_sort, false);
            if (this.mTrackDragSort) {
                this.mDragSortTracker = new DragSortTracker();
            }
            this.mFloatAlpha = typedArrayObtainStyledAttributes.getFloat(R.styleable.DragSortListView_float_alpha, this.mFloatAlpha);
            this.mCurrFloatAlpha = this.mFloatAlpha;
            this.mDragEnabled = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DragSortListView_drag_enabled, this.mDragEnabled);
            this.mSlideRegionFrac = Math.max(0.0f, Math.min(1.0f, 1.0f - typedArrayObtainStyledAttributes.getFloat(R.styleable.DragSortListView_slide_shuffle_speed, 0.75f)));
            this.mAnimate = this.mSlideRegionFrac > 0.0f;
            setDragScrollStart(typedArrayObtainStyledAttributes.getFloat(R.styleable.DragSortListView_drag_scroll_start, this.mDragUpScrollStartFrac));
            this.mMaxScrollSpeed = typedArrayObtainStyledAttributes.getFloat(R.styleable.DragSortListView_max_drag_scroll_speed, this.mMaxScrollSpeed);
            int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.DragSortListView_remove_animation_duration, 150);
            int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.DragSortListView_drop_animation_duration, 150);
            if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.DragSortListView_use_default_controller, true)) {
                boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DragSortListView_remove_enabled, false);
                int i5 = typedArrayObtainStyledAttributes.getInt(R.styleable.DragSortListView_remove_mode, 1);
                boolean z2 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DragSortListView_sort_enabled, true);
                int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.DragSortListView_drag_start_mode, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.DragSortListView_drag_handle_id, 0);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.DragSortListView_fling_handle_id, 0);
                int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.DragSortListView_click_remove_id, 0);
                int color = typedArrayObtainStyledAttributes.getColor(R.styleable.DragSortListView_float_background_color, ViewCompat.MEASURED_STATE_MASK);
                DragSortController dragSortController = new DragSortController(this, resourceId, i6, i5, resourceId3, resourceId2);
                dragSortController.setRemoveEnabled(z);
                dragSortController.setSortEnabled(z2);
                dragSortController.setBackgroundColor(color);
                this.mFloatViewManager = dragSortController;
                setOnTouchListener(dragSortController);
            }
            typedArrayObtainStyledAttributes.recycle();
            i = i4;
            i2 = i3;
        }
        this.mDragScroller = new DragScroller();
        if (i2 > 0) {
            this.mRemoveAnimator = new RemoveAnimator(0.5f, i2);
        }
        if (i > 0) {
            this.mDropAnimator = new DropAnimator(0.5f, i);
        }
        this.mCancelEvent = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        this.mObserver = new DataSetObserver() { // from class: com.behance.sdk.mobeta.android.dslv.DragSortListView.2
            private void cancel() {
                if (DragSortListView.this.mDragState == 4) {
                    DragSortListView.this.cancelDrag();
                }
            }

            @Override // android.database.DataSetObserver
            public void onChanged() {
                cancel();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                cancel();
            }
        };
    }

    public void setFloatAlpha(float f2) {
        this.mCurrFloatAlpha = f2;
    }

    public float getFloatAlpha() {
        return this.mCurrFloatAlpha;
    }

    public void setMaxScrollSpeed(float f2) {
        this.mMaxScrollSpeed = f2;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != null) {
            this.mAdapterWrapper = new AdapterWrapper(listAdapter);
            listAdapter.registerDataSetObserver(this.mObserver);
            if (listAdapter instanceof DropListener) {
                setDropListener((DropListener) listAdapter);
            }
            if (listAdapter instanceof DragListener) {
                setDragListener((DragListener) listAdapter);
            }
            if (listAdapter instanceof RemoveListener) {
                setRemoveListener((RemoveListener) listAdapter);
            }
        } else {
            this.mAdapterWrapper = null;
        }
        super.setAdapter((ListAdapter) this.mAdapterWrapper);
    }

    public ListAdapter getInputAdapter() {
        if (this.mAdapterWrapper == null) {
            return null;
        }
        return this.mAdapterWrapper.getAdapter();
    }

    class AdapterWrapper extends BaseAdapter {
        private ListAdapter mAdapter;

        public AdapterWrapper(ListAdapter listAdapter) {
            this.mAdapter = listAdapter;
            this.mAdapter.registerDataSetObserver(new DataSetObserver() { // from class: com.behance.sdk.mobeta.android.dslv.DragSortListView.AdapterWrapper.1
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    AdapterWrapper.this.notifyDataSetChanged();
                }

                @Override // android.database.DataSetObserver
                public void onInvalidated() {
                    AdapterWrapper.this.notifyDataSetInvalidated();
                }
            });
        }

        public ListAdapter getAdapter() {
            return this.mAdapter;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.mAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.mAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mAdapter.getCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return this.mAdapter.areAllItemsEnabled();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return this.mAdapter.isEnabled(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return this.mAdapter.getItemViewType(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return this.mAdapter.getViewTypeCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return this.mAdapter.hasStableIds();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.mAdapter.isEmpty();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            DragSortItemView dragSortItemView;
            DragSortItemView dragSortItemView2;
            if (view != null) {
                dragSortItemView2 = (DragSortItemView) view;
                View childAt = dragSortItemView2.getChildAt(0);
                View view2 = this.mAdapter.getView(i, childAt, DragSortListView.this);
                if (view2 != childAt) {
                    if (childAt != null) {
                        dragSortItemView2.removeViewAt(0);
                    }
                    dragSortItemView2.addView(view2);
                }
            } else {
                View view3 = this.mAdapter.getView(i, null, DragSortListView.this);
                if (view3 instanceof Checkable) {
                    dragSortItemView = new DragSortItemViewCheckable(DragSortListView.this.getContext());
                } else {
                    dragSortItemView = new DragSortItemView(DragSortListView.this.getContext());
                }
                dragSortItemView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
                dragSortItemView.addView(view3);
                dragSortItemView2 = dragSortItemView;
            }
            DragSortListView.this.adjustItem(DragSortListView.this.getHeaderViewsCount() + i, dragSortItemView2, true);
            return dragSortItemView2;
        }
    }

    private void drawDivider(int i, Canvas canvas) {
        ViewGroup viewGroup;
        int bottom;
        int top;
        Drawable divider = getDivider();
        int dividerHeight = getDividerHeight();
        if (divider != null && dividerHeight != 0 && (viewGroup = (ViewGroup) getChildAt(i - getFirstVisiblePosition())) != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int height = viewGroup.getChildAt(0).getHeight();
            if (i > this.mSrcPos) {
                top = height + viewGroup.getTop();
                bottom = top + dividerHeight;
            } else {
                bottom = viewGroup.getBottom() - height;
                top = bottom - dividerHeight;
            }
            canvas.save();
            canvas.clipRect(paddingLeft, top, width, bottom);
            divider.setBounds(paddingLeft, top, width, bottom);
            divider.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f2;
        super.dispatchDraw(canvas);
        if (this.mDragState != 0) {
            if (this.mFirstExpPos != this.mSrcPos) {
                drawDivider(this.mFirstExpPos, canvas);
            }
            if (this.mSecondExpPos != this.mFirstExpPos && this.mSecondExpPos != this.mSrcPos) {
                drawDivider(this.mSecondExpPos, canvas);
            }
        }
        if (this.mFloatView != null) {
            int width = this.mFloatView.getWidth();
            int height = this.mFloatView.getHeight();
            int i = this.mFloatLoc.x;
            int width2 = getWidth();
            if (i < 0) {
                i = -i;
            }
            if (i < width2) {
                float f3 = (width2 - i) / width2;
                f2 = f3 * f3;
            } else {
                f2 = 0.0f;
            }
            int i2 = (int) (f2 * 255.0f * this.mCurrFloatAlpha);
            canvas.save();
            canvas.translate(this.mFloatLoc.x, this.mFloatLoc.y);
            canvas.clipRect(0, 0, width, height);
            canvas.saveLayerAlpha(0.0f, 0.0f, width, height, i2, 31);
            this.mFloatView.draw(canvas);
            canvas.restore();
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getItemHeight(int i) {
        View childAt = getChildAt(i - getFirstVisiblePosition());
        return childAt != null ? childAt.getHeight() : calcItemHeight(i, getChildHeight(i));
    }

    class HeightCache {
        private SparseIntArray mMap;
        private int mMaxSize;
        private ArrayList<Integer> mOrder;

        public HeightCache(int i) {
            this.mMap = new SparseIntArray(i);
            this.mOrder = new ArrayList<>(i);
            this.mMaxSize = i;
        }

        public void add(int i, int i2) {
            int i3 = this.mMap.get(i, -1);
            if (i3 != i2) {
                if (i3 == -1) {
                    if (this.mMap.size() == this.mMaxSize) {
                        this.mMap.delete(this.mOrder.remove(0).intValue());
                    }
                } else {
                    this.mOrder.remove(Integer.valueOf(i));
                }
                this.mMap.put(i, i2);
                this.mOrder.add(Integer.valueOf(i));
            }
        }

        public int get(int i) {
            return this.mMap.get(i, -1);
        }

        public void clear() {
            this.mMap.clear();
            this.mOrder.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getShuffleEdge(int i, int i2) {
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        if (i <= headerViewsCount || i >= getCount() - footerViewsCount) {
            return i2;
        }
        int dividerHeight = getDividerHeight();
        int i3 = this.mFloatViewHeight - this.mItemHeightCollapsed;
        int childHeight = getChildHeight(i);
        int itemHeight = getItemHeight(i);
        if (this.mSecondExpPos <= this.mSrcPos) {
            if (i == this.mSecondExpPos && this.mFirstExpPos != this.mSecondExpPos) {
                if (i == this.mSrcPos) {
                    i2 = (i2 + itemHeight) - this.mFloatViewHeight;
                } else {
                    i2 = ((itemHeight - childHeight) + i2) - i3;
                }
            } else if (i > this.mSecondExpPos && i <= this.mSrcPos) {
                i2 -= i3;
            }
        } else if (i > this.mSrcPos && i <= this.mFirstExpPos) {
            i2 += i3;
        } else if (i == this.mSecondExpPos && this.mFirstExpPos != this.mSecondExpPos) {
            i2 += itemHeight - childHeight;
        }
        if (i <= this.mSrcPos) {
            return (((this.mFloatViewHeight - dividerHeight) - getChildHeight(i - 1)) / 2) + i2;
        }
        return (((childHeight - dividerHeight) - this.mFloatViewHeight) / 2) + i2;
    }

    private boolean updatePositions() {
        int shuffleEdge;
        int count;
        int i;
        int firstVisiblePosition = getFirstVisiblePosition();
        int childCount = this.mFirstExpPos;
        View childAt = getChildAt(childCount - firstVisiblePosition);
        if (childAt == null) {
            childCount = firstVisiblePosition + (getChildCount() / 2);
            childAt = getChildAt(childCount - firstVisiblePosition);
        }
        int top = childAt.getTop();
        int height = childAt.getHeight();
        int shuffleEdge2 = getShuffleEdge(childCount, top);
        int dividerHeight = getDividerHeight();
        if (this.mFloatViewMid >= shuffleEdge2) {
            int count2 = getCount();
            int itemHeight = height;
            int i2 = top;
            shuffleEdge = shuffleEdge2;
            count = childCount;
            i = shuffleEdge2;
            while (true) {
                if (count < count2) {
                    if (count == count2 - 1) {
                        shuffleEdge = i2 + dividerHeight + itemHeight;
                        break;
                    }
                    i2 += dividerHeight + itemHeight;
                    itemHeight = getItemHeight(count + 1);
                    shuffleEdge = getShuffleEdge(count + 1, i2);
                    if (this.mFloatViewMid < shuffleEdge) {
                        break;
                    }
                    count++;
                    i = shuffleEdge;
                } else {
                    break;
                }
            }
        } else {
            int i3 = top;
            shuffleEdge = shuffleEdge2;
            count = childCount;
            i = shuffleEdge2;
            while (true) {
                if (count < 0) {
                    break;
                }
                count--;
                int itemHeight2 = getItemHeight(count);
                if (count == 0) {
                    shuffleEdge = (i3 - dividerHeight) - itemHeight2;
                    break;
                }
                i3 -= itemHeight2 + dividerHeight;
                shuffleEdge = getShuffleEdge(count, i3);
                if (this.mFloatViewMid >= shuffleEdge) {
                    break;
                }
                i = shuffleEdge;
            }
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        int i4 = this.mFirstExpPos;
        int i5 = this.mSecondExpPos;
        float f2 = this.mSlideFrac;
        if (this.mAnimate) {
            int iAbs = Math.abs(shuffleEdge - i);
            if (this.mFloatViewMid >= shuffleEdge) {
                int i6 = i;
                i = shuffleEdge;
                shuffleEdge = i6;
            }
            int i7 = (int) (iAbs * this.mSlideRegionFrac * 0.5f);
            float f3 = i7;
            int i8 = i + i7;
            int i9 = shuffleEdge - i7;
            if (this.mFloatViewMid < i8) {
                this.mFirstExpPos = count - 1;
                this.mSecondExpPos = count;
                this.mSlideFrac = ((i8 - this.mFloatViewMid) * 0.5f) / f3;
            } else if (this.mFloatViewMid < i9) {
                this.mFirstExpPos = count;
                this.mSecondExpPos = count;
            } else {
                this.mFirstExpPos = count;
                this.mSecondExpPos = count + 1;
                this.mSlideFrac = (1.0f + ((shuffleEdge - this.mFloatViewMid) / f3)) * 0.5f;
            }
        } else {
            this.mFirstExpPos = count;
            this.mSecondExpPos = count;
        }
        if (this.mFirstExpPos < headerViewsCount) {
            this.mFirstExpPos = headerViewsCount;
            this.mSecondExpPos = headerViewsCount;
            count = headerViewsCount;
        } else if (this.mSecondExpPos >= getCount() - footerViewsCount) {
            count = (getCount() - footerViewsCount) - 1;
            this.mFirstExpPos = count;
            this.mSecondExpPos = count;
        }
        boolean z = (this.mFirstExpPos == i4 && this.mSecondExpPos == i5 && this.mSlideFrac == f2) ? false : true;
        if (count == this.mFloatPos) {
            return z;
        }
        if (this.mDragListener != null) {
            this.mDragListener.drag(this.mFloatPos - headerViewsCount, count - headerViewsCount);
        }
        this.mFloatPos = count;
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mTrackDragSort) {
            this.mDragSortTracker.appendState();
        }
    }

    class SmoothAnimator implements Runnable {
        private float mA;
        private float mAlpha;
        private float mB;
        private float mC;
        private boolean mCanceled;
        private float mD;
        private float mDurationF;
        protected long mStartTime;

        public SmoothAnimator(float f2, int i) {
            this.mAlpha = f2;
            this.mDurationF = i;
            float f3 = 1.0f / ((this.mAlpha * 2.0f) * (1.0f - this.mAlpha));
            this.mD = f3;
            this.mA = f3;
            this.mB = this.mAlpha / ((this.mAlpha - 1.0f) * 2.0f);
            this.mC = 1.0f / (1.0f - this.mAlpha);
        }

        public float transform(float f2) {
            if (f2 < this.mAlpha) {
                return this.mA * f2 * f2;
            }
            if (f2 < 1.0f - this.mAlpha) {
                return this.mB + (this.mC * f2);
            }
            return 1.0f - ((this.mD * (f2 - 1.0f)) * (f2 - 1.0f));
        }

        public void start() {
            this.mStartTime = SystemClock.uptimeMillis();
            this.mCanceled = false;
            onStart();
            DragSortListView.this.post(this);
        }

        public void cancel() {
            this.mCanceled = true;
        }

        public void onStart() {
        }

        public void onUpdate(float f2, float f3) {
        }

        public void onStop() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.mCanceled) {
                float fUptimeMillis = (SystemClock.uptimeMillis() - this.mStartTime) / this.mDurationF;
                if (fUptimeMillis >= 1.0f) {
                    onUpdate(1.0f, 1.0f);
                    onStop();
                } else {
                    onUpdate(fUptimeMillis, transform(fUptimeMillis));
                    DragSortListView.this.post(this);
                }
            }
        }
    }

    class LiftAnimator extends SmoothAnimator {
        private float mFinalDragDeltaY;
        private float mInitDragDeltaY;

        public LiftAnimator(float f2, int i) {
            super(f2, i);
        }

        @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStart() {
            this.mInitDragDeltaY = DragSortListView.this.mDragDeltaY;
            this.mFinalDragDeltaY = DragSortListView.this.mFloatViewHeightHalf;
        }

        @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onUpdate(float f2, float f3) {
            if (DragSortListView.this.mDragState != 4) {
                cancel();
                return;
            }
            DragSortListView.this.mDragDeltaY = (int) ((this.mFinalDragDeltaY * f3) + ((1.0f - f3) * this.mInitDragDeltaY));
            DragSortListView.this.mFloatLoc.y = DragSortListView.this.mY - DragSortListView.this.mDragDeltaY;
            DragSortListView.this.doDragFloatView(true);
        }
    }

    class DropAnimator extends SmoothAnimator {
        private int mDropPos;
        private float mInitDeltaX;
        private float mInitDeltaY;
        private int srcPos;

        public DropAnimator(float f2, int i) {
            super(f2, i);
        }

        @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStart() {
            this.mDropPos = DragSortListView.this.mFloatPos;
            this.srcPos = DragSortListView.this.mSrcPos;
            DragSortListView.this.mDragState = 2;
            this.mInitDeltaY = DragSortListView.this.mFloatLoc.y - getTargetY();
            this.mInitDeltaX = DragSortListView.this.mFloatLoc.x - DragSortListView.this.getPaddingLeft();
        }

        private int getTargetY() {
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            int dividerHeight = (DragSortListView.this.mItemHeightCollapsed + DragSortListView.this.getDividerHeight()) / 2;
            View childAt = DragSortListView.this.getChildAt(this.mDropPos - firstVisiblePosition);
            if (childAt != null) {
                if (this.mDropPos == this.srcPos) {
                    return childAt.getTop();
                }
                if (this.mDropPos >= this.srcPos) {
                    return (childAt.getBottom() + dividerHeight) - DragSortListView.this.mFloatViewHeight;
                }
                return childAt.getTop() - dividerHeight;
            }
            cancel();
            return -1;
        }

        @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onUpdate(float f2, float f3) {
            int targetY = getTargetY();
            int paddingLeft = DragSortListView.this.getPaddingLeft();
            float f4 = DragSortListView.this.mFloatLoc.y - targetY;
            float f5 = DragSortListView.this.mFloatLoc.x - paddingLeft;
            float f6 = 1.0f - f3;
            if (f6 < Math.abs(f4 / this.mInitDeltaY) || f6 < Math.abs(f5 / this.mInitDeltaX)) {
                DragSortListView.this.mFloatLoc.y = targetY + ((int) (this.mInitDeltaY * f6));
                DragSortListView.this.mFloatLoc.x = DragSortListView.this.getPaddingLeft() + ((int) (this.mInitDeltaX * f6));
                DragSortListView.this.doDragFloatView(true);
            }
        }

        @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStop() {
            DragSortListView.this.dropFloatView();
        }
    }

    class RemoveAnimator extends SmoothAnimator {
        private int mFirstChildHeight;
        private int mFirstPos;
        private float mFirstStartBlank;
        private float mFloatLocX;
        private int mSecondChildHeight;
        private int mSecondPos;
        private float mSecondStartBlank;

        public RemoveAnimator(float f2, int i) {
            super(f2, i);
            this.mFirstChildHeight = -1;
            this.mSecondChildHeight = -1;
        }

        @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStart() {
            this.mFirstChildHeight = -1;
            this.mSecondChildHeight = -1;
            this.mFirstPos = DragSortListView.this.mFirstExpPos;
            this.mSecondPos = DragSortListView.this.mSecondExpPos;
            DragSortListView.this.mDragState = 1;
            this.mFloatLocX = DragSortListView.this.mFloatLoc.x;
            if (!DragSortListView.this.mUseRemoveVelocity) {
                DragSortListView.this.destroyFloatView();
                return;
            }
            float width = DragSortListView.this.getWidth() * 2.0f;
            if (DragSortListView.this.mRemoveVelocityX == 0.0f) {
                DragSortListView.this.mRemoveVelocityX = (this.mFloatLocX >= 0.0f ? 1 : -1) * width;
                return;
            }
            float f2 = width * 2.0f;
            if (DragSortListView.this.mRemoveVelocityX < 0.0f && DragSortListView.this.mRemoveVelocityX > (-f2)) {
                DragSortListView.this.mRemoveVelocityX = -f2;
            } else if (DragSortListView.this.mRemoveVelocityX > 0.0f && DragSortListView.this.mRemoveVelocityX < f2) {
                DragSortListView.this.mRemoveVelocityX = f2;
            }
        }

        @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onUpdate(float f2, float f3) {
            View childAt;
            float f4 = 1.0f - f3;
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            View childAt2 = DragSortListView.this.getChildAt(this.mFirstPos - firstVisiblePosition);
            if (DragSortListView.this.mUseRemoveVelocity) {
                float fUptimeMillis = (SystemClock.uptimeMillis() - this.mStartTime) / 1000.0f;
                if (fUptimeMillis != 0.0f) {
                    float f5 = DragSortListView.this.mRemoveVelocityX * fUptimeMillis;
                    int width = DragSortListView.this.getWidth();
                    DragSortListView.this.mRemoveVelocityX = ((DragSortListView.this.mRemoveVelocityX > 0.0f ? 1 : -1) * fUptimeMillis * width) + DragSortListView.this.mRemoveVelocityX;
                    this.mFloatLocX += f5;
                    DragSortListView.this.mFloatLoc.x = (int) this.mFloatLocX;
                    if (this.mFloatLocX < width && this.mFloatLocX > (-width)) {
                        this.mStartTime = SystemClock.uptimeMillis();
                        DragSortListView.this.doDragFloatView(true);
                        return;
                    }
                } else {
                    return;
                }
            }
            if (childAt2 != null) {
                if (this.mFirstChildHeight == -1) {
                    this.mFirstChildHeight = DragSortListView.this.getChildHeight(this.mFirstPos, childAt2, false);
                    this.mFirstStartBlank = childAt2.getHeight() - this.mFirstChildHeight;
                }
                int iMax = Math.max((int) (this.mFirstStartBlank * f4), 1);
                ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                layoutParams.height = iMax + this.mFirstChildHeight;
                childAt2.setLayoutParams(layoutParams);
            }
            if (this.mSecondPos != this.mFirstPos && (childAt = DragSortListView.this.getChildAt(this.mSecondPos - firstVisiblePosition)) != null) {
                if (this.mSecondChildHeight == -1) {
                    this.mSecondChildHeight = DragSortListView.this.getChildHeight(this.mSecondPos, childAt, false);
                    this.mSecondStartBlank = childAt.getHeight() - this.mSecondChildHeight;
                }
                int iMax2 = Math.max((int) (this.mSecondStartBlank * f4), 1);
                ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
                layoutParams2.height = iMax2 + this.mSecondChildHeight;
                childAt.setLayoutParams(layoutParams2);
            }
        }

        @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStop() {
            DragSortListView.this.doRemoveItem();
        }
    }

    public void removeItem(int i) {
        this.mUseRemoveVelocity = false;
        removeItem(i, 0.0f);
    }

    public void removeItem(int i, float f2) {
        if (this.mDragState == 0 || this.mDragState == 4) {
            if (this.mDragState == 0) {
                this.mSrcPos = getHeaderViewsCount() + i;
                this.mFirstExpPos = this.mSrcPos;
                this.mSecondExpPos = this.mSrcPos;
                this.mFloatPos = this.mSrcPos;
                View childAt = getChildAt(this.mSrcPos - getFirstVisiblePosition());
                if (childAt != null) {
                    childAt.setVisibility(4);
                }
            }
            this.mDragState = 1;
            this.mRemoveVelocityX = f2;
            if (this.mInTouchEvent) {
                switch (this.mCancelMethod) {
                    case 1:
                        super.onTouchEvent(this.mCancelEvent);
                        break;
                    case 2:
                        super.onInterceptTouchEvent(this.mCancelEvent);
                        break;
                }
            }
            if (this.mRemoveAnimator != null) {
                this.mRemoveAnimator.start();
            } else {
                doRemoveItem(i);
            }
        }
    }

    public void moveItem(int i, int i2) {
        if (this.mDropListener != null) {
            int count = getInputAdapter().getCount();
            if (i >= 0 && i < count && i2 >= 0 && i2 < count) {
                this.mDropListener.drop(i, i2);
            }
        }
    }

    public void cancelDrag() {
        if (this.mDragState == 4) {
            this.mDragScroller.stopScrolling(true);
            destroyFloatView();
            clearPositions();
            adjustAllItems();
            if (this.mInTouchEvent) {
                this.mDragState = 3;
            } else {
                this.mDragState = 0;
            }
        }
    }

    private void clearPositions() {
        this.mSrcPos = -1;
        this.mFirstExpPos = -1;
        this.mSecondExpPos = -1;
        this.mFloatPos = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dropFloatView() {
        this.mDragState = 2;
        if (this.mDropListener != null && this.mFloatPos >= 0 && this.mFloatPos < getCount()) {
            int headerViewsCount = getHeaderViewsCount();
            this.mDropListener.drop(this.mSrcPos - headerViewsCount, this.mFloatPos - headerViewsCount);
        }
        destroyFloatView();
        adjustOnReorder();
        clearPositions();
        adjustAllItems();
        if (this.mInTouchEvent) {
            this.mDragState = 3;
        } else {
            this.mDragState = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doRemoveItem() {
        doRemoveItem(this.mSrcPos - getHeaderViewsCount());
    }

    private void doRemoveItem(int i) {
        this.mDragState = 1;
        if (this.mRemoveListener != null) {
            this.mRemoveListener.remove(i);
        }
        destroyFloatView();
        adjustOnReorder();
        clearPositions();
        if (this.mInTouchEvent) {
            this.mDragState = 3;
        } else {
            this.mDragState = 0;
        }
    }

    private void adjustOnReorder() {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (this.mSrcPos < firstVisiblePosition) {
            View childAt = getChildAt(0);
            setSelectionFromTop(firstVisiblePosition - 1, (childAt != null ? childAt.getTop() : 0) - getPaddingTop());
        }
    }

    public boolean stopDrag(boolean z) {
        this.mUseRemoveVelocity = false;
        return stopDrag(z, 0.0f);
    }

    public boolean stopDragWithVelocity(boolean z, float f2) {
        this.mUseRemoveVelocity = true;
        return stopDrag(z, f2);
    }

    public boolean stopDrag(boolean z, float f2) {
        if (this.mFloatView != null) {
            this.mDragScroller.stopScrolling(true);
            if (z) {
                removeItem(this.mSrcPos - getHeaderViewsCount(), f2);
            } else if (this.mDropAnimator != null) {
                this.mDropAnimator.start();
            } else {
                dropFloatView();
            }
            if (!this.mTrackDragSort) {
                return true;
            }
            this.mDragSortTracker.stopTracking();
            return true;
        }
        return false;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.mIgnoreTouchEvent) {
            this.mIgnoreTouchEvent = false;
            return false;
        }
        if (!this.mDragEnabled) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z2 = this.mLastCallWasIntercept;
        this.mLastCallWasIntercept = false;
        if (!z2) {
            saveTouchCoords(motionEvent);
        }
        if (this.mDragState == 4) {
            onDragTouchEvent(motionEvent);
            return true;
        }
        if (this.mDragState == 0 && super.onTouchEvent(motionEvent)) {
            z = true;
        }
        switch (motionEvent.getAction() & 255) {
            case 1:
            case 3:
                doActionUpOrCancel();
                return z;
            case 2:
            default:
                if (z) {
                    this.mCancelMethod = 1;
                    return z;
                }
                return z;
        }
    }

    private void doActionUpOrCancel() {
        this.mCancelMethod = 0;
        this.mInTouchEvent = false;
        if (this.mDragState == 3) {
            this.mDragState = 0;
        }
        this.mCurrFloatAlpha = this.mFloatAlpha;
        this.mListViewIntercepted = false;
        this.mChildHeightCache.clear();
    }

    private void saveTouchCoords(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            this.mLastY = this.mY;
        }
        this.mX = (int) motionEvent.getX();
        this.mY = (int) motionEvent.getY();
        if (action == 0) {
            this.mLastY = this.mY;
        }
    }

    public boolean listViewIntercepted() {
        return this.mListViewIntercepted;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (!this.mDragEnabled) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        saveTouchCoords(motionEvent);
        this.mLastCallWasIntercept = true;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            if (this.mDragState != 0) {
                this.mIgnoreTouchEvent = true;
                return true;
            }
            this.mInTouchEvent = true;
        }
        if (this.mFloatView == null) {
            if (super.onInterceptTouchEvent(motionEvent)) {
                this.mListViewIntercepted = true;
                z = true;
            } else {
                z = false;
            }
            switch (action) {
                case 1:
                case 3:
                    doActionUpOrCancel();
                    break;
                case 2:
                default:
                    if (z) {
                        this.mCancelMethod = 1;
                    } else {
                        this.mCancelMethod = 2;
                    }
                    break;
            }
        } else {
            z = true;
        }
        if (action == 1 || action == 3) {
            this.mInTouchEvent = false;
        }
        return z;
    }

    public void setDragScrollStart(float f2) {
        setDragScrollStarts(f2, f2);
    }

    public void setDragScrollStarts(float f2, float f3) {
        if (f3 > 0.5f) {
            this.mDragDownScrollStartFrac = 0.5f;
        } else {
            this.mDragDownScrollStartFrac = f3;
        }
        if (f2 > 0.5f) {
            this.mDragUpScrollStartFrac = 0.5f;
        } else {
            this.mDragUpScrollStartFrac = f2;
        }
        if (getHeight() != 0) {
            updateScrollStarts();
        }
    }

    private void continueDrag(int i, int i2) {
        this.mFloatLoc.x = i - this.mDragDeltaX;
        this.mFloatLoc.y = i2 - this.mDragDeltaY;
        doDragFloatView(true);
        int iMin = Math.min(i2, this.mFloatViewMid + this.mFloatViewHeightHalf);
        int iMax = Math.max(i2, this.mFloatViewMid - this.mFloatViewHeightHalf);
        int scrollDir = this.mDragScroller.getScrollDir();
        if (iMin > this.mLastY && iMin > this.mDownScrollStartY && scrollDir != 1) {
            if (scrollDir != -1) {
                this.mDragScroller.stopScrolling(true);
            }
            this.mDragScroller.startScrolling(1);
        } else if (iMax < this.mLastY && iMax < this.mUpScrollStartY && scrollDir != 0) {
            if (scrollDir != -1) {
                this.mDragScroller.stopScrolling(true);
            }
            this.mDragScroller.startScrolling(0);
        } else if (iMax >= this.mUpScrollStartY && iMin <= this.mDownScrollStartY && this.mDragScroller.isScrolling()) {
            this.mDragScroller.stopScrolling(true);
        }
    }

    private void updateScrollStarts() {
        int paddingTop = getPaddingTop();
        float height = (getHeight() - paddingTop) - getPaddingBottom();
        this.mUpScrollStartYF = paddingTop + (this.mDragUpScrollStartFrac * height);
        this.mDownScrollStartYF = (height * (1.0f - this.mDragDownScrollStartFrac)) + paddingTop;
        this.mUpScrollStartY = (int) this.mUpScrollStartYF;
        this.mDownScrollStartY = (int) this.mDownScrollStartYF;
        this.mDragUpScrollHeight = this.mUpScrollStartYF - paddingTop;
        this.mDragDownScrollHeight = (paddingTop + r1) - this.mDownScrollStartYF;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        updateScrollStarts();
    }

    private void adjustAllItems() {
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int iMin = Math.min(lastVisiblePosition - firstVisiblePosition, ((getCount() - 1) - getFooterViewsCount()) - firstVisiblePosition);
        for (int iMax = Math.max(0, getHeaderViewsCount() - firstVisiblePosition); iMax <= iMin; iMax++) {
            View childAt = getChildAt(iMax);
            if (childAt != null) {
                adjustItem(firstVisiblePosition + iMax, childAt, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustItem(int i, View view, boolean z) {
        int iCalcItemHeight;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i != this.mSrcPos && i != this.mFirstExpPos && i != this.mSecondExpPos) {
            iCalcItemHeight = -2;
        } else {
            iCalcItemHeight = calcItemHeight(i, view, z);
        }
        if (iCalcItemHeight != layoutParams.height) {
            layoutParams.height = iCalcItemHeight;
            view.setLayoutParams(layoutParams);
        }
        if (i == this.mFirstExpPos || i == this.mSecondExpPos) {
            if (i < this.mSrcPos) {
                ((DragSortItemView) view).setGravity(80);
            } else if (i > this.mSrcPos) {
                ((DragSortItemView) view).setGravity(48);
            }
        }
        int visibility = view.getVisibility();
        int i2 = 0;
        if (i == this.mSrcPos && this.mFloatView != null) {
            i2 = 4;
        }
        if (i2 != visibility) {
            view.setVisibility(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getChildHeight(int i) {
        View view;
        if (i == this.mSrcPos) {
            return 0;
        }
        View childAt = getChildAt(i - getFirstVisiblePosition());
        if (childAt != null) {
            return getChildHeight(i, childAt, false);
        }
        int i2 = this.mChildHeightCache.get(i);
        if (i2 == -1) {
            ListAdapter adapter = getAdapter();
            int itemViewType = adapter.getItemViewType(i);
            int viewTypeCount = adapter.getViewTypeCount();
            if (viewTypeCount != this.mSampleViewTypes.length) {
                this.mSampleViewTypes = new View[viewTypeCount];
            }
            if (itemViewType >= 0) {
                if (this.mSampleViewTypes[itemViewType] == null) {
                    view = adapter.getView(i, null, this);
                    this.mSampleViewTypes[itemViewType] = view;
                } else {
                    view = adapter.getView(i, this.mSampleViewTypes[itemViewType], this);
                }
            } else {
                view = adapter.getView(i, null, this);
            }
            int childHeight = getChildHeight(i, view, true);
            this.mChildHeightCache.add(i, childHeight);
            return childHeight;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getChildHeight(int i, View view, boolean z) {
        if (i == this.mSrcPos) {
            return 0;
        }
        if (i >= getHeaderViewsCount() && i < getCount() - getFooterViewsCount()) {
            view = ((ViewGroup) view).getChildAt(0);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && layoutParams.height > 0) {
            return layoutParams.height;
        }
        int height = view.getHeight();
        if (height == 0 || z) {
            measureItem(view);
            return view.getMeasuredHeight();
        }
        return height;
    }

    private int calcItemHeight(int i, View view, boolean z) {
        return calcItemHeight(i, getChildHeight(i, view, z));
    }

    private int calcItemHeight(int i, int i2) {
        boolean z = this.mAnimate && this.mFirstExpPos != this.mSecondExpPos;
        int i3 = this.mFloatViewHeight - this.mItemHeightCollapsed;
        int i4 = (int) (this.mSlideFrac * i3);
        if (i == this.mSrcPos) {
            if (this.mSrcPos == this.mFirstExpPos) {
                if (z) {
                    return i4 + this.mItemHeightCollapsed;
                }
                return this.mFloatViewHeight;
            }
            if (this.mSrcPos == this.mSecondExpPos) {
                return this.mFloatViewHeight - i4;
            }
            return this.mItemHeightCollapsed;
        }
        if (i == this.mFirstExpPos) {
            if (z) {
                return i2 + i4;
            }
            return i2 + i3;
        }
        if (i == this.mSecondExpPos) {
            return (i2 + i3) - i4;
        }
        return i2;
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.mBlockLayoutRequests) {
            super.requestLayout();
        }
    }

    private int adjustScroll(int i, View view, int i2, int i3) {
        int i4;
        int i5;
        int childHeight = getChildHeight(i);
        int height = view.getHeight();
        int iCalcItemHeight = calcItemHeight(i, childHeight);
        if (i != this.mSrcPos) {
            i5 = height - childHeight;
            i4 = iCalcItemHeight - childHeight;
        } else {
            i4 = iCalcItemHeight;
            i5 = height;
        }
        int i6 = this.mFloatViewHeight;
        if (this.mSrcPos != this.mFirstExpPos && this.mSrcPos != this.mSecondExpPos) {
            i6 -= this.mItemHeightCollapsed;
        }
        if (i <= i2) {
            if (i > this.mFirstExpPos) {
                return (i6 - i4) + 0;
            }
        } else {
            if (i == i3) {
                if (i <= this.mFirstExpPos) {
                    return (i5 - i6) + 0;
                }
                if (i == this.mSecondExpPos) {
                    return (height - iCalcItemHeight) + 0;
                }
                return 0 + i5;
            }
            if (i <= this.mFirstExpPos) {
                return 0 - i6;
            }
            if (i == this.mSecondExpPos) {
                return 0 - i4;
            }
        }
        return 0;
    }

    private void measureItem(View view) {
        int iMakeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2);
            view.setLayoutParams(layoutParams);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, getListPaddingLeft() + getListPaddingRight(), layoutParams.width);
        if (layoutParams.height > 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, iMakeMeasureSpec);
    }

    private void measureFloatView() {
        if (this.mFloatView != null) {
            measureItem(this.mFloatView);
            this.mFloatViewHeight = this.mFloatView.getMeasuredHeight();
            this.mFloatViewHeightHalf = this.mFloatViewHeight / 2;
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mFloatView != null) {
            if (this.mFloatView.isLayoutRequested()) {
                measureFloatView();
            }
            this.mFloatViewOnMeasured = true;
        }
        this.mWidthMeasureSpec = i;
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    protected void layoutChildren() {
        super.layoutChildren();
        if (this.mFloatView != null) {
            if (this.mFloatView.isLayoutRequested() && !this.mFloatViewOnMeasured) {
                measureFloatView();
            }
            this.mFloatView.layout(0, 0, this.mFloatView.getMeasuredWidth(), this.mFloatView.getMeasuredHeight());
            this.mFloatViewOnMeasured = false;
        }
    }

    protected boolean onDragTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 1:
                if (this.mDragState == 4) {
                    stopDrag(false);
                }
                doActionUpOrCancel();
                break;
            case 2:
                continueDrag((int) motionEvent.getX(), (int) motionEvent.getY());
                break;
            case 3:
                if (this.mDragState == 4) {
                    cancelDrag();
                }
                doActionUpOrCancel();
                break;
        }
        return true;
    }

    public boolean startDrag(int i, int i2, int i3, int i4) {
        View viewOnCreateFloatView;
        if (!this.mInTouchEvent || this.mFloatViewManager == null || (viewOnCreateFloatView = this.mFloatViewManager.onCreateFloatView(i)) == null) {
            return false;
        }
        return startDrag(i, viewOnCreateFloatView, i2, i3, i4);
    }

    public boolean startDrag(int i, View view, int i2, int i3, int i4) {
        if (this.mDragState != 0 || !this.mInTouchEvent || this.mFloatView != null || view == null || !this.mDragEnabled) {
            return false;
        }
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        int headerViewsCount = getHeaderViewsCount() + i;
        this.mFirstExpPos = headerViewsCount;
        this.mSecondExpPos = headerViewsCount;
        this.mSrcPos = headerViewsCount;
        this.mFloatPos = headerViewsCount;
        this.mDragState = 4;
        this.mDragFlags = 0;
        this.mDragFlags |= i2;
        this.mFloatView = view;
        measureFloatView();
        this.mDragDeltaX = i3;
        this.mDragDeltaY = i4;
        this.mFloatLoc.x = this.mX - this.mDragDeltaX;
        this.mFloatLoc.y = this.mY - this.mDragDeltaY;
        View childAt = getChildAt(this.mSrcPos - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setVisibility(4);
        }
        if (this.mTrackDragSort) {
            this.mDragSortTracker.startTracking();
        }
        switch (this.mCancelMethod) {
            case 1:
                super.onTouchEvent(this.mCancelEvent);
                break;
            case 2:
                super.onInterceptTouchEvent(this.mCancelEvent);
                break;
        }
        requestLayout();
        if (this.mLiftAnimator == null) {
            return true;
        }
        this.mLiftAnimator.start();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDragFloatView(boolean z) {
        int firstVisiblePosition = getFirstVisiblePosition() + (getChildCount() / 2);
        View childAt = getChildAt(getChildCount() / 2);
        if (childAt != null) {
            doDragFloatView(firstVisiblePosition, childAt, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDragFloatView(int i, View view, boolean z) {
        this.mBlockLayoutRequests = true;
        updateFloatView();
        int i2 = this.mFirstExpPos;
        int i3 = this.mSecondExpPos;
        boolean zUpdatePositions = updatePositions();
        if (zUpdatePositions) {
            adjustAllItems();
            setSelectionFromTop(i, (adjustScroll(i, view, i2, i3) + view.getTop()) - getPaddingTop());
            layoutChildren();
        }
        if (zUpdatePositions || z) {
            invalidate();
        }
        this.mBlockLayoutRequests = false;
    }

    private void updateFloatView() {
        if (this.mFloatViewManager != null) {
            this.mTouchLoc.set(this.mX, this.mY);
            this.mFloatViewManager.onDragFloatView(this.mFloatView, this.mFloatLoc, this.mTouchLoc);
        }
        int i = this.mFloatLoc.x;
        int i2 = this.mFloatLoc.y;
        int paddingLeft = getPaddingLeft();
        if ((this.mDragFlags & 1) == 0 && i > paddingLeft) {
            this.mFloatLoc.x = paddingLeft;
        } else if ((this.mDragFlags & 2) == 0 && i < paddingLeft) {
            this.mFloatLoc.x = paddingLeft;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int paddingTop = getPaddingTop();
        if (firstVisiblePosition < headerViewsCount) {
            paddingTop = getChildAt((headerViewsCount - firstVisiblePosition) - 1).getBottom();
        }
        if ((this.mDragFlags & 8) == 0 && firstVisiblePosition <= this.mSrcPos) {
            paddingTop = Math.max(getChildAt(this.mSrcPos - firstVisiblePosition).getTop(), paddingTop);
        }
        int height = getHeight() - getPaddingBottom();
        if (lastVisiblePosition >= (getCount() - footerViewsCount) - 1) {
            height = getChildAt(((getCount() - footerViewsCount) - 1) - firstVisiblePosition).getBottom();
        }
        if ((this.mDragFlags & 4) == 0 && lastVisiblePosition >= this.mSrcPos) {
            height = Math.min(getChildAt(this.mSrcPos - firstVisiblePosition).getBottom(), height);
        }
        if (i2 < paddingTop) {
            this.mFloatLoc.y = paddingTop;
        } else if (this.mFloatViewHeight + i2 > height) {
            this.mFloatLoc.y = height - this.mFloatViewHeight;
        }
        this.mFloatViewMid = this.mFloatLoc.y + this.mFloatViewHeightHalf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyFloatView() {
        if (this.mFloatView != null) {
            this.mFloatView.setVisibility(8);
            if (this.mFloatViewManager != null) {
                this.mFloatViewManager.onDestroyFloatView(this.mFloatView);
            }
            this.mFloatView = null;
            invalidate();
        }
    }

    public void setFloatViewManager(FloatViewManager floatViewManager) {
        this.mFloatViewManager = floatViewManager;
    }

    public void setDragListener(DragListener dragListener) {
        this.mDragListener = dragListener;
    }

    public void setDragEnabled(boolean z) {
        this.mDragEnabled = z;
    }

    public boolean isDragEnabled() {
        return this.mDragEnabled;
    }

    public void setDropListener(DropListener dropListener) {
        this.mDropListener = dropListener;
    }

    public void setRemoveListener(RemoveListener removeListener) {
        this.mRemoveListener = removeListener;
    }

    public void setDragSortListener(DragSortListener dragSortListener) {
        setDropListener(dragSortListener);
        setDragListener(dragSortListener);
        setRemoveListener(dragSortListener);
    }

    public void setDragScrollProfile(DragScrollProfile dragScrollProfile) {
        if (dragScrollProfile != null) {
            this.mScrollProfile = dragScrollProfile;
        }
    }

    public void moveCheckState(int i, int i2) {
        int i3;
        int i4;
        SparseBooleanArray checkedItemPositions = getCheckedItemPositions();
        if (i2 < i) {
            i3 = i;
            i4 = i2;
        } else {
            i3 = i2;
            i4 = i;
        }
        int i5 = i3 + 1;
        int[] iArr = new int[checkedItemPositions.size()];
        int[] iArr2 = new int[checkedItemPositions.size()];
        int iBuildRunList = buildRunList(checkedItemPositions, i4, i5, iArr, iArr2);
        if (iBuildRunList != 1 || iArr[0] != iArr2[0]) {
            if (i < i2) {
                for (int i6 = 0; i6 != iBuildRunList; i6++) {
                    setItemChecked(rotate(iArr[i6], -1, i4, i5), true);
                    setItemChecked(rotate(iArr2[i6], -1, i4, i5), false);
                }
                return;
            }
            for (int i7 = 0; i7 != iBuildRunList; i7++) {
                setItemChecked(iArr[i7], false);
                setItemChecked(iArr2[i7], true);
            }
        }
    }

    public void removeCheckState(int i) {
        SparseBooleanArray checkedItemPositions = getCheckedItemPositions();
        if (checkedItemPositions.size() != 0) {
            int[] iArr = new int[checkedItemPositions.size()];
            int[] iArr2 = new int[checkedItemPositions.size()];
            int iKeyAt = checkedItemPositions.keyAt(checkedItemPositions.size() - 1) + 1;
            int iBuildRunList = buildRunList(checkedItemPositions, i, iKeyAt, iArr, iArr2);
            for (int i2 = 0; i2 != iBuildRunList; i2++) {
                if (iArr[i2] != i && (iArr2[i2] >= iArr[i2] || iArr2[i2] <= i)) {
                    setItemChecked(rotate(iArr[i2], -1, i, iKeyAt), true);
                }
                setItemChecked(rotate(iArr2[i2], -1, i, iKeyAt), false);
            }
        }
    }

    private static int buildRunList(SparseBooleanArray sparseBooleanArray, int i, int i2, int[] iArr, int[] iArr2) {
        int iKeyAt;
        int iFindFirstSetIndex = findFirstSetIndex(sparseBooleanArray, i, i2);
        if (iFindFirstSetIndex == -1) {
            return 0;
        }
        int iKeyAt2 = sparseBooleanArray.keyAt(iFindFirstSetIndex);
        int i3 = iKeyAt2 + 1;
        int i4 = 0;
        for (int i5 = iFindFirstSetIndex + 1; i5 < sparseBooleanArray.size() && (iKeyAt = sparseBooleanArray.keyAt(i5)) < i2; i5++) {
            if (sparseBooleanArray.valueAt(i5)) {
                if (iKeyAt == i3) {
                    i3++;
                } else {
                    iArr[i4] = iKeyAt2;
                    iArr2[i4] = i3;
                    i4++;
                    i3 = iKeyAt + 1;
                    iKeyAt2 = iKeyAt;
                }
            }
        }
        if (i3 == i2) {
            i3 = i;
        }
        iArr[i4] = iKeyAt2;
        iArr2[i4] = i3;
        int i6 = i4 + 1;
        if (i6 > 1 && iArr[0] == i && iArr2[i6 - 1] == i) {
            iArr[0] = iArr[i6 - 1];
            i6--;
        }
        return i6;
    }

    private static int rotate(int i, int i2, int i3, int i4) {
        int i5 = i4 - i3;
        int i6 = i + i2;
        if (i6 < i3) {
            return i6 + i5;
        }
        if (i6 >= i4) {
            return i6 - i5;
        }
        return i6;
    }

    private static int findFirstSetIndex(SparseBooleanArray sparseBooleanArray, int i, int i2) {
        int size = sparseBooleanArray.size();
        int iInsertionIndexForKey = insertionIndexForKey(sparseBooleanArray, i);
        while (iInsertionIndexForKey < size && sparseBooleanArray.keyAt(iInsertionIndexForKey) < i2 && !sparseBooleanArray.valueAt(iInsertionIndexForKey)) {
            iInsertionIndexForKey++;
        }
        if (iInsertionIndexForKey == size || sparseBooleanArray.keyAt(iInsertionIndexForKey) >= i2) {
            return -1;
        }
        return iInsertionIndexForKey;
    }

    private static int insertionIndexForKey(SparseBooleanArray sparseBooleanArray, int i) {
        int i2;
        int i3 = 0;
        int size = sparseBooleanArray.size();
        while (size - i3 > 0) {
            int i4 = (i3 + size) >> 1;
            if (sparseBooleanArray.keyAt(i4) < i) {
                i2 = i4 + 1;
            } else {
                size = i4;
                i2 = i3;
            }
            i3 = i2;
        }
        return i3;
    }

    class DragScroller implements Runnable {
        public static final int DOWN = 1;
        public static final int STOP = -1;
        public static final int UP = 0;
        private float dt;
        private int dy;
        private boolean mAbort;
        private long mCurrTime;
        private long mPrevTime;
        private float mScrollSpeed;
        private boolean mScrolling = false;
        private int scrollDir;
        private long tStart;

        public boolean isScrolling() {
            return this.mScrolling;
        }

        public int getScrollDir() {
            if (this.mScrolling) {
                return this.scrollDir;
            }
            return -1;
        }

        public DragScroller() {
        }

        public void startScrolling(int i) {
            if (!this.mScrolling) {
                this.mAbort = false;
                this.mScrolling = true;
                this.tStart = SystemClock.uptimeMillis();
                this.mPrevTime = this.tStart;
                this.scrollDir = i;
                DragSortListView.this.post(this);
            }
        }

        public void stopScrolling(boolean z) {
            if (z) {
                DragSortListView.this.removeCallbacks(this);
                this.mScrolling = false;
            } else {
                this.mAbort = true;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mAbort) {
                this.mScrolling = false;
                return;
            }
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            int lastVisiblePosition = DragSortListView.this.getLastVisiblePosition();
            int count = DragSortListView.this.getCount();
            int paddingTop = DragSortListView.this.getPaddingTop();
            int height = (DragSortListView.this.getHeight() - paddingTop) - DragSortListView.this.getPaddingBottom();
            int iMin = Math.min(DragSortListView.this.mY, DragSortListView.this.mFloatViewMid + DragSortListView.this.mFloatViewHeightHalf);
            int iMax = Math.max(DragSortListView.this.mY, DragSortListView.this.mFloatViewMid - DragSortListView.this.mFloatViewHeightHalf);
            if (this.scrollDir == 0) {
                View childAt = DragSortListView.this.getChildAt(0);
                if (childAt == null) {
                    this.mScrolling = false;
                    return;
                } else {
                    if (firstVisiblePosition == 0 && childAt.getTop() == paddingTop) {
                        this.mScrolling = false;
                        return;
                    }
                    this.mScrollSpeed = DragSortListView.this.mScrollProfile.getSpeed((DragSortListView.this.mUpScrollStartYF - iMax) / DragSortListView.this.mDragUpScrollHeight, this.mPrevTime);
                }
            } else {
                View childAt2 = DragSortListView.this.getChildAt(lastVisiblePosition - firstVisiblePosition);
                if (childAt2 == null) {
                    this.mScrolling = false;
                    return;
                } else {
                    if (lastVisiblePosition == count - 1 && childAt2.getBottom() <= height + paddingTop) {
                        this.mScrolling = false;
                        return;
                    }
                    this.mScrollSpeed = -DragSortListView.this.mScrollProfile.getSpeed((iMin - DragSortListView.this.mDownScrollStartYF) / DragSortListView.this.mDragDownScrollHeight, this.mPrevTime);
                }
            }
            this.mCurrTime = SystemClock.uptimeMillis();
            this.dt = this.mCurrTime - this.mPrevTime;
            this.dy = Math.round(this.mScrollSpeed * this.dt);
            if (this.dy >= 0) {
                this.dy = Math.min(height, this.dy);
                lastVisiblePosition = firstVisiblePosition;
            } else {
                this.dy = Math.max(-height, this.dy);
            }
            View childAt3 = DragSortListView.this.getChildAt(lastVisiblePosition - firstVisiblePosition);
            int top = childAt3.getTop() + this.dy;
            if (lastVisiblePosition == 0 && top > paddingTop) {
                top = paddingTop;
            }
            DragSortListView.this.mBlockLayoutRequests = true;
            DragSortListView.this.setSelectionFromTop(lastVisiblePosition, top - paddingTop);
            DragSortListView.this.layoutChildren();
            DragSortListView.this.invalidate();
            DragSortListView.this.mBlockLayoutRequests = false;
            DragSortListView.this.doDragFloatView(lastVisiblePosition, childAt3, false);
            this.mPrevTime = this.mCurrTime;
            DragSortListView.this.post(this);
        }
    }

    class DragSortTracker {
        StringBuilder mBuilder = new StringBuilder();
        private int mNumInBuffer = 0;
        private int mNumFlushes = 0;
        private boolean mTracking = false;
        File mFile = new File(Environment.getExternalStorageDirectory(), "dslv_state.txt");

        public DragSortTracker() {
            if (!this.mFile.exists()) {
                try {
                    this.mFile.createNewFile();
                    Log.d("mobeta", "file created");
                } catch (IOException e2) {
                    Log.w("mobeta", "Could not create dslv_state.txt");
                    Log.d("mobeta", e2.getMessage());
                }
            }
        }

        public void startTracking() {
            this.mBuilder.append("<DSLVStates>\n");
            this.mNumFlushes = 0;
            this.mTracking = true;
        }

        public void appendState() {
            if (this.mTracking) {
                this.mBuilder.append("<DSLVState>\n");
                int childCount = DragSortListView.this.getChildCount();
                int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
                this.mBuilder.append("    <Positions>");
                for (int i = 0; i < childCount; i++) {
                    this.mBuilder.append(firstVisiblePosition + i).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                this.mBuilder.append("</Positions>\n");
                this.mBuilder.append("    <Tops>");
                for (int i2 = 0; i2 < childCount; i2++) {
                    this.mBuilder.append(DragSortListView.this.getChildAt(i2).getTop()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                this.mBuilder.append("</Tops>\n");
                this.mBuilder.append("    <Bottoms>");
                for (int i3 = 0; i3 < childCount; i3++) {
                    this.mBuilder.append(DragSortListView.this.getChildAt(i3).getBottom()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                this.mBuilder.append("</Bottoms>\n");
                this.mBuilder.append("    <FirstExpPos>").append(DragSortListView.this.mFirstExpPos).append("</FirstExpPos>\n");
                this.mBuilder.append("    <FirstExpBlankHeight>").append(DragSortListView.this.getItemHeight(DragSortListView.this.mFirstExpPos) - DragSortListView.this.getChildHeight(DragSortListView.this.mFirstExpPos)).append("</FirstExpBlankHeight>\n");
                this.mBuilder.append("    <SecondExpPos>").append(DragSortListView.this.mSecondExpPos).append("</SecondExpPos>\n");
                this.mBuilder.append("    <SecondExpBlankHeight>").append(DragSortListView.this.getItemHeight(DragSortListView.this.mSecondExpPos) - DragSortListView.this.getChildHeight(DragSortListView.this.mSecondExpPos)).append("</SecondExpBlankHeight>\n");
                this.mBuilder.append("    <SrcPos>").append(DragSortListView.this.mSrcPos).append("</SrcPos>\n");
                this.mBuilder.append("    <SrcHeight>").append(DragSortListView.this.mFloatViewHeight + DragSortListView.this.getDividerHeight()).append("</SrcHeight>\n");
                this.mBuilder.append("    <ViewHeight>").append(DragSortListView.this.getHeight()).append("</ViewHeight>\n");
                this.mBuilder.append("    <LastY>").append(DragSortListView.this.mLastY).append("</LastY>\n");
                this.mBuilder.append("    <FloatY>").append(DragSortListView.this.mFloatViewMid).append("</FloatY>\n");
                this.mBuilder.append("    <ShuffleEdges>");
                for (int i4 = 0; i4 < childCount; i4++) {
                    this.mBuilder.append(DragSortListView.this.getShuffleEdge(firstVisiblePosition + i4, DragSortListView.this.getChildAt(i4).getTop())).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                this.mBuilder.append("</ShuffleEdges>\n");
                this.mBuilder.append("</DSLVState>\n");
                this.mNumInBuffer++;
                if (this.mNumInBuffer > 1000) {
                    flush();
                    this.mNumInBuffer = 0;
                }
            }
        }

        public void flush() {
            if (this.mTracking) {
                try {
                    FileWriter fileWriter = new FileWriter(this.mFile, this.mNumFlushes != 0);
                    fileWriter.write(this.mBuilder.toString());
                    this.mBuilder.delete(0, this.mBuilder.length());
                    fileWriter.flush();
                    fileWriter.close();
                    this.mNumFlushes++;
                } catch (IOException e2) {
                }
            }
        }

        public void stopTracking() {
            if (this.mTracking) {
                this.mBuilder.append("</DSLVStates>\n");
                flush();
                this.mTracking = false;
            }
        }
    }
}
