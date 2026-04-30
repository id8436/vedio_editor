package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public class AssetViewerViewPager extends ViewPager {
    private boolean isLocked;

    public AssetViewerViewPager(Context context) {
        super(context);
        this.isLocked = false;
    }

    public AssetViewerViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isLocked = false;
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.isLocked) {
            return false;
        }
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.isLocked) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void toggleLock() {
        this.isLocked = !this.isLocked;
    }

    public void setLocked(boolean z) {
        this.isLocked = z;
    }

    public boolean isLocked() {
        return this.isLocked;
    }
}
