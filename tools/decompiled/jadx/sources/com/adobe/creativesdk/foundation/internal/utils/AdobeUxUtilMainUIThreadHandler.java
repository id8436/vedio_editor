package com.adobe.creativesdk.foundation.internal.utils;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUxUtilMainUIThreadHandler {
    private static Handler mUIThreadHandler;

    public static void initialize(Context context) {
        if (mUIThreadHandler == null) {
            mUIThreadHandler = new Handler(context.getMainLooper());
        }
    }

    public static Handler getHandler() {
        if (mUIThreadHandler == null) {
            mUIThreadHandler = new Handler(Looper.getMainLooper());
        }
        return mUIThreadHandler;
    }
}
