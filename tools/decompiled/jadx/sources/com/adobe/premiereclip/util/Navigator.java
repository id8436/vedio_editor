package com.adobe.premiereclip.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.adobe.premiereclip.MainActivity;
import com.adobe.premiereclip.SplashScreenActivity;
import com.adobe.premiereclip.TourViewActivity;

/* JADX INFO: loaded from: classes2.dex */
public class Navigator {

    public enum LAUNCH_STYLE {
        SLIDE_FROM_TOP,
        SLIDE_FROM_BOTTOM
    }

    private static void launchActivity(Activity activity, Class<?> cls, Bundle bundle, boolean z, LAUNCH_STYLE launch_style, boolean z2) {
        Context applicationContext = activity.getApplicationContext();
        Intent intent = new Intent(applicationContext, cls);
        intent.addFlags(268435456);
        if (z) {
            intent.addFlags(67141632);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        applicationContext.startActivity(intent);
        if (z2) {
            activity.finish();
        }
    }

    private static void launchActivity(Activity activity, Class<?> cls) {
        launchActivity(activity, cls, null, false, null, false);
    }

    private static void launchActivity(Activity activity, Class<?> cls, boolean z) {
        launchActivity(activity, cls, null, z, null, false);
    }

    public static void goToSplashActivity(Activity activity) {
        launchActivity(activity, SplashScreenActivity.class, true);
    }

    public static void goToLoginActivity(Activity activity) {
        launchActivity(activity, TourViewActivity.class, true);
    }

    public static void goToMainActivity(Activity activity) {
        launchActivity(activity, MainActivity.class, true);
    }
}
