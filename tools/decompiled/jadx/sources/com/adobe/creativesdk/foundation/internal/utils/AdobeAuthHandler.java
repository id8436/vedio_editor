package com.adobe.creativesdk.foundation.internal.utils;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAuthHandler {
    public static Handler createHandlerForAuthOps() throws Exception {
        try {
            Handler handler = new Handler();
            if (handler != null && handler.getLooper() != Looper.getMainLooper()) {
                return null;
            }
            return handler;
        } catch (Exception e2) {
            throw e2;
        }
    }
}
