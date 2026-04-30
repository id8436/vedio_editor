package com.behance.sdk.util;

import android.graphics.Color;
import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKColorUtils {
    public static String getHexColorString(int i) {
        return String.format("%02x", Integer.valueOf(Color.red(i))) + String.format("%02x", Integer.valueOf(Color.green(i))) + String.format("%02x", Integer.valueOf(Color.blue(i)));
    }

    public static int getColorFromHexString(String str) {
        return (str == null || str.length() != 6) ? ViewCompat.MEASURED_STATE_MASK : Color.rgb(Integer.parseInt(str.substring(0, 2), 16), Integer.parseInt(str.substring(2, 4), 16), Integer.parseInt(str.substring(4, 6), 16));
    }
}
