package com.adobe.creativeapps.settings.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.adobe.creativeapps.settings.activity.CloudPickerActivity;

/* JADX INFO: loaded from: classes.dex */
public class Navigator {

    public enum LAUNCH_STYLE {
        SLIDE_FROM_TOP,
        SLIDE_FROM_BOTTOM
    }

    private static void launchActivity(Activity activity, Class<?> cls, int i, Bundle bundle, boolean z, LAUNCH_STYLE launch_style, boolean z2) {
        Intent intent = new Intent(activity.getApplicationContext(), cls);
        intent.addFlags(16777216);
        if (z) {
            intent.addFlags(67141632);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        activity.startActivityForResult(intent, i);
        if (z2) {
            activity.finish();
        }
    }

    private static void launchActivity(Activity activity, Class<?> cls, int i) {
        launchActivity(activity, cls, i, null, false, null, false);
    }

    private static void launchActivity(Activity activity, Class<?> cls, int i, Bundle bundle) {
        launchActivity(activity, cls, i, bundle, false, null, false);
    }

    public static void goToCloudPickerActivity(Activity activity, Integer num) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) CloudPickerActivity.class), num.intValue());
    }
}
