package com.behance.sdk.senab.photoview;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public abstract class VersionedGestureDetector {
    static final String LOG_TAG = "VersionedGestureDetector";
    OnGestureListener mListener;

    public interface OnGestureListener {
        void onDrag(float f2, float f3);

        void onFling(float f2, float f3, float f4, float f5);

        void onScale(float f2, float f3, float f4);
    }

    public abstract boolean isScaling();

    public abstract boolean onTouchEvent(MotionEvent motionEvent);

    public static VersionedGestureDetector newInstance(Context context, OnGestureListener onGestureListener) {
        VersionedGestureDetector froyoDetector;
        int i = Build.VERSION.SDK_INT;
        if (i < 5) {
            froyoDetector = new CupcakeDetector(context);
        } else if (i < 8) {
            froyoDetector = new EclairDetector(context);
        } else {
            froyoDetector = new FroyoDetector(context);
        }
        froyoDetector.mListener = onGestureListener;
        return froyoDetector;
    }

    class CupcakeDetector extends VersionedGestureDetector {
        private boolean mIsDragging;
        float mLastTouchX;
        float mLastTouchY;
        final float mMinimumVelocity;
        final float mTouchSlop;
        private VelocityTracker mVelocityTracker;

        public CupcakeDetector(Context context) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
            this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        }

        float getActiveX(MotionEvent motionEvent) {
            return motionEvent.getX();
        }

        float getActiveY(MotionEvent motionEvent) {
            return motionEvent.getY();
        }

        @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector
        public boolean isScaling() {
            return false;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector
        public boolean onTouchEvent(MotionEvent motionEvent) {
            switch (motionEvent.getAction()) {
                case 0:
                    this.mVelocityTracker = VelocityTracker.obtain();
                    this.mVelocityTracker.addMovement(motionEvent);
                    this.mLastTouchX = getActiveX(motionEvent);
                    this.mLastTouchY = getActiveY(motionEvent);
                    this.mIsDragging = false;
                    return true;
                case 1:
                    if (this.mIsDragging && this.mVelocityTracker != null) {
                        this.mLastTouchX = getActiveX(motionEvent);
                        this.mLastTouchY = getActiveY(motionEvent);
                        this.mVelocityTracker.addMovement(motionEvent);
                        this.mVelocityTracker.computeCurrentVelocity(1000);
                        float xVelocity = this.mVelocityTracker.getXVelocity();
                        float yVelocity = this.mVelocityTracker.getYVelocity();
                        if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.mMinimumVelocity) {
                            this.mListener.onFling(this.mLastTouchX, this.mLastTouchY, -xVelocity, -yVelocity);
                        }
                    }
                    if (this.mVelocityTracker != null) {
                        this.mVelocityTracker.recycle();
                        this.mVelocityTracker = null;
                    }
                    return true;
                case 2:
                    float activeX = getActiveX(motionEvent);
                    float activeY = getActiveY(motionEvent);
                    float f2 = activeX - this.mLastTouchX;
                    float f3 = activeY - this.mLastTouchY;
                    if (!this.mIsDragging) {
                        this.mIsDragging = Math.sqrt((double) ((f2 * f2) + (f3 * f3))) >= ((double) this.mTouchSlop);
                    }
                    if (this.mIsDragging) {
                        this.mListener.onDrag(f2, f3);
                        this.mLastTouchX = activeX;
                        this.mLastTouchY = activeY;
                        if (this.mVelocityTracker != null) {
                            this.mVelocityTracker.addMovement(motionEvent);
                        }
                    }
                    return true;
                case 3:
                    if (this.mVelocityTracker != null) {
                        this.mVelocityTracker.recycle();
                        this.mVelocityTracker = null;
                    }
                    return true;
                default:
                    return true;
            }
        }
    }

    @TargetApi(5)
    class EclairDetector extends CupcakeDetector {
        private static final int INVALID_POINTER_ID = -1;
        private int mActivePointerId;
        private int mActivePointerIndex;

        public EclairDetector(Context context) {
            super(context);
            this.mActivePointerId = -1;
            this.mActivePointerIndex = 0;
        }

        @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector.CupcakeDetector
        float getActiveX(MotionEvent motionEvent) {
            try {
                return motionEvent.getX(this.mActivePointerIndex);
            } catch (Exception e2) {
                return motionEvent.getX();
            }
        }

        @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector.CupcakeDetector
        float getActiveY(MotionEvent motionEvent) {
            try {
                return motionEvent.getY(this.mActivePointerIndex);
            } catch (Exception e2) {
                return motionEvent.getY();
            }
        }

        @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector.CupcakeDetector, com.behance.sdk.senab.photoview.VersionedGestureDetector
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
                    int action = (motionEvent.getAction() & 65280) >> 8;
                    if (motionEvent.getPointerId(action) == this.mActivePointerId) {
                        int i = action == 0 ? 1 : 0;
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

    @TargetApi(8)
    class FroyoDetector extends EclairDetector {
        private final ScaleGestureDetector mDetector;
        private final ScaleGestureDetector.OnScaleGestureListener mScaleListener;

        public FroyoDetector(Context context) {
            super(context);
            this.mScaleListener = new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.behance.sdk.senab.photoview.VersionedGestureDetector.FroyoDetector.1
                @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
                public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                    FroyoDetector.this.mListener.onScale(scaleGestureDetector.getScaleFactor(), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                    return true;
                }

                @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
                public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                    return true;
                }

                @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
                public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                }
            };
            this.mDetector = new ScaleGestureDetector(context, this.mScaleListener);
        }

        @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector.CupcakeDetector, com.behance.sdk.senab.photoview.VersionedGestureDetector
        public boolean isScaling() {
            return this.mDetector.isInProgress();
        }

        @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector.EclairDetector, com.behance.sdk.senab.photoview.VersionedGestureDetector.CupcakeDetector, com.behance.sdk.senab.photoview.VersionedGestureDetector
        public boolean onTouchEvent(MotionEvent motionEvent) {
            this.mDetector.onTouchEvent(motionEvent);
            return super.onTouchEvent(motionEvent);
        }
    }
}
