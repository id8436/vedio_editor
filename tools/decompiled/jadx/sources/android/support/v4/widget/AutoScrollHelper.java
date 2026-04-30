package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    private static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
    private static final int DEFAULT_EDGE_TYPE = 1;
    private static final float DEFAULT_MAXIMUM_EDGE = Float.MAX_VALUE;
    private static final int DEFAULT_MAXIMUM_VELOCITY_DIPS = 1575;
    private static final int DEFAULT_MINIMUM_VELOCITY_DIPS = 315;
    private static final int DEFAULT_RAMP_DOWN_DURATION = 500;
    private static final int DEFAULT_RAMP_UP_DURATION = 500;
    private static final float DEFAULT_RELATIVE_EDGE = 0.2f;
    private static final float DEFAULT_RELATIVE_VELOCITY = 1.0f;
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;
    private static final int HORIZONTAL = 0;
    public static final float NO_MAX = Float.MAX_VALUE;
    public static final float NO_MIN = 0.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;
    private static final int VERTICAL = 1;
    private int mActivationDelay;
    private boolean mAlreadyDelayed;
    boolean mAnimating;
    private int mEdgeType;
    private boolean mEnabled;
    private boolean mExclusive;
    boolean mNeedsCancel;
    boolean mNeedsReset;
    private Runnable mRunnable;
    final View mTarget;
    final ClampedScroller mScroller = new ClampedScroller();
    private final Interpolator mEdgeInterpolator = new AccelerateInterpolator();
    private float[] mRelativeEdges = {0.0f, 0.0f};
    private float[] mMaximumEdges = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] mRelativeVelocity = {0.0f, 0.0f};
    private float[] mMinimumVelocity = {0.0f, 0.0f};
    private float[] mMaximumVelocity = {Float.MAX_VALUE, Float.MAX_VALUE};

    public abstract boolean canTargetScrollHorizontally(int i);

    public abstract boolean canTargetScrollVertically(int i);

    public abstract void scrollTargetBy(int i, int i2);

    public AutoScrollHelper(View view) {
        this.mTarget = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((1575.0f * displayMetrics.density) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        setMaximumVelocity(i, i);
        setMinimumVelocity(i2, i2);
        setEdgeType(1);
        setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
        setRelativeEdges(0.2f, 0.2f);
        setRelativeVelocity(1.0f, 1.0f);
        setActivationDelay(DEFAULT_ACTIVATION_DELAY);
        setRampUpDuration(500);
        setRampDownDuration(500);
    }

    public AutoScrollHelper setEnabled(boolean z) {
        if (this.mEnabled && !z) {
            requestStop();
        }
        this.mEnabled = z;
        return this;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public AutoScrollHelper setExclusive(boolean z) {
        this.mExclusive = z;
        return this;
    }

    public boolean isExclusive() {
        return this.mExclusive;
    }

    public AutoScrollHelper setMaximumVelocity(float f2, float f3) {
        this.mMaximumVelocity[0] = f2 / 1000.0f;
        this.mMaximumVelocity[1] = f3 / 1000.0f;
        return this;
    }

    public AutoScrollHelper setMinimumVelocity(float f2, float f3) {
        this.mMinimumVelocity[0] = f2 / 1000.0f;
        this.mMinimumVelocity[1] = f3 / 1000.0f;
        return this;
    }

    public AutoScrollHelper setRelativeVelocity(float f2, float f3) {
        this.mRelativeVelocity[0] = f2 / 1000.0f;
        this.mRelativeVelocity[1] = f3 / 1000.0f;
        return this;
    }

    public AutoScrollHelper setEdgeType(int i) {
        this.mEdgeType = i;
        return this;
    }

    public AutoScrollHelper setRelativeEdges(float f2, float f3) {
        this.mRelativeEdges[0] = f2;
        this.mRelativeEdges[1] = f3;
        return this;
    }

    public AutoScrollHelper setMaximumEdges(float f2, float f3) {
        this.mMaximumEdges[0] = f2;
        this.mMaximumEdges[1] = f3;
        return this;
    }

    public AutoScrollHelper setActivationDelay(int i) {
        this.mActivationDelay = i;
        return this;
    }

    public AutoScrollHelper setRampUpDuration(int i) {
        this.mScroller.setRampUpDuration(i);
        return this;
    }

    public AutoScrollHelper setRampDownDuration(int i) {
        this.mScroller.setRampDownDuration(i);
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.mEnabled) {
            return false;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.mNeedsCancel = true;
                this.mAlreadyDelayed = false;
                this.mScroller.setTargetVelocity(computeTargetVelocity(0, motionEvent.getX(), view.getWidth(), this.mTarget.getWidth()), computeTargetVelocity(1, motionEvent.getY(), view.getHeight(), this.mTarget.getHeight()));
                if (!this.mAnimating && shouldAnimate()) {
                    startAnimating();
                }
                break;
            case 1:
            case 3:
                requestStop();
                break;
            case 2:
                this.mScroller.setTargetVelocity(computeTargetVelocity(0, motionEvent.getX(), view.getWidth(), this.mTarget.getWidth()), computeTargetVelocity(1, motionEvent.getY(), view.getHeight(), this.mTarget.getHeight()));
                if (!this.mAnimating) {
                    startAnimating();
                }
                break;
        }
        return this.mExclusive && this.mAnimating;
    }

    boolean shouldAnimate() {
        ClampedScroller clampedScroller = this.mScroller;
        int verticalDirection = clampedScroller.getVerticalDirection();
        int horizontalDirection = clampedScroller.getHorizontalDirection();
        return (verticalDirection != 0 && canTargetScrollVertically(verticalDirection)) || (horizontalDirection != 0 && canTargetScrollHorizontally(horizontalDirection));
    }

    private void startAnimating() {
        if (this.mRunnable == null) {
            this.mRunnable = new ScrollAnimationRunnable();
        }
        this.mAnimating = true;
        this.mNeedsReset = true;
        if (!this.mAlreadyDelayed && this.mActivationDelay > 0) {
            ViewCompat.postOnAnimationDelayed(this.mTarget, this.mRunnable, this.mActivationDelay);
        } else {
            this.mRunnable.run();
        }
        this.mAlreadyDelayed = true;
    }

    private void requestStop() {
        if (this.mNeedsReset) {
            this.mAnimating = false;
        } else {
            this.mScroller.requestStop();
        }
    }

    private float computeTargetVelocity(int i, float f2, float f3, float f4) {
        float edgeValue = getEdgeValue(this.mRelativeEdges[i], f3, this.mMaximumEdges[i], f2);
        if (edgeValue == 0.0f) {
            return 0.0f;
        }
        float f5 = this.mRelativeVelocity[i];
        float f6 = this.mMinimumVelocity[i];
        float f7 = this.mMaximumVelocity[i];
        float f8 = f5 * f4;
        if (edgeValue > 0.0f) {
            return constrain(edgeValue * f8, f6, f7);
        }
        return -constrain((-edgeValue) * f8, f6, f7);
    }

    private float getEdgeValue(float f2, float f3, float f4, float f5) {
        float interpolation;
        float fConstrain = constrain(f2 * f3, 0.0f, f4);
        float fConstrainEdgeValue = constrainEdgeValue(f3 - f5, fConstrain) - constrainEdgeValue(f5, fConstrain);
        if (fConstrainEdgeValue < 0.0f) {
            interpolation = -this.mEdgeInterpolator.getInterpolation(-fConstrainEdgeValue);
        } else {
            if (fConstrainEdgeValue <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.mEdgeInterpolator.getInterpolation(fConstrainEdgeValue);
        }
        return constrain(interpolation, -1.0f, 1.0f);
    }

    private float constrainEdgeValue(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        switch (this.mEdgeType) {
            case 0:
            case 1:
                if (f2 < f3) {
                    if (f2 >= 0.0f) {
                        break;
                    } else if (this.mAnimating && this.mEdgeType == 1) {
                        break;
                    }
                }
                break;
            case 2:
                if (f2 < 0.0f) {
                }
                break;
        }
        return 0.0f;
    }

    static int constrain(int i, int i2, int i3) {
        if (i > i3) {
            return i3;
        }
        return i < i2 ? i2 : i;
    }

    static float constrain(float f2, float f3, float f4) {
        if (f2 > f4) {
            return f4;
        }
        return f2 < f3 ? f3 : f2;
    }

    void cancelTargetTouch() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.mTarget.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    class ScrollAnimationRunnable implements Runnable {
        ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AutoScrollHelper.this.mAnimating) {
                if (AutoScrollHelper.this.mNeedsReset) {
                    AutoScrollHelper.this.mNeedsReset = false;
                    AutoScrollHelper.this.mScroller.start();
                }
                ClampedScroller clampedScroller = AutoScrollHelper.this.mScroller;
                if (clampedScroller.isFinished() || !AutoScrollHelper.this.shouldAnimate()) {
                    AutoScrollHelper.this.mAnimating = false;
                    return;
                }
                if (AutoScrollHelper.this.mNeedsCancel) {
                    AutoScrollHelper.this.mNeedsCancel = false;
                    AutoScrollHelper.this.cancelTargetTouch();
                }
                clampedScroller.computeScrollDelta();
                AutoScrollHelper.this.scrollTargetBy(clampedScroller.getDeltaX(), clampedScroller.getDeltaY());
                ViewCompat.postOnAnimation(AutoScrollHelper.this.mTarget, this);
            }
        }
    }

    class ClampedScroller {
        private int mEffectiveRampDown;
        private int mRampDownDuration;
        private int mRampUpDuration;
        private float mStopValue;
        private float mTargetVelocityX;
        private float mTargetVelocityY;
        private long mStartTime = Long.MIN_VALUE;
        private long mStopTime = -1;
        private long mDeltaTime = 0;
        private int mDeltaX = 0;
        private int mDeltaY = 0;

        ClampedScroller() {
        }

        public void setRampUpDuration(int i) {
            this.mRampUpDuration = i;
        }

        public void setRampDownDuration(int i) {
            this.mRampDownDuration = i;
        }

        public void start() {
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mStopTime = -1L;
            this.mDeltaTime = this.mStartTime;
            this.mStopValue = 0.5f;
            this.mDeltaX = 0;
            this.mDeltaY = 0;
        }

        public void requestStop() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mEffectiveRampDown = AutoScrollHelper.constrain((int) (jCurrentAnimationTimeMillis - this.mStartTime), 0, this.mRampDownDuration);
            this.mStopValue = getValueAt(jCurrentAnimationTimeMillis);
            this.mStopTime = jCurrentAnimationTimeMillis;
        }

        public boolean isFinished() {
            return this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + ((long) this.mEffectiveRampDown);
        }

        private float getValueAt(long j) {
            if (j < this.mStartTime) {
                return 0.0f;
            }
            if (this.mStopTime < 0 || j < this.mStopTime) {
                return AutoScrollHelper.constrain((j - this.mStartTime) / this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
            }
            return (AutoScrollHelper.constrain((j - this.mStopTime) / this.mEffectiveRampDown, 0.0f, 1.0f) * this.mStopValue) + (1.0f - this.mStopValue);
        }

        private float interpolateValue(float f2) {
            return ((-4.0f) * f2 * f2) + (4.0f * f2);
        }

        public void computeScrollDelta() {
            if (this.mDeltaTime == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fInterpolateValue = interpolateValue(getValueAt(jCurrentAnimationTimeMillis));
            long j = jCurrentAnimationTimeMillis - this.mDeltaTime;
            this.mDeltaTime = jCurrentAnimationTimeMillis;
            this.mDeltaX = (int) (j * fInterpolateValue * this.mTargetVelocityX);
            this.mDeltaY = (int) (j * fInterpolateValue * this.mTargetVelocityY);
        }

        public void setTargetVelocity(float f2, float f3) {
            this.mTargetVelocityX = f2;
            this.mTargetVelocityY = f3;
        }

        public int getHorizontalDirection() {
            return (int) (this.mTargetVelocityX / Math.abs(this.mTargetVelocityX));
        }

        public int getVerticalDirection() {
            return (int) (this.mTargetVelocityY / Math.abs(this.mTargetVelocityY));
        }

        public int getDeltaX() {
            return this.mDeltaX;
        }

        public int getDeltaY() {
            return this.mDeltaY;
        }
    }
}
