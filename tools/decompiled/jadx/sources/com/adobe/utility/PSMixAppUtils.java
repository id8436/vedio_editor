package com.adobe.utility;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes2.dex */
public class PSMixAppUtils {
    public static final String appName = "Photoshop Mix";

    public static String appVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            return "1.0";
        }
    }
}
