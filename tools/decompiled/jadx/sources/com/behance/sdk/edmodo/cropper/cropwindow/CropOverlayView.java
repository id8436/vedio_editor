package com.behance.sdk.edmodo.cropper.cropwindow;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.behance.sdk.edmodo.cropper.cropwindow.edge.Edge;
import com.behance.sdk.edmodo.cropper.cropwindow.handle.Handle;
import com.behance.sdk.edmodo.cropper.util.AspectRatioUtil;
import com.behance.sdk.edmodo.cropper.util.HandleUtil;
import com.behance.sdk.edmodo.cropper.util.PaintUtil;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class CropOverlayView extends View {
    private static final float DEFAULT_CORNER_LENGTH_DP = 20.0f;
    private static final float DEFAULT_SHOW_GUIDELINES_LIMIT = 100.0f;
    private static final int GUIDELINES_OFF = 0;
    private static final int GUIDELINES_ON = 2;
    private static final int GUIDELINES_ON_TOUCH = 1;
    private static final int SNAP_RADIUS_DP = 6;
    private boolean initializedCropWindow;
    private int mAspectRatioX;
    private int mAspectRatioY;
    private Paint mBackgroundPaint;
    private Rect mBitmapRect;
    private Paint mBorderPaint;
    private float mCornerExtension;
    private float mCornerLength;
    private float mCornerOffset;
    private Paint mCornerPaint;
    private boolean mFixAspectRatio;
    private Paint mGuidelinePaint;
    private int mGuidelines;
    private float mHandleRadius;
    private Handle mPressedHandle;
    private float mSnapRadius;
    private float mTargetAspectRatio;
    private Pair<Float, Float> mTouchOffset;
    private static final float DEFAULT_CORNER_THICKNESS_DP = PaintUtil.getCornerThickness();
    private static final float DEFAULT_LINE_THICKNESS_DP = PaintUtil.getLineThickness();
    private static final float DEFAULT_CORNER_OFFSET_DP = (DEFAULT_CORNER_THICKNESS_DP / 2.0f) - (DEFAULT_LINE_THICKNESS_DP / 2.0f);
    private static final float DEFAULT_CORNER_EXTENSION_DP = (DEFAULT_CORNER_THICKNESS_DP / 2.0f) + DEFAULT_CORNER_OFFSET_DP;

    public CropOverlayView(Context context) {
        super(context);
        this.mFixAspectRatio = false;
        this.mAspectRatioX = 1;
        this.mAspectRatioY = 1;
        this.mTargetAspectRatio = this.mAspectRatioX / this.mAspectRatioY;
        this.initializedCropWindow = false;
        init(context);
    }

    public CropOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFixAspectRatio = false;
        this.mAspectRatioX = 1;
        this.mAspectRatioY = 1;
        this.mTargetAspectRatio = this.mAspectRatioX / this.mAspectRatioY;
        this.initializedCropWindow = false;
        init(context);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        initCropWindow(this.mBitmapRect);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawBackground(canvas, this.mBitmapRect);
        if (showGuidelines()) {
            if (this.mGuidelines == 2) {
                drawRuleOfThirdsGuidelines(canvas);
            } else if (this.mGuidelines == 1) {
                if (this.mPressedHandle != null) {
                    drawRuleOfThirdsGuidelines(canvas);
                }
            } else if (this.mGuidelines == 0) {
            }
        }
        canvas.drawRect(Edge.LEFT.getCoordinate(), Edge.TOP.getCoordinate(), Edge.RIGHT.getCoordinate(), Edge.BOTTOM.getCoordinate(), this.mBorderPaint);
        drawCorners(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                onActionDown(motionEvent.getX(), motionEvent.getY());
                return true;
            case 1:
            case 3:
                getParent().requestDisallowInterceptTouchEvent(false);
                onActionUp();
                return true;
            case 2:
                onActionMove(motionEvent.getX(), motionEvent.getY());
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            default:
                return false;
        }
    }

    public void setBitmapRect(Rect rect) {
        this.mBitmapRect = rect;
        initCropWindow(this.mBitmapRect);
    }

    public void resetCropOverlayView() {
        if (this.initializedCropWindow) {
            initCropWindow(this.mBitmapRect);
            invalidate();
        }
    }

    public void setGuidelines(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("Guideline value must be set between 0 and 2. See documentation.");
        }
        this.mGuidelines = i;
        if (this.initializedCropWindow) {
            initCropWindow(this.mBitmapRect);
            invalidate();
        }
    }

    public void setFixedAspectRatio(boolean z) {
        this.mFixAspectRatio = z;
        if (this.initializedCropWindow) {
            initCropWindow(this.mBitmapRect);
            invalidate();
        }
    }

    public void setAspectRatioX(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        }
        this.mAspectRatioX = i;
        this.mTargetAspectRatio = this.mAspectRatioX / this.mAspectRatioY;
        if (this.initializedCropWindow) {
            initCropWindow(this.mBitmapRect);
            invalidate();
        }
    }

    public void setAspectRatioY(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        }
        this.mAspectRatioY = i;
        this.mTargetAspectRatio = this.mAspectRatioX / this.mAspectRatioY;
        if (this.initializedCropWindow) {
            initCropWindow(this.mBitmapRect);
            invalidate();
        }
    }

    public void setInitialAttributeValues(int i, boolean z, int i2, int i3) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("Guideline value must be set between 0 and 2. See documentation.");
        }
        this.mGuidelines = i;
        this.mFixAspectRatio = z;
        if (i2 <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        }
        this.mAspectRatioX = i2;
        this.mTargetAspectRatio = this.mAspectRatioX / this.mAspectRatioY;
        if (i3 <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        }
        this.mAspectRatioY = i3;
        this.mTargetAspectRatio = this.mAspectRatioX / this.mAspectRatioY;
    }

    private void init(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.mHandleRadius = HandleUtil.getTargetRadius(context);
        this.mSnapRadius = TypedValue.applyDimension(1, 6.0f, displayMetrics);
        this.mBorderPaint = PaintUtil.newBorderPaint(context);
        this.mGuidelinePaint = PaintUtil.newGuidelinePaint();
        this.mBackgroundPaint = PaintUtil.newBackgroundPaint(context);
        this.mCornerPaint = PaintUtil.newCornerPaint(context);
        this.mCornerOffset = TypedValue.applyDimension(1, DEFAULT_CORNER_OFFSET_DP, displayMetrics);
        this.mCornerExtension = TypedValue.applyDimension(1, DEFAULT_CORNER_EXTENSION_DP, displayMetrics);
        this.mCornerLength = TypedValue.applyDimension(1, DEFAULT_CORNER_LENGTH_DP, displayMetrics);
        this.mGuidelines = 1;
    }

    private void initCropWindow(Rect rect) {
        if (!this.initializedCropWindow) {
            this.initializedCropWindow = true;
        }
        if (!this.mFixAspectRatio) {
            float fWidth = rect.width() * 0.1f;
            float fHeight = rect.height() * 0.1f;
            Edge.LEFT.setCoordinate(rect.left + fWidth);
            Edge.TOP.setCoordinate(rect.top + fHeight);
            Edge.RIGHT.setCoordinate(rect.right - fWidth);
            Edge.BOTTOM.setCoordinate(rect.bottom - fHeight);
            return;
        }
        if (AspectRatioUtil.calculateAspectRatio(rect) > this.mTargetAspectRatio) {
            Edge.TOP.setCoordinate(rect.top);
            Edge.BOTTOM.setCoordinate(rect.bottom);
            float width = getWidth() / 2.0f;
            float fCalculateWidth = AspectRatioUtil.calculateWidth(Edge.TOP.getCoordinate(), Edge.BOTTOM.getCoordinate(), this.mTargetAspectRatio) / 2.0f;
            Edge.LEFT.setCoordinate(width - fCalculateWidth);
            Edge.RIGHT.setCoordinate(width + fCalculateWidth);
            return;
        }
        Edge.LEFT.setCoordinate(rect.left);
        Edge.RIGHT.setCoordinate(rect.right);
        float height = getHeight() / 2.0f;
        float fCalculateHeight = AspectRatioUtil.calculateHeight(Edge.LEFT.getCoordinate(), Edge.RIGHT.getCoordinate(), this.mTargetAspectRatio) / 2.0f;
        Edge.TOP.setCoordinate(height - fCalculateHeight);
        Edge.BOTTOM.setCoordinate(height + fCalculateHeight);
    }

    public static boolean showGuidelines() {
        return Math.abs(Edge.LEFT.getCoordinate() - Edge.RIGHT.getCoordinate()) >= DEFAULT_SHOW_GUIDELINES_LIMIT && Math.abs(Edge.TOP.getCoordinate() - Edge.BOTTOM.getCoordinate()) >= DEFAULT_SHOW_GUIDELINES_LIMIT;
    }

    private void drawRuleOfThirdsGuidelines(Canvas canvas) {
        float coordinate = Edge.LEFT.getCoordinate();
        float coordinate2 = Edge.TOP.getCoordinate();
        float coordinate3 = Edge.RIGHT.getCoordinate();
        float coordinate4 = Edge.BOTTOM.getCoordinate();
        float width = Edge.getWidth() / 3.0f;
        float f2 = coordinate + width;
        canvas.drawLine(f2, coordinate2, f2, coordinate4, this.mGuidelinePaint);
        float f3 = coordinate3 - width;
        canvas.drawLine(f3, coordinate2, f3, coordinate4, this.mGuidelinePaint);
        float height = Edge.getHeight() / 3.0f;
        float f4 = coordinate2 + height;
        canvas.drawLine(coordinate, f4, coordinate3, f4, this.mGuidelinePaint);
        float f5 = coordinate4 - height;
        canvas.drawLine(coordinate, f5, coordinate3, f5, this.mGuidelinePaint);
    }

    private void drawBackground(Canvas canvas, Rect rect) {
        float coordinate = Edge.LEFT.getCoordinate();
        float coordinate2 = Edge.TOP.getCoordinate();
        float coordinate3 = Edge.RIGHT.getCoordinate();
        float coordinate4 = Edge.BOTTOM.getCoordinate();
        canvas.drawRect(rect.left, rect.top, rect.right, coordinate2, this.mBackgroundPaint);
        canvas.drawRect(rect.left, coordinate4, rect.right, rect.bottom, this.mBackgroundPaint);
        canvas.drawRect(rect.left, coordinate2, coordinate, coordinate4, this.mBackgroundPaint);
        canvas.drawRect(coordinate3, coordinate2, rect.right, coordinate4, this.mBackgroundPaint);
    }

    private void drawCorners(Canvas canvas) {
        float coordinate = Edge.LEFT.getCoordinate();
        float coordinate2 = Edge.TOP.getCoordinate();
        float coordinate3 = Edge.RIGHT.getCoordinate();
        float coordinate4 = Edge.BOTTOM.getCoordinate();
        canvas.drawLine(coordinate - this.mCornerOffset, coordinate2 - this.mCornerExtension, coordinate - this.mCornerOffset, coordinate2 + this.mCornerLength, this.mCornerPaint);
        canvas.drawLine(coordinate, coordinate2 - this.mCornerOffset, coordinate + this.mCornerLength, coordinate2 - this.mCornerOffset, this.mCornerPaint);
        canvas.drawLine(coordinate3 + this.mCornerOffset, coordinate2 - this.mCornerExtension, coordinate3 + this.mCornerOffset, coordinate2 + this.mCornerLength, this.mCornerPaint);
        canvas.drawLine(coordinate3, coordinate2 - this.mCornerOffset, coordinate3 - this.mCornerLength, coordinate2 - this.mCornerOffset, this.mCornerPaint);
        canvas.drawLine(coordinate - this.mCornerOffset, coordinate4 + this.mCornerExtension, coordinate - this.mCornerOffset, coordinate4 - this.mCornerLength, this.mCornerPaint);
        canvas.drawLine(coordinate, coordinate4 + this.mCornerOffset, coordinate + this.mCornerLength, coordinate4 + this.mCornerOffset, this.mCornerPaint);
        canvas.drawLine(coordinate3 + this.mCornerOffset, coordinate4 + this.mCornerExtension, coordinate3 + this.mCornerOffset, coordinate4 - this.mCornerLength, this.mCornerPaint);
        canvas.drawLine(coordinate3, coordinate4 + this.mCornerOffset, coordinate3 - this.mCornerLength, coordinate4 + this.mCornerOffset, this.mCornerPaint);
    }

    private void onActionDown(float f2, float f3) {
        float coordinate = Edge.LEFT.getCoordinate();
        float coordinate2 = Edge.TOP.getCoordinate();
        float coordinate3 = Edge.RIGHT.getCoordinate();
        float coordinate4 = Edge.BOTTOM.getCoordinate();
        this.mPressedHandle = HandleUtil.getPressedHandle(f2, f3, coordinate, coordinate2, coordinate3, coordinate4, this.mHandleRadius);
        if (this.mPressedHandle != null) {
            this.mTouchOffset = HandleUtil.getOffset(this.mPressedHandle, f2, f3, coordinate, coordinate2, coordinate3, coordinate4);
            invalidate();
        }
    }

    private void onActionUp() {
        if (this.mPressedHandle != null) {
            this.mPressedHandle = null;
            invalidate();
        }
    }

    private void onActionMove(float f2, float f3) {
        if (this.mPressedHandle != null) {
            float fFloatValue = f2 + ((Float) this.mTouchOffset.first).floatValue();
            float fFloatValue2 = f3 + ((Float) this.mTouchOffset.second).floatValue();
            if (this.mFixAspectRatio) {
                this.mPressedHandle.updateCropWindow(fFloatValue, fFloatValue2, this.mTargetAspectRatio, this.mBitmapRect, this.mSnapRadius);
            } else {
                this.mPressedHandle.updateCropWindow(fFloatValue, fFloatValue2, this.mBitmapRect, this.mSnapRadius);
            }
            invalidate();
        }
    }
}
