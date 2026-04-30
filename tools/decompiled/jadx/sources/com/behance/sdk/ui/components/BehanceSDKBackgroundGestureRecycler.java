package com.behance.sdk.ui.components;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKBackgroundGestureRecycler extends RecyclerView {
    private final GestureDetector gestureDetector;
    private OnBackgroundGestureListener onBackgroundGestureListener;

    public interface OnBackgroundGestureListener {
        void onBackgroundDoubleClick();

        void onBackgroundLongClick();
    }

    public BehanceSDKBackgroundGestureRecycler(Context context) {
        super(context);
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.behance.sdk.ui.components.BehanceSDKBackgroundGestureRecycler.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener != null && BehanceSDKBackgroundGestureRecycler.this.findChildViewUnder(motionEvent.getX(), motionEvent.getY()) == null) {
                    BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener.onBackgroundLongClick();
                }
                super.onLongPress(motionEvent);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener != null && BehanceSDKBackgroundGestureRecycler.this.findChildViewUnder(motionEvent.getX(), motionEvent.getY()) == null) {
                    BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener.onBackgroundDoubleClick();
                }
                return super.onDoubleTap(motionEvent);
            }
        });
    }

    public BehanceSDKBackgroundGestureRecycler(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.behance.sdk.ui.components.BehanceSDKBackgroundGestureRecycler.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener != null && BehanceSDKBackgroundGestureRecycler.this.findChildViewUnder(motionEvent.getX(), motionEvent.getY()) == null) {
                    BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener.onBackgroundLongClick();
                }
                super.onLongPress(motionEvent);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener != null && BehanceSDKBackgroundGestureRecycler.this.findChildViewUnder(motionEvent.getX(), motionEvent.getY()) == null) {
                    BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener.onBackgroundDoubleClick();
                }
                return super.onDoubleTap(motionEvent);
            }
        });
    }

    public BehanceSDKBackgroundGestureRecycler(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.behance.sdk.ui.components.BehanceSDKBackgroundGestureRecycler.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener != null && BehanceSDKBackgroundGestureRecycler.this.findChildViewUnder(motionEvent.getX(), motionEvent.getY()) == null) {
                    BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener.onBackgroundLongClick();
                }
                super.onLongPress(motionEvent);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener != null && BehanceSDKBackgroundGestureRecycler.this.findChildViewUnder(motionEvent.getX(), motionEvent.getY()) == null) {
                    BehanceSDKBackgroundGestureRecycler.this.onBackgroundGestureListener.onBackgroundDoubleClick();
                }
                return super.onDoubleTap(motionEvent);
            }
        });
    }

    public void setOnBackgroundGestureListener(OnBackgroundGestureListener onBackgroundGestureListener) {
        this.onBackgroundGestureListener = onBackgroundGestureListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.gestureDetector.onTouchEvent(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }
}
