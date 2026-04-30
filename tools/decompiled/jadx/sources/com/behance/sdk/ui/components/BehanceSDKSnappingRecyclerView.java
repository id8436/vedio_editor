package com.behance.sdk.ui.components;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.behance.sdk.listeners.IBehanceSDKSnappingLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSnappingRecyclerView extends RecyclerView {
    public BehanceSDKSnappingRecyclerView(Context context) {
        super(context);
    }

    public BehanceSDKSnappingRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BehanceSDKSnappingRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.support.v7.widget.RecyclerView
    public boolean fling(int i, int i2) {
        int i3;
        if (getLayoutManager() instanceof IBehanceSDKSnappingLayoutManager) {
            int positionForVelocity = ((IBehanceSDKSnappingLayoutManager) getLayoutManager()).getPositionForVelocity(i, i2);
            int iFindFirstVisibleItemPosition = ((LinearLayoutManager) super.getLayoutManager()).findFirstVisibleItemPosition();
            if (positionForVelocity < 3 || iFindFirstVisibleItemPosition <= 1) {
                if (positionForVelocity <= 1 && iFindFirstVisibleItemPosition > 2) {
                    i3 = 2;
                } else if (positionForVelocity == 0 && iFindFirstVisibleItemPosition > 1) {
                    i3 = 1;
                } else if (positionForVelocity > 1 && iFindFirstVisibleItemPosition == 0) {
                    i3 = 1;
                } else if (positionForVelocity <= 1 || iFindFirstVisibleItemPosition != 1) {
                    i3 = (positionForVelocity == 1 && iFindFirstVisibleItemPosition == 0 && i2 <= 0) ? 0 : positionForVelocity;
                } else {
                    i3 = 2;
                }
                super.smoothScrollToPosition(i3);
                return true;
            }
        }
        return super.fling(i, i2);
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int fixScrollPos;
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        Object layoutManager = getLayoutManager();
        if ((layoutManager instanceof IBehanceSDKSnappingLayoutManager) && ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && getScrollState() == 0 && (fixScrollPos = ((IBehanceSDKSnappingLayoutManager) layoutManager).getFixScrollPos()) < 3)) {
            smoothScrollToPosition(fixScrollPos);
        }
        return zOnTouchEvent;
    }
}
