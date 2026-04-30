package com.adobe.creativesdk.foundation.internal.utils;

import android.app.Activity;
import android.os.Build;
import android.util.DisplayMetrics;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class NavBarUtil {
    public static int getSoftButtonsBarSizePort(Activity activity) {
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

    public static boolean getHasTranslucentNav(Activity activity) {
        return getSoftButtonsBarSizePort(activity) > 0 && (activity.getResources().getBoolean(R.bool.tablet) || activity.getResources().getConfiguration().orientation == 1);
    }

    public static int getTranslucentNavHeight(Activity activity) {
        if (getHasTranslucentNav(activity)) {
            return activity.getResources().getDimensionPixelSize(R.dimen.nav_bar_height);
        }
        return 0;
    }
}
