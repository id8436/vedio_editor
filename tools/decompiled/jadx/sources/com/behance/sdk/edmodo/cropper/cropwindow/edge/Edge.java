package com.behance.sdk.edmodo.cropper.cropwindow.edge;

import android.graphics.Rect;
import android.view.View;
import com.behance.sdk.edmodo.cropper.util.AspectRatioUtil;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public enum Edge {
    LEFT,
    TOP,
    RIGHT,
    BOTTOM;

    public static int MIN_CROP_LENGTH_PX = 40;
    private float mCoordinate;

    public void setCoordinate(float f2) {
        this.mCoordinate = f2;
    }

    public void offset(float f2) {
        this.mCoordinate += f2;
    }

    public float getCoordinate() {
        return this.mCoordinate;
    }

    public void adjustCoordinate(float f2, float f3, Rect rect, float f4, float f5) {
        switch (this) {
            case LEFT:
                this.mCoordinate = adjustLeft(f2, rect, f4, f5);
                break;
            case TOP:
                this.mCoordinate = adjustTop(f3, rect, f4, f5);
                break;
            case RIGHT:
                this.mCoordinate = adjustRight(f2, rect, f4, f5);
                break;
            case BOTTOM:
                this.mCoordinate = adjustBottom(f3, rect, f4, f5);
                break;
        }
    }

    public void adjustCoordinate(float f2) {
        float coordinate = LEFT.getCoordinate();
        float coordinate2 = TOP.getCoordinate();
        float coordinate3 = RIGHT.getCoordinate();
        float coordinate4 = BOTTOM.getCoordinate();
        switch (this) {
            case LEFT:
                this.mCoordinate = AspectRatioUtil.calculateLeft(coordinate2, coordinate3, coordinate4, f2);
                break;
            case TOP:
                this.mCoordinate = AspectRatioUtil.calculateTop(coordinate, coordinate3, coordinate4, f2);
                break;
            case RIGHT:
                this.mCoordinate = AspectRatioUtil.calculateRight(coordinate, coordinate2, coordinate4, f2);
                break;
            case BOTTOM:
                this.mCoordinate = AspectRatioUtil.calculateBottom(coordinate, coordinate2, coordinate3, f2);
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean isNewRectangleOutOfBounds(Edge edge, Rect rect, float f2) {
        float fSnapOffset = edge.snapOffset(rect);
        switch (this) {
            case LEFT:
                if (edge.equals(TOP)) {
                    float f3 = rect.top;
                    float coordinate = BOTTOM.getCoordinate() - fSnapOffset;
                    float coordinate2 = RIGHT.getCoordinate();
                    return isOutOfBounds(f3, AspectRatioUtil.calculateLeft(f3, coordinate2, coordinate, f2), coordinate, coordinate2, rect);
                }
                if (edge.equals(BOTTOM)) {
                    float f4 = rect.bottom;
                    float coordinate3 = TOP.getCoordinate() - fSnapOffset;
                    float coordinate4 = RIGHT.getCoordinate();
                    return isOutOfBounds(coordinate3, AspectRatioUtil.calculateLeft(coordinate3, coordinate4, f4, f2), f4, coordinate4, rect);
                }
                return true;
            case TOP:
                if (edge.equals(LEFT)) {
                    float f5 = rect.left;
                    float coordinate5 = RIGHT.getCoordinate() - fSnapOffset;
                    float coordinate6 = BOTTOM.getCoordinate();
                    return isOutOfBounds(AspectRatioUtil.calculateTop(f5, coordinate5, coordinate6, f2), f5, coordinate6, coordinate5, rect);
                }
                if (edge.equals(RIGHT)) {
                    float f6 = rect.right;
                    float coordinate7 = LEFT.getCoordinate() - fSnapOffset;
                    float coordinate8 = BOTTOM.getCoordinate();
                    return isOutOfBounds(AspectRatioUtil.calculateTop(coordinate7, f6, coordinate8, f2), coordinate7, coordinate8, f6, rect);
                }
                return true;
            case RIGHT:
                if (edge.equals(TOP)) {
                    float f7 = rect.top;
                    float coordinate9 = BOTTOM.getCoordinate() - fSnapOffset;
                    float coordinate10 = LEFT.getCoordinate();
                    return isOutOfBounds(f7, coordinate10, coordinate9, AspectRatioUtil.calculateRight(coordinate10, f7, coordinate9, f2), rect);
                }
                if (edge.equals(BOTTOM)) {
                    float f8 = rect.bottom;
                    float coordinate11 = TOP.getCoordinate() - fSnapOffset;
                    float coordinate12 = LEFT.getCoordinate();
                    return isOutOfBounds(coordinate11, coordinate12, f8, AspectRatioUtil.calculateRight(coordinate12, coordinate11, f8, f2), rect);
                }
                return true;
            case BOTTOM:
                if (edge.equals(LEFT)) {
                    float f9 = rect.left;
                    float coordinate13 = RIGHT.getCoordinate() - fSnapOffset;
                    float coordinate14 = TOP.getCoordinate();
                    return isOutOfBounds(coordinate14, f9, AspectRatioUtil.calculateBottom(f9, coordinate14, coordinate13, f2), coordinate13, rect);
                }
                if (edge.equals(RIGHT)) {
                    float f10 = rect.right;
                    float coordinate15 = LEFT.getCoordinate() - fSnapOffset;
                    float coordinate16 = TOP.getCoordinate();
                    return isOutOfBounds(coordinate16, coordinate15, AspectRatioUtil.calculateBottom(coordinate15, coordinate16, f10, f2), f10, rect);
                }
                return true;
            default:
                return true;
        }
    }

    private boolean isOutOfBounds(float f2, float f3, float f4, float f5, Rect rect) {
        return f2 < ((float) rect.top) || f3 < ((float) rect.left) || f4 > ((float) rect.bottom) || f5 > ((float) rect.right);
    }

    public float snapToRect(Rect rect) {
        float f2 = this.mCoordinate;
        switch (this) {
            case LEFT:
                this.mCoordinate = rect.left;
                break;
            case TOP:
                this.mCoordinate = rect.top;
                break;
            case RIGHT:
                this.mCoordinate = rect.right;
                break;
            case BOTTOM:
                this.mCoordinate = rect.bottom;
                break;
        }
        return this.mCoordinate - f2;
    }

    public float snapOffset(Rect rect) {
        float f2;
        float f3 = this.mCoordinate;
        switch (this) {
            case LEFT:
                f2 = rect.left;
                break;
            case TOP:
                f2 = rect.top;
                break;
            case RIGHT:
                f2 = rect.right;
                break;
            case BOTTOM:
                f2 = rect.bottom;
                break;
            default:
                f2 = f3;
                break;
        }
        return f2 - f3;
    }

    public void snapToView(View view) {
        switch (this) {
            case LEFT:
                this.mCoordinate = 0.0f;
                break;
            case TOP:
                this.mCoordinate = 0.0f;
                break;
            case RIGHT:
                this.mCoordinate = view.getWidth();
                break;
            case BOTTOM:
                this.mCoordinate = view.getHeight();
                break;
        }
    }

    public static float getWidth() {
        return RIGHT.getCoordinate() - LEFT.getCoordinate();
    }

    public static float getHeight() {
        return BOTTOM.getCoordinate() - TOP.getCoordinate();
    }

    public boolean isOutsideMargin(Rect rect, float f2) {
        switch (this) {
            case LEFT:
                return this.mCoordinate - ((float) rect.left) < f2;
            case TOP:
                return this.mCoordinate - ((float) rect.top) < f2;
            case RIGHT:
                return ((float) rect.right) - this.mCoordinate < f2;
            case BOTTOM:
                return ((float) rect.bottom) - this.mCoordinate < f2;
            default:
                return false;
        }
    }

    public boolean isOutsideFrame(Rect rect) {
        switch (this) {
            case LEFT:
                return ((double) (this.mCoordinate - ((float) rect.left))) < 0.0d;
            case TOP:
                return ((double) (this.mCoordinate - ((float) rect.top))) < 0.0d;
            case RIGHT:
                return ((double) (((float) rect.right) - this.mCoordinate)) < 0.0d;
            case BOTTOM:
                return ((double) (((float) rect.bottom) - this.mCoordinate)) < 0.0d;
            default:
                return false;
        }
    }

    private static float adjustLeft(float f2, Rect rect, float f3, float f4) {
        if (f2 - rect.left < f3) {
            return rect.left;
        }
        return Math.min(f2, Math.min(f2 >= RIGHT.getCoordinate() - ((float) MIN_CROP_LENGTH_PX) ? RIGHT.getCoordinate() - MIN_CROP_LENGTH_PX : Float.POSITIVE_INFINITY, (RIGHT.getCoordinate() - f2) / f4 <= ((float) MIN_CROP_LENGTH_PX) ? RIGHT.getCoordinate() - (MIN_CROP_LENGTH_PX * f4) : Float.POSITIVE_INFINITY));
    }

    private static float adjustRight(float f2, Rect rect, float f3, float f4) {
        if (rect.right - f2 < f3) {
            return rect.right;
        }
        return Math.max(f2, Math.max(f2 <= LEFT.getCoordinate() + ((float) MIN_CROP_LENGTH_PX) ? LEFT.getCoordinate() + MIN_CROP_LENGTH_PX : Float.NEGATIVE_INFINITY, (f2 - LEFT.getCoordinate()) / f4 <= ((float) MIN_CROP_LENGTH_PX) ? LEFT.getCoordinate() + (MIN_CROP_LENGTH_PX * f4) : Float.NEGATIVE_INFINITY));
    }

    private static float adjustTop(float f2, Rect rect, float f3, float f4) {
        if (f2 - rect.top < f3) {
            return rect.top;
        }
        return Math.min(f2, Math.min(f2 >= BOTTOM.getCoordinate() - ((float) MIN_CROP_LENGTH_PX) ? BOTTOM.getCoordinate() - MIN_CROP_LENGTH_PX : Float.POSITIVE_INFINITY, (BOTTOM.getCoordinate() - f2) * f4 <= ((float) MIN_CROP_LENGTH_PX) ? BOTTOM.getCoordinate() - (MIN_CROP_LENGTH_PX / f4) : Float.POSITIVE_INFINITY));
    }

    private static float adjustBottom(float f2, Rect rect, float f3, float f4) {
        if (rect.bottom - f2 < f3) {
            return rect.bottom;
        }
        return Math.max(f2, Math.max((f2 - TOP.getCoordinate()) * f4 <= ((float) MIN_CROP_LENGTH_PX) ? TOP.getCoordinate() + (MIN_CROP_LENGTH_PX / f4) : Float.NEGATIVE_INFINITY, f2 <= TOP.getCoordinate() + ((float) MIN_CROP_LENGTH_PX) ? TOP.getCoordinate() + MIN_CROP_LENGTH_PX : Float.NEGATIVE_INFINITY));
    }
}
