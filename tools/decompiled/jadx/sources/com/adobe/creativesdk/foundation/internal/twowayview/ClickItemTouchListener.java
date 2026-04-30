package com.adobe.creativesdk.foundation.internal.twowayview;

import android.content.Context;
import android.os.Build;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v7.widget.RecyclerView;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
abstract class ClickItemTouchListener implements RecyclerView.OnItemTouchListener {
    private static final String LOGTAG = "ClickItemTouchListener";
    private final GestureDetectorCompatWrapper mGestureDetector;

    abstract boolean performItemClick(RecyclerView recyclerView, View view, int i, long j);

    abstract boolean performItemLongClick(RecyclerView recyclerView, View view, int i, long j);

    ClickItemTouchListener(RecyclerView recyclerView) {
        this.mGestureDetector = new GestureDetectorCompatWrapper(recyclerView.getContext(), new ItemClickGestureListener(recyclerView));
    }

    private boolean isAttachedToWindow(RecyclerView recyclerView) {
        if (Build.VERSION.SDK_INT >= 19) {
            return recyclerView.isAttachedToWindow();
        }
        return recyclerView.getHandler() != null;
    }

    private boolean hasAdapter(RecyclerView recyclerView) {
        return recyclerView.getAdapter() != null;
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (isAttachedToWindow(recyclerView) && hasAdapter(recyclerView)) {
            this.mGestureDetector.handleOnTouch(motionEvent);
        }
        return false;
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
    }

    class GestureDetectorCompatWrapper {
        GestureDetectorCompat gestureDetectorCompat;
        private final ItemClickGestureListener mGestureListener;

        public GestureDetectorCompatWrapper(Context context, ItemClickGestureListener itemClickGestureListener) {
            this.gestureDetectorCompat = new GestureDetectorCompat(context, itemClickGestureListener);
            this.mGestureListener = itemClickGestureListener;
        }

        public void handleOnTouch(MotionEvent motionEvent) {
            this.gestureDetectorCompat.onTouchEvent(motionEvent);
            if ((motionEvent.getAction() & 255) == 1) {
                this.mGestureListener.dispatchSingleTapUpIfNeeded(motionEvent);
            }
        }
    }

    class ItemClickGestureListener extends GestureDetector.SimpleOnGestureListener {
        private final RecyclerView mHostView;
        private View mTargetChild;

        public ItemClickGestureListener(RecyclerView recyclerView) {
            this.mHostView = recyclerView;
        }

        public void dispatchSingleTapUpIfNeeded(MotionEvent motionEvent) {
            if (this.mTargetChild != null) {
                onSingleTapUp(motionEvent);
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.mTargetChild = this.mHostView.findChildViewUnder((int) motionEvent.getX(), (int) motionEvent.getY());
            return this.mTargetChild != null;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
            if (this.mTargetChild != null) {
                this.mTargetChild.setPressed(true);
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (this.mTargetChild == null) {
                return false;
            }
            this.mTargetChild.setPressed(false);
            int childPosition = this.mHostView.getChildPosition(this.mTargetChild);
            boolean zPerformItemClick = ClickItemTouchListener.this.performItemClick(this.mHostView, this.mTargetChild, childPosition, this.mHostView.getAdapter().getItemId(childPosition));
            this.mTargetChild = null;
            return zPerformItemClick;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            if (this.mTargetChild == null) {
                return false;
            }
            this.mTargetChild.setPressed(false);
            this.mTargetChild = null;
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (this.mTargetChild != null) {
                int childPosition = this.mHostView.getChildPosition(this.mTargetChild);
                if (ClickItemTouchListener.this.performItemLongClick(this.mHostView, this.mTargetChild, childPosition, this.mHostView.getAdapter().getItemId(childPosition))) {
                    this.mTargetChild.setPressed(false);
                    this.mTargetChild = null;
                }
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }
}
