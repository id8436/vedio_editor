package com.adobe.premiereclip.editor;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.editor.SnapToBeatController;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class RangeSeekBar extends ImageView {
    public static final int ACTION_POINTER_INDEX_MASK = 65280;
    public static final int ACTION_POINTER_INDEX_SHIFT = 8;
    public static final int ACTION_POINTER_UP = 6;
    public static final int DEFAULT_COLOR = Color.argb(127, 151, 151, 151);
    public static final int INVALID_POINTER_ID = 255;
    private final int DEFAULT_MAX_RADIUS;
    private final int DEFAULT_MIN_RADIUS;
    private final double DEFAULT_SCALE_FACTOR;
    private final double SNAP_THRESHOLD;
    private final float TOUCH_RADIUS;
    private final float absoluteMaxValue;
    private final float absoluteMaxValuePrim;
    private final float absoluteMinValue;
    private final float absoluteMinValuePrim;
    private RectF backgroundRect;
    private float barWidth;
    private long duration;
    private final float lineHeight;
    private OnRangeSeekBarChangeListener listener;
    private int mActivePointerId;
    private float mDownMotionX;
    private boolean mIsDragging;
    private int mScaledTouchSlop;
    float mTouchProgressOffset;
    private float minBeatValue;
    private double minNormalizedTrimHandleDistance;
    private int minRadius;
    private double normalizedMaxValue;
    private double normalizedMinValue;
    private double normalizedScrubberValue;
    private boolean notifyWhileDragging;
    private long offset;
    private final float padding;
    private final Paint paint;
    private Thumb pressedThumb;
    private double savedNormalizedMinValue;
    private double scaleFactor;
    private final float scrubberHeight;
    private final Bitmap scrubberImage;
    private final float seekbarHeight;
    private double snappedNormalMaxValue;
    private SplitListener splitListener;
    private ArrayList<SnapToBeatController.SyncPoint> syncPoints;
    private final float thumbHalfHeight;
    private final Bitmap thumbPressedImage;
    private float thumbTouchDelta;
    private final Bitmap trimHandleInDisabled;
    private final Bitmap trimHandleOutDisabled;
    private boolean trimHandlesDisabled;
    private final float trimhandleHalfWidth;
    private final Bitmap trimhandleInImage;
    private final Bitmap trimhandleOutImage;
    private final float trimhandleWidth;

    public interface OnRangeSeekBarChangeListener {
        void onThumbMoveEnded(Thumb thumb);

        void onThumbMoveStarted(Thumb thumb);

        void onThumbMoved(Thumb thumb);
    }

    public interface SplitListener {
        void onSplitDisabled(RangeSeekBar rangeSeekBar);

        void onSplitEnabled(RangeSeekBar rangeSeekBar);
    }

    public enum Thumb {
        MIN,
        MAX,
        SCRUBBER
    }

    public RangeSeekBar(float f2, float f3, Activity activity) throws IllegalArgumentException {
        super(activity);
        this.paint = new Paint(1);
        this.trimhandleInImage = BitmapFactory.decodeResource(getResources(), R.drawable.btn_timeline_trimhandle_in_3x);
        this.trimhandleOutImage = BitmapFactory.decodeResource(getResources(), R.drawable.btn_timeline_trimhandle_out_3x);
        this.thumbPressedImage = BitmapFactory.decodeResource(getResources(), R.drawable.btn_timeline_trimhandle_out);
        this.scrubberImage = BitmapFactory.decodeResource(getResources(), R.drawable.btn_scrubber_3x);
        this.trimhandleWidth = this.trimhandleInImage.getWidth();
        this.trimhandleHalfWidth = 0.5f * this.trimhandleWidth;
        this.thumbHalfHeight = 0.5f * this.trimhandleInImage.getHeight();
        this.scrubberHeight = this.scrubberImage.getHeight();
        this.seekbarHeight = this.scrubberImage.getHeight();
        this.lineHeight = this.thumbHalfHeight * 2.0f;
        this.padding = this.trimhandleWidth;
        this.backgroundRect = null;
        this.TOUCH_RADIUS = 1.25f * this.trimhandleWidth;
        this.savedNormalizedMinValue = 0.0d;
        this.normalizedMinValue = 0.0d;
        this.normalizedMaxValue = 1.0d;
        this.thumbTouchDelta = 0.0f;
        this.snappedNormalMaxValue = -1.0d;
        this.normalizedScrubberValue = 0.0d;
        this.pressedThumb = null;
        this.notifyWhileDragging = false;
        this.DEFAULT_SCALE_FACTOR = 1.08d * ((double) getResources().getDisplayMetrics().density);
        this.DEFAULT_MIN_RADIUS = (int) (0.05d * ((double) this.lineHeight));
        this.DEFAULT_MAX_RADIUS = (int) (((double) this.DEFAULT_MIN_RADIUS) * 2.5d);
        this.scaleFactor = this.DEFAULT_SCALE_FACTOR;
        this.minRadius = this.DEFAULT_MIN_RADIUS;
        this.minBeatValue = 0.0f;
        this.SNAP_THRESHOLD = 0.02d;
        this.minNormalizedTrimHandleDistance = 0.02d;
        this.trimHandlesDisabled = false;
        this.mActivePointerId = 255;
        this.absoluteMinValue = f2;
        this.absoluteMaxValue = f3;
        this.absoluteMinValuePrim = f2;
        this.absoluteMaxValuePrim = f3;
        int iArgb = Color.argb(180, 90, 90, 90);
        this.trimHandleInDisabled = createBitmapWithColorFilter(this.trimhandleInImage, iArgb);
        this.trimHandleOutDisabled = createBitmapWithColorFilter(this.trimhandleOutImage, iArgb);
        activity.getWindowManager().getDefaultDisplay().getSize(new Point());
        this.barWidth = r1.x - (2.0f * getResources().getDimension(R.dimen.player_bar_horizontal_padding));
        setFocusable(true);
        setFocusableInTouchMode(true);
        init();
    }

    private final void init() {
        this.mScaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    public float getStartX() {
        return this.padding;
    }

    public float getStartY() {
        return 0.5f * (this.seekbarHeight - this.lineHeight);
    }

    public float getEndX() {
        return this.barWidth - this.padding;
    }

    public float getEndY() {
        return 0.5f * (this.seekbarHeight + this.lineHeight);
    }

    public float getBarWidth() {
        return this.barWidth;
    }

    public float getBarHeight() {
        return this.seekbarHeight;
    }

    public boolean isNotifyWhileDragging() {
        return this.notifyWhileDragging;
    }

    public void setMinNormalizedTrimHandleDistance(double d2) {
        this.minNormalizedTrimHandleDistance = d2;
    }

    public void setNotifyWhileDragging(boolean z) {
        this.notifyWhileDragging = z;
    }

    public float getAbsoluteMinValue() {
        return this.absoluteMinValue;
    }

    public float getAbsoluteMaxValue() {
        return this.absoluteMaxValue;
    }

    public float getSelectedMinValue() {
        return normalizedToValue(this.normalizedMinValue);
    }

    public void setSelectedMinValue(float f2) {
        if (0.0f == this.absoluteMaxValuePrim - this.absoluteMinValuePrim) {
            setNormalizedMinValue(0.0d);
        } else {
            setNormalizedMinValue(valueToNormalized(f2));
        }
    }

    public float getSelectedMaxValue() {
        return normalizedToValue(this.normalizedMaxValue);
    }

    public void setSelectedMaxValue(float f2) {
        if (0.0f == this.absoluteMaxValuePrim - this.absoluteMinValuePrim) {
            setNormalizedMaxValue(1.0d);
        } else {
            setNormalizedMaxValue(valueToNormalized(f2));
        }
    }

    public float getSelectedScrubberValue() {
        return normalizedToValue(this.normalizedScrubberValue);
    }

    public void setSelectedScrubberValue(float f2) {
        if (0.0f == this.absoluteMaxValuePrim - this.absoluteMinValuePrim) {
            setNormalizedScrubberValue(0.5d);
        } else {
            setNormalizedScrubberValue(valueToNormalized(f2));
        }
    }

    public void setOnRangeSeekBarChangeListener(OnRangeSeekBarChangeListener onRangeSeekBarChangeListener) {
        this.listener = onRangeSeekBarChangeListener;
    }

    public void setSplitListener(SplitListener splitListener) {
        this.splitListener = splitListener;
    }

    private void notifySplitListener() {
        if (this.splitListener != null) {
            if (isSplitEnabled()) {
                this.splitListener.onSplitEnabled(this);
            } else {
                this.splitListener.onSplitDisabled(this);
            }
        }
    }

    public boolean isSplitEnabled() {
        return this.normalizedScrubberValue - this.normalizedMinValue >= this.minNormalizedTrimHandleDistance && this.normalizedMaxValue - this.normalizedScrubberValue >= this.minNormalizedTrimHandleDistance;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.mActivePointerId = motionEvent.getPointerId(motionEvent.getPointerCount() - 1);
                this.mDownMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
                this.pressedThumb = evalPressedThumb(this.mDownMotionX);
                if (this.pressedThumb == null) {
                    setScrubberPosition(motionEvent);
                    if (this.listener != null) {
                        this.listener.onThumbMoveStarted(Thumb.SCRUBBER);
                        this.listener.onThumbMoveEnded(Thumb.SCRUBBER);
                    }
                    notifySplitListener();
                } else {
                    if (Thumb.MIN.equals(this.pressedThumb)) {
                        this.thumbTouchDelta = normalizedToScreen(this.normalizedMinValue) - this.mDownMotionX;
                    } else if (Thumb.MAX.equals(this.pressedThumb)) {
                        this.thumbTouchDelta = normalizedToScreen(this.normalizedMaxValue) - this.mDownMotionX;
                    } else {
                        this.thumbTouchDelta = 0.0f;
                    }
                    if (this.listener != null) {
                        this.listener.onThumbMoveStarted(this.pressedThumb);
                        if (this.syncPoints != null) {
                            this.savedNormalizedMinValue = this.normalizedMinValue;
                        }
                    }
                    setPressed(true);
                    invalidate();
                    onStartTrackingTouch();
                    trackTouchEvent(motionEvent);
                    attemptClaimDrag();
                }
                break;
            case 1:
                if (this.mIsDragging) {
                    trackTouchEvent(motionEvent);
                    onStopTrackingTouch();
                    setPressed(false);
                } else {
                    onStartTrackingTouch();
                    trackTouchEvent(motionEvent);
                    onStopTrackingTouch();
                }
                if (this.syncPoints != null && Thumb.MAX.equals(this.pressedThumb) && this.snappedNormalMaxValue > 0.0d) {
                    setNormalizedMaxValue(this.snappedNormalMaxValue);
                }
                invalidate();
                if (this.listener != null && this.pressedThumb != null) {
                    this.listener.onThumbMoveEnded(this.pressedThumb);
                    notifySplitListener();
                }
                this.thumbTouchDelta = 0.0f;
                this.pressedThumb = null;
                break;
            case 2:
                if (this.pressedThumb != null) {
                    if (this.mIsDragging) {
                        trackTouchEvent(motionEvent);
                    } else if (Math.abs(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)) - this.mDownMotionX) > this.mScaledTouchSlop) {
                        setPressed(true);
                        invalidate();
                        onStartTrackingTouch();
                        trackTouchEvent(motionEvent);
                        attemptClaimDrag();
                    }
                    if (this.notifyWhileDragging && this.listener != null && this.pressedThumb != null) {
                        this.listener.onThumbMoved(this.pressedThumb);
                    }
                    if (this.notifyWhileDragging && Thumb.SCRUBBER.equals(this.pressedThumb)) {
                        notifySplitListener();
                    }
                    if (Thumb.MAX.equals(this.pressedThumb)) {
                        handleSnapToClosestBeat();
                    }
                }
                break;
            case 3:
                if (this.mIsDragging) {
                    onStopTrackingTouch();
                    setPressed(false);
                }
                invalidate();
                break;
            case 5:
                int pointerCount = motionEvent.getPointerCount() - 1;
                this.mDownMotionX = motionEvent.getX(pointerCount);
                this.mActivePointerId = motionEvent.getPointerId(pointerCount);
                invalidate();
                break;
            case 6:
                onSecondaryPointerUp(motionEvent);
                invalidate();
                break;
        }
        return true;
    }

    private final void onSecondaryPointerUp(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.mActivePointerId) {
            int i = action == 0 ? 1 : 0;
            this.mDownMotionX = motionEvent.getX(i);
            this.mActivePointerId = motionEvent.getPointerId(i);
        }
    }

    private final void trackTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)) + this.thumbTouchDelta;
        if (Thumb.MIN.equals(this.pressedThumb)) {
            setNormalizedMinValue(screenToNormalized(x));
        } else if (Thumb.MAX.equals(this.pressedThumb)) {
            setNormalizedMaxValue(screenToNormalized(x));
        } else if (Thumb.SCRUBBER.equals(this.pressedThumb)) {
            setNormalizedScrubberValue(screenToNormalized(x));
        }
    }

    private void setScrubberPosition(MotionEvent motionEvent) {
        setNormalizedScrubberValue(screenToNormalized(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId))));
    }

    private void attemptClaimDrag() {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
    }

    void onStartTrackingTouch() {
        this.mIsDragging = true;
    }

    void onStopTrackingTouch() {
        this.mIsDragging = false;
    }

    @Override // android.widget.ImageView, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getMode(i) != 0 ? View.MeasureSpec.getSize(i) : 200;
        int iMin = (int) this.seekbarHeight;
        if (View.MeasureSpec.getMode(i2) != 0) {
            iMin = Math.min(iMin, View.MeasureSpec.getSize(i2));
        }
        setMeasuredDimension(size, iMin);
    }

    @Override // android.widget.ImageView, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.backgroundRect == null) {
            this.backgroundRect = new RectF(this.padding, (getHeight() - this.lineHeight) * 0.5f, getWidth() - this.padding, (getHeight() + this.lineHeight) * 0.5f);
        }
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(Color.argb(127, 201, 201, 201));
        this.paint.setAntiAlias(true);
        double d2 = (this.syncPoints == null || !Thumb.MAX.equals(this.pressedThumb) || this.snappedNormalMaxValue <= 0.0d) ? this.normalizedMaxValue : this.snappedNormalMaxValue;
        float fNormalizedToScreen = normalizedToScreen(this.normalizedMinValue);
        float fNormalizedToScreen2 = normalizedToScreen(d2);
        this.paint.setColor(DEFAULT_COLOR);
        canvas.drawRect(fNormalizedToScreen, this.backgroundRect.top, fNormalizedToScreen2, this.backgroundRect.bottom, this.paint);
        float height = (getHeight() * 0.5f) - this.thumbHalfHeight;
        this.paint.setColor(Color.argb(255, 64, 64, 64));
        canvas.drawBitmap((this.trimHandlesDisabled || Thumb.MAX.equals(this.pressedThumb)) ? this.trimHandleInDisabled : this.trimhandleInImage, normalizedToScreen(this.normalizedMinValue) - this.trimhandleWidth, height, this.paint);
        canvas.drawBitmap((this.trimHandlesDisabled || Thumb.MIN.equals(this.pressedThumb)) ? this.trimHandleOutDisabled : this.trimhandleOutImage, normalizedToScreen(d2), height, this.paint);
        if (this.syncPoints != null && !this.trimHandlesDisabled) {
            if (!Thumb.MIN.equals(this.pressedThumb)) {
                this.savedNormalizedMinValue = this.normalizedMinValue;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.syncPoints.size()) {
                    break;
                }
                float f2 = (r0.time - this.offset) / this.duration;
                int i3 = ((int) (this.scaleFactor * ((double) (this.syncPoints.get(i2).intensity - this.minBeatValue)))) + this.minRadius;
                if (((double) f2) + this.savedNormalizedMinValue > 1.0d) {
                    break;
                }
                this.paint.setColor(-12303292);
                canvas.drawCircle(normalizedToScreen(((double) f2) + this.savedNormalizedMinValue), getHeight() * 0.5f, i3, this.paint);
                this.paint.setColor(-1);
                canvas.drawCircle(normalizedToScreen(((double) f2) + this.savedNormalizedMinValue), getHeight() * 0.5f, i3 - 1, this.paint);
                i = i2 + 1;
            }
        }
        canvas.drawBitmap(this.scrubberImage, normalizedToScreen(this.normalizedScrubberValue), (getHeight() * 0.5f) - (this.scrubberHeight / 2.0f), this.paint);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("SUPER", super.onSaveInstanceState());
        bundle.putDouble("MIN", this.normalizedMinValue);
        bundle.putDouble("MAX", this.normalizedMaxValue);
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("SUPER"));
        this.normalizedMinValue = bundle.getDouble("MIN");
        this.normalizedMaxValue = bundle.getDouble("MAX");
    }

    private void drawThumb(float f2, boolean z, Canvas canvas) {
        canvas.drawBitmap(z ? this.thumbPressedImage : this.trimhandleInImage, f2 - this.trimhandleHalfWidth, (0.5f * getHeight()) - this.thumbHalfHeight, this.paint);
    }

    private Thumb evalPressedThumb(float f2) {
        float distance = getDistance(f2, this.normalizedMinValue);
        float distance2 = getDistance(f2, this.normalizedMaxValue);
        float distance3 = getDistance(f2, this.normalizedScrubberValue);
        if (distance < distance2 && distance <= this.TOUCH_RADIUS) {
            if (distance3 < distance) {
                return Thumb.SCRUBBER;
            }
            return Thumb.MIN;
        }
        if (distance2 < distance3 && distance2 <= this.TOUCH_RADIUS) {
            if (distance < distance2) {
                return Thumb.MIN;
            }
            return Thumb.MAX;
        }
        if (distance3 >= distance || distance3 > this.TOUCH_RADIUS) {
            return null;
        }
        if (distance2 < distance3) {
            return Thumb.MAX;
        }
        return Thumb.SCRUBBER;
    }

    private float getDistance(float f2, double d2) {
        return Math.abs(f2 - normalizedToScreen(d2));
    }

    private boolean isInThumbRange(float f2, double d2) {
        return Math.abs(f2 - normalizedToScreen(d2)) <= this.TOUCH_RADIUS;
    }

    public void setNormalizedMinValue(double d2) {
        this.normalizedMinValue = Math.max(0.0d, Math.min(1.0d, Math.min(d2, this.normalizedMaxValue - this.minNormalizedTrimHandleDistance)));
        if (this.normalizedScrubberValue < this.normalizedMinValue) {
            this.normalizedScrubberValue = this.normalizedMinValue;
        }
        invalidate();
    }

    public void setNormalizedMaxValue(double d2) {
        setNormalizedMaxValue(d2, true);
    }

    private void setNormalizedMaxValue(double d2, boolean z) {
        this.normalizedMaxValue = Math.max(0.0d, Math.min(1.0d, Math.max(d2, this.normalizedMinValue + this.minNormalizedTrimHandleDistance)));
        if (this.normalizedScrubberValue > this.normalizedMaxValue) {
            this.normalizedScrubberValue = this.normalizedMaxValue - this.minNormalizedTrimHandleDistance;
        }
        if (z) {
            invalidate();
        }
    }

    public void setNormalizedScrubberValue(double d2) {
        if (d2 <= this.normalizedMaxValue && d2 >= this.normalizedMinValue) {
            this.normalizedScrubberValue = d2;
            invalidate();
        }
    }

    private float normalizedToValue(double d2) {
        return (float) (((double) this.absoluteMinValuePrim) + (((double) (this.absoluteMaxValuePrim - this.absoluteMinValuePrim)) * d2));
    }

    private double valueToNormalized(float f2) {
        if (0.0f == this.absoluteMaxValuePrim - this.absoluteMinValuePrim) {
            return 0.0d;
        }
        return (f2 - this.absoluteMinValuePrim) / (this.absoluteMaxValuePrim - this.absoluteMinValuePrim);
    }

    private float normalizedToScreen(double d2) {
        return (float) (((double) this.padding) + (((double) (getWidth() - (2.0f * this.padding))) * d2));
    }

    private double screenToNormalized(float f2) {
        if (getWidth() <= this.padding * 2.0f) {
            return 0.0d;
        }
        return Math.min(1.0d, Math.max(0.0d, (f2 - this.padding) / (r2 - (this.padding * 2.0f))));
    }

    private Bitmap createBitmapWithColorFilter(Bitmap bitmap, int i) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth() - 1, bitmap.getHeight() - 1);
        Paint paint = new Paint();
        paint.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_ATOP));
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
        return bitmapCreateBitmap;
    }

    private void handleSnapToClosestBeat() {
        double d2;
        if (this.syncPoints != null && this.syncPoints.size() > 0) {
            int iLower_bound = SnapToBeatController.lower_bound(this.syncPoints, (long) (this.normalizedMaxValue * this.duration));
            double d3 = 2.0d;
            if (iLower_bound != -1) {
                d2 = iLower_bound > 0 ? ((this.syncPoints.get(iLower_bound - 1).time - this.offset) / this.duration) + this.normalizedMinValue : -1.0d;
                d3 = ((this.syncPoints.get(iLower_bound).time - this.offset) / this.duration) + this.normalizedMinValue;
            } else {
                d2 = -1.0d;
            }
            if (this.normalizedMaxValue - d2 <= 0.02d) {
                if (d3 - this.normalizedMaxValue <= this.normalizedMaxValue - d2) {
                    setSnappedNormalMaxValue(d3);
                    return;
                } else {
                    setSnappedNormalMaxValue(d2);
                    return;
                }
            }
            if (d3 - this.normalizedMaxValue <= 0.02d) {
                setSnappedNormalMaxValue(d3);
            } else {
                this.snappedNormalMaxValue = -1.0d;
            }
        }
    }

    private void setSnappedNormalMaxValue(double d2) {
        double d3 = this.normalizedMaxValue;
        double d4 = this.normalizedScrubberValue;
        setNormalizedMaxValue(d2, false);
        if (Math.abs(d3 - d2) > 1.0E-4d) {
            this.snappedNormalMaxValue = d2;
            invalidate();
        } else {
            this.snappedNormalMaxValue = -1.0d;
            this.normalizedScrubberValue = d4;
        }
        this.normalizedMaxValue = d3;
    }

    private void setScaleFactor() {
        float f2 = this.syncPoints.get(0).intensity;
        this.scaleFactor = 1.0d;
        float f3 = f2;
        float f4 = f2;
        for (SnapToBeatController.SyncPoint syncPoint : this.syncPoints) {
            if (syncPoint.intensity > f4) {
                f4 = syncPoint.intensity;
            }
            f3 = syncPoint.intensity < f3 ? syncPoint.intensity : f3;
        }
        if (f4 != f3) {
            this.scaleFactor = (this.DEFAULT_MAX_RADIUS - this.DEFAULT_MIN_RADIUS) / (f4 - f3);
        }
        this.minBeatValue = f3;
    }

    public ArrayList<SnapToBeatController.SyncPoint> getSyncPoints() {
        return this.syncPoints;
    }

    public void setSyncPoints(ArrayList<SnapToBeatController.SyncPoint> arrayList, long j, long j2) {
        this.syncPoints = arrayList;
        this.duration = j;
        this.offset = j2;
        if (arrayList != null && arrayList.size() > 0) {
            setScaleFactor();
        }
    }

    public void disableInAndOutTrimHandle() {
        this.trimHandlesDisabled = true;
    }

    public void enableInAndOutTrimHandle() {
        this.trimHandlesDisabled = false;
        invalidate();
    }
}
