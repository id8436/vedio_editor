package com.adobe.creativesdk.foundation.internal.common;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommonApplicationContextHolder {
    static AdobeCommonApplicationContextHolder _staticApplicationContextHolder = null;
    private Context applicationContext = null;

    private AdobeCommonApplicationContextHolder() {
    }

    public static AdobeCommonApplicationContextHolder getSharedApplicationContextHolder() {
        if (_staticApplicationContextHolder == null) {
            _staticApplicationContextHolder = new AdobeCommonApplicationContextHolder();
        }
        return _staticApplicationContextHolder;
    }

    public Context getApplicationContext() {
        return this.applicationContext;
    }

    public void setApplicationContext(Context context) {
        this.applicationContext = context.getApplicationContext();
    }
}
