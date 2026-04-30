package com.adobe.creativesdk.foundation.internal.utils.photoview.gestures;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(8)
public class FroyoGestureDetector extends EclairGestureDetector {
    protected final ScaleGestureDetector mDetector;

    public FroyoGestureDetector(Context context) {
        super(context);
        this.mDetector = new ScaleGestureDetector(context, new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.FroyoGestureDetector.1
            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                float scaleFactor = scaleGestureDetector.getScaleFactor();
                if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                    return false;
                }
                FroyoGestureDetector.this.mListener.onScale(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
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

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.CupcakeGestureDetector, com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.GestureDetector
    public boolean isScaling() {
        return this.mDetector.isInProgress();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.EclairGestureDetector, com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.CupcakeGestureDetector, com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mDetector.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }
}
