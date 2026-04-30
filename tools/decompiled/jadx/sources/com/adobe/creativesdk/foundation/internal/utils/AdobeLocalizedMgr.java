package com.adobe.creativesdk.foundation.internal.utils;

import android.graphics.drawable.Drawable;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLocalizedMgr {
    public static String getLocalizedString(int i) {
        return AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getResources().getString(i);
    }

    public static Drawable getDrawable(int i) {
        return AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getResources().getDrawable(i);
    }
}
