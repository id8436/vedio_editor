package com.behance.sdk.util;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKUIUtils {
    public static int getActionBarSize(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.actionBarSize});
        int dimension = (int) typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        return dimension;
    }
}
