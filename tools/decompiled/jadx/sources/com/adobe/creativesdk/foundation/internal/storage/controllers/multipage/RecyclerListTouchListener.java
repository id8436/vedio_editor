package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class RecyclerListTouchListener implements View.OnTouchListener {
    GestureDetector mGestureDetector;
    private OnTouchListener mListener;
    ScaleGestureDetector mScaleGestureDetector;

    public interface OnTouchListener {
        void performAction();
    }

    public RecyclerListTouchListener(Context context, OnTouchListener onTouchListener) {
        this.mListener = onTouchListener;
        this.mGestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.RecyclerListTouchListener.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }
        });
        this.mScaleGestureDetector = new ScaleGestureDetector(context, new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.RecyclerListTouchListener.2
            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                RecyclerListTouchListener.this.mListener.performAction();
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            }
        });
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view != null && this.mListener != null && this.mGestureDetector.onTouchEvent(motionEvent)) {
            this.mListener.performAction();
            return true;
        }
        if (view != null && this.mListener != null) {
            this.mScaleGestureDetector.onTouchEvent(motionEvent);
            return true;
        }
        return true;
    }
}
