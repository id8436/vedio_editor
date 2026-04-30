package com.adobe.premiereclip.util;

import android.app.Activity;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenUtils {
    public static void fullscreen(Activity activity) {
        activity.getWindow().getDecorView().setSystemUiVisibility(5894);
    }
}
