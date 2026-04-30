package com.adobe.creativesdk.foundation.internal.utils;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import com.adobe.customextractor.Constants;
import com.j.a.a;

/* JADX INFO: loaded from: classes2.dex */
public class UiUtils {
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isTabletDevice(android.app.Activity r6) {
        /*
            r0 = 1
            r1 = 0
            android.content.res.Resources r2 = r6.getResources()
            android.content.res.Configuration r2 = r2.getConfiguration()
            int r2 = r2.screenLayout
            r2 = r2 & 15
            r3 = 3
            if (r2 < r3) goto L39
            r3 = r0
        L12:
            if (r3 == 0) goto L3d
            android.content.res.Resources r2 = r6.getResources()
            android.util.DisplayMetrics r2 = r2.getDisplayMetrics()
            int r4 = r2.widthPixels
            float r4 = (float) r4
            float r5 = r2.density
            float r4 = r4 / r5
            int r5 = r2.heightPixels
            float r5 = (float) r5
            float r2 = r2.density
            float r2 = r5 / r2
            float r2 = java.lang.Math.min(r4, r2)
            r4 = 1142292480(0x44160000, float:600.0)
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 < 0) goto L3d
            r2 = r0
        L34:
            if (r3 == 0) goto L3b
            if (r2 == 0) goto L3b
        L38:
            return r0
        L39:
            r3 = r1
            goto L12
        L3b:
            r0 = r1
            goto L38
        L3d:
            r2 = r1
            goto L34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.utils.UiUtils.isTabletDevice(android.app.Activity):boolean");
    }

    public static int getStatusBarHeight(Activity activity) {
        return new a(activity).a().b();
    }

    public static void setStatusBarHeight(Activity activity, int i, View view, boolean z) {
        if (z) {
            view.getLayoutParams().height = 0;
            return;
        }
        if (getHasTranslucentNav(activity)) {
            if (Build.VERSION.SDK_INT >= 24 && activity.isInMultiWindowMode()) {
                view.getLayoutParams().height = 0;
                return;
            } else {
                view.getLayoutParams().height = getStatusBarHeight(activity);
                return;
            }
        }
        if (Build.VERSION.SDK_INT >= 24 && activity.isInMultiWindowMode()) {
            view.getLayoutParams().height = getStatusBarHeight(activity);
        } else {
            view.getLayoutParams().height = 0;
        }
    }

    public static void handleTranslucency(Activity activity, int i, View view, View view2, boolean z) {
        setStatusBarHeight(activity, i, view, z);
        if (z) {
            adjustLayout(true, activity, view2);
        } else if (getHasTranslucentNav(activity)) {
            if (Build.VERSION.SDK_INT >= 24 && activity.isInMultiWindowMode()) {
                adjustLayout(true, activity, view2);
            } else {
                adjustLayout(false, activity, view2);
            }
        } else if (Build.VERSION.SDK_INT >= 24 && activity.isInMultiWindowMode()) {
            adjustLayout(false, activity, view2);
        } else {
            adjustLayout(true, activity, view2);
        }
        view2.requestLayout();
    }

    private static void adjustLayout(boolean z, Activity activity, View view) {
        if (z) {
            activity.getWindow().clearFlags(Constants.SAMPLE_FLAG_DECODE_ONLY);
            view.setFitsSystemWindows(true);
        } else {
            view.setFitsSystemWindows(false);
            activity.getWindow().addFlags(Constants.SAMPLE_FLAG_DECODE_ONLY);
        }
    }

    private static int getSoftButtonsBarSizePort(Activity activity) {
        if (Build.VERSION.SDK_INT < 17) {
            return 0;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        int i2 = displayMetrics.heightPixels;
        if (i2 > i) {
            return i2 - i;
        }
        return 0;
    }

    private static boolean getHasTranslucentNav(Activity activity) {
        return getSoftButtonsBarSizePort(activity) > 0 && (isTabletDevice(activity) || activity.getResources().getConfiguration().orientation == 1);
    }

    public static int getNavBarHeightInternal(Context context) {
        int identifier;
        boolean zHasPermanentMenuKey = ViewConfiguration.get(context).hasPermanentMenuKey();
        boolean zDeviceHasKey = KeyCharacterMap.deviceHasKey(4);
        if (!zHasPermanentMenuKey || !zDeviceHasKey) {
            Resources resources = context.getResources();
            int i = context.getResources().getConfiguration().orientation;
            if (isTablet(context)) {
                identifier = resources.getIdentifier(i == 1 ? "navigation_bar_height" : "navigation_bar_height_landscape", "dimen", c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE);
            } else {
                identifier = resources.getIdentifier(i == 1 ? "navigation_bar_height" : "navigation_bar_width", "dimen", c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE);
            }
            if (identifier > 0) {
                return context.getResources().getDimensionPixelSize(identifier);
            }
        }
        return 0;
    }

    private static boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
