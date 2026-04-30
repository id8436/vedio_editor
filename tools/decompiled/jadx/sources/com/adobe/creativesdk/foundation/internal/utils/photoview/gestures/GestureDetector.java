package com.adobe.creativesdk.foundation.internal.utils.photoview.gestures;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface GestureDetector {
    boolean isScaling();

    boolean onTouchEvent(MotionEvent motionEvent);

    void setOnGestureListener(OnGestureListener onGestureListener);
}
