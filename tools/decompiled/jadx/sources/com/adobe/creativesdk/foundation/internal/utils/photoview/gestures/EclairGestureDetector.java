package com.adobe.creativesdk.foundation.internal.utils.photoview.gestures;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;
import com.adobe.creativesdk.foundation.internal.utils.photoview.Compat;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(5)
public class EclairGestureDetector extends CupcakeGestureDetector {
    private static final int INVALID_POINTER_ID = -1;
    private int mActivePointerId;
    private int mActivePointerIndex;

    public EclairGestureDetector(Context context) {
        super(context);
        this.mActivePointerId = -1;
        this.mActivePointerIndex = 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.CupcakeGestureDetector
    float getActiveX(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.mActivePointerIndex);
        } catch (Exception e2) {
            return motionEvent.getX();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.CupcakeGestureDetector
    float getActiveY(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.mActivePointerIndex);
        } catch (Exception e2) {
            return motionEvent.getY();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.CupcakeGestureDetector, com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.mActivePointerId = motionEvent.getPointerId(0);
                break;
            case 1:
            case 3:
                this.mActivePointerId = -1;
                break;
            case 6:
                int pointerIndex = Compat.getPointerIndex(motionEvent.getAction());
                if (motionEvent.getPointerId(pointerIndex) == this.mActivePointerId) {
                    int i = pointerIndex == 0 ? 1 : 0;
                    this.mActivePointerId = motionEvent.getPointerId(i);
                    this.mLastTouchX = motionEvent.getX(i);
                    this.mLastTouchY = motionEvent.getY(i);
                }
                break;
        }
        this.mActivePointerIndex = motionEvent.findPointerIndex(this.mActivePointerId != -1 ? this.mActivePointerId : 0);
        return super.onTouchEvent(motionEvent);
    }
}
