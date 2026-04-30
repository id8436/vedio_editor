package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeHackyViewPager extends ViewPager {
    public AdobeHackyViewPager(Context context) {
        super(context);
    }

    public AdobeHackyViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
