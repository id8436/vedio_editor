package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class RecyclerItemClickListener implements RecyclerView.OnItemTouchListener {
    GestureDetector mGestureDetector;
    private OnItemClickListener mListener;

    public interface OnItemClickListener {
        void onItemClick(View view, int i);

        void onItemLongClick(View view, int i);
    }

    public RecyclerItemClickListener(Context context, final RecyclerView recyclerView, OnItemClickListener onItemClickListener) {
        this.mListener = onItemClickListener;
        this.mGestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.RecyclerItemClickListener.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                View viewFindChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
                if (viewFindChildViewUnder != null && RecyclerItemClickListener.this.mListener != null) {
                    RecyclerItemClickListener.this.mListener.onItemLongClick(viewFindChildViewUnder, recyclerView.getChildPosition(viewFindChildViewUnder));
                }
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        View viewFindChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
        if (viewFindChildViewUnder != null && this.mListener != null && this.mGestureDetector.onTouchEvent(motionEvent)) {
            this.mListener.onItemClick(viewFindChildViewUnder, recyclerView.getChildPosition(viewFindChildViewUnder));
            return false;
        }
        return false;
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }
}
