package com.adobe.creativesdk.foundation.internal.utils;

import android.content.Context;
import android.graphics.Typeface;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCSDKTypeFace {
    private static Typeface _csdkadobeCleanFont = null;

    public static Typeface getTypeface(Context context) {
        if (_csdkadobeCleanFont == null) {
            _csdkadobeCleanFont = Typeface.createFromAsset(context.getResources().getAssets(), "fonts/AdobeClean-SemiLight.otf");
        }
        return _csdkadobeCleanFont;
    }

    private AdobeCSDKTypeFace() {
    }
}
