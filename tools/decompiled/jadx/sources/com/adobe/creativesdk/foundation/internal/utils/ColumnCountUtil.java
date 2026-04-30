package com.adobe.creativesdk.foundation.internal.utils;

import android.content.Context;
import android.util.DisplayMetrics;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class ColumnCountUtil {
    private static final int MIN_COLUMN_COUNT = 1;
    private static final double PHONE_COLUMN_WIDTH = 1.5d;
    private static final double TABLET_COLUMN_WIDTH = 1.75d;

    public static int getColumnCount(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return Math.max(1, (int) Math.round((((double) displayMetrics.widthPixels) / ((double) displayMetrics.xdpi)) / (context.getResources().getBoolean(R.bool.tablet) ? TABLET_COLUMN_WIDTH : 1.5d)));
    }
}
