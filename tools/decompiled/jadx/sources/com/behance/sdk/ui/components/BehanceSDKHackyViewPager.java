package com.behance.sdk.ui.components;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKHackyViewPager extends ViewPager {
    public BehanceSDKHackyViewPager(Context context) {
        super(context);
    }

    public BehanceSDKHackyViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
