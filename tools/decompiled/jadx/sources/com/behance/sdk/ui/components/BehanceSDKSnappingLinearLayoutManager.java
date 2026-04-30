package com.behance.sdk.ui.components;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewConfiguration;
import com.behance.sdk.listeners.IBehanceSDKSnappingLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSnappingLinearLayoutManager extends LinearLayoutManager implements IBehanceSDKSnappingLayoutManager {
    private static float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
    private static double FRICTION = 0.84d;
    private static final float INFLEXION = 0.35f;
    private double deceleration;

    public BehanceSDKSnappingLinearLayoutManager(Context context) {
        super(context);
        calculateDeceleration(context);
    }

    public BehanceSDKSnappingLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        calculateDeceleration(context);
    }

    private void calculateDeceleration(Context context) {
        this.deceleration = 386.0885886511961d * ((double) context.getResources().getDisplayMetrics().density) * 160.0d * FRICTION;
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKSnappingLayoutManager
    public int getPositionForVelocity(int i, int i2) {
        if (getChildCount() == 0) {
            return 0;
        }
        if (getOrientation() == 0) {
            return calcPosForVelocity(i, getChildAt(0).getLeft(), getChildAt(0).getWidth(), getPosition(getChildAt(0)));
        }
        return calcPosForVelocity(i2, getChildAt(0).getTop(), getChildAt(0).getHeight(), getPosition(getChildAt(0)));
    }

    private int calcPosForVelocity(int i, int i2, int i3, int i4) {
        double splineFlingDistance = getSplineFlingDistance(Math.sqrt(i * i));
        double d2 = i2;
        if (i <= 0) {
            splineFlingDistance = -splineFlingDistance;
        }
        double d3 = splineFlingDistance + d2;
        if (i < 0) {
            return (int) Math.max((d3 / ((double) i3)) + ((double) i4) + 2.0d, 0.0d);
        }
        return (int) ((d3 / ((double) i3)) + ((double) i4) + 1.0d);
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.behance.sdk.ui.components.BehanceSDKSnappingLinearLayoutManager.1
            @Override // android.support.v7.widget.LinearSmoothScroller
            protected int getHorizontalSnapPreference() {
                return -1;
            }

            @Override // android.support.v7.widget.LinearSmoothScroller
            protected int getVerticalSnapPreference() {
                return -1;
            }

            @Override // android.support.v7.widget.LinearSmoothScroller
            public PointF computeScrollVectorForPosition(int i2) {
                return BehanceSDKSnappingLinearLayoutManager.this.computeScrollVectorForPosition(i2);
            }
        };
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    private double getSplineFlingDistance(double d2) {
        double splineDeceleration = getSplineDeceleration(d2);
        double d3 = ((double) DECELERATION_RATE) - 1.0d;
        return Math.exp(splineDeceleration * (((double) DECELERATION_RATE) / d3)) * ((double) ViewConfiguration.getScrollFriction()) * this.deceleration;
    }

    private double getSplineDeceleration(double d2) {
        return Math.log((0.3499999940395355d * Math.abs(d2)) / (((double) ViewConfiguration.getScrollFriction()) * this.deceleration));
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKSnappingLayoutManager
    public int getFixScrollPos() {
        if (getChildCount() == 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        int position = getPosition(childAt);
        if (getOrientation() == 0 && Math.abs(childAt.getLeft()) > childAt.getMeasuredWidth() / 2) {
            return position + 1;
        }
        if (getOrientation() == 1 && Math.abs(childAt.getTop()) > childAt.getMeasuredWidth() / 2) {
            return position + 1;
        }
        return position;
    }
}
