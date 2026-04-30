package com.adobe.premiereclip.util;

import android.annotation.TargetApi;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class LollipopUtils {
    @TargetApi(21)
    public static void setElevation(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            ViewCompat.setElevation(view, f2);
        }
    }
}
