package com.behance.sdk.edmodo.cropper.util;

import android.content.Context;
import android.util.Pair;
import android.util.TypedValue;
import com.behance.sdk.edmodo.cropper.cropwindow.CropOverlayView;
import com.behance.sdk.edmodo.cropper.cropwindow.handle.Handle;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HandleUtil {
    private static final int TARGET_RADIUS_DP = 24;

    public static float getTargetRadius(Context context) {
        return TypedValue.applyDimension(1, 24.0f, context.getResources().getDisplayMetrics());
    }

    public static Handle getPressedHandle(float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        if (isInCornerTargetZone(f2, f3, f4, f5, f8)) {
            return Handle.TOP_LEFT;
        }
        if (isInCornerTargetZone(f2, f3, f6, f5, f8)) {
            return Handle.TOP_RIGHT;
        }
        if (isInCornerTargetZone(f2, f3, f4, f7, f8)) {
            return Handle.BOTTOM_LEFT;
        }
        if (isInCornerTargetZone(f2, f3, f6, f7, f8)) {
            return Handle.BOTTOM_RIGHT;
        }
        if (isInCenterTargetZone(f2, f3, f4, f5, f6, f7) && focusCenter()) {
            return Handle.CENTER;
        }
        if (isInHorizontalTargetZone(f2, f3, f4, f6, f5, f8)) {
            return Handle.TOP;
        }
        if (isInHorizontalTargetZone(f2, f3, f4, f6, f7, f8)) {
            return Handle.BOTTOM;
        }
        if (isInVerticalTargetZone(f2, f3, f4, f5, f7, f8)) {
            return Handle.LEFT;
        }
        if (isInVerticalTargetZone(f2, f3, f6, f5, f7, f8)) {
            return Handle.RIGHT;
        }
        if (!isInCenterTargetZone(f2, f3, f4, f5, f6, f7) || focusCenter()) {
            return null;
        }
        return Handle.CENTER;
    }

    public static Pair<Float, Float> getOffset(Handle handle, float f2, float f3, float f4, float f5, float f6, float f7) {
        float f8;
        float f9 = 0.0f;
        if (handle == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[handle.ordinal()]) {
            case 1:
                f8 = f4 - f2;
                f9 = f5 - f3;
                break;
            case 2:
                f8 = f6 - f2;
                f9 = f5 - f3;
                break;
            case 3:
                f8 = f4 - f2;
                f9 = f7 - f3;
                break;
            case 4:
                f8 = f6 - f2;
                f9 = f7 - f3;
                break;
            case 5:
                f8 = f4 - f2;
                break;
            case 6:
                f8 = 0.0f;
                f9 = f5 - f3;
                break;
            case 7:
                f8 = f6 - f2;
                break;
            case 8:
                f8 = 0.0f;
                f9 = f7 - f3;
                break;
            case 9:
                f8 = ((f6 + f4) / 2.0f) - f2;
                f9 = ((f5 + f7) / 2.0f) - f3;
                break;
            default:
                f8 = 0.0f;
                break;
        }
        return new Pair<>(Float.valueOf(f8), Float.valueOf(f9));
    }

    /* JADX INFO: renamed from: com.behance.sdk.edmodo.cropper.util.HandleUtil$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle = new int[Handle.values().length];

        static {
            try {
                $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[Handle.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[Handle.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[Handle.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[Handle.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[Handle.LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[Handle.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[Handle.RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[Handle.BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle[Handle.CENTER.ordinal()] = 9;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    private static boolean isInCornerTargetZone(float f2, float f3, float f4, float f5, float f6) {
        return Math.abs(f2 - f4) <= f6 && Math.abs(f3 - f5) <= f6;
    }

    private static boolean isInHorizontalTargetZone(float f2, float f3, float f4, float f5, float f6, float f7) {
        return f2 > f4 && f2 < f5 && Math.abs(f3 - f6) <= f7;
    }

    private static boolean isInVerticalTargetZone(float f2, float f3, float f4, float f5, float f6, float f7) {
        return Math.abs(f2 - f4) <= f7 && f3 > f5 && f3 < f6;
    }

    private static boolean isInCenterTargetZone(float f2, float f3, float f4, float f5, float f6, float f7) {
        return f2 > f4 && f2 < f6 && f3 > f5 && f3 < f7;
    }

    private static boolean focusCenter() {
        return !CropOverlayView.showGuidelines();
    }
}
