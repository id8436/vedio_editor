package com.adobe.mobile;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsTrackCoordinateSpace {
    private static final String COORDINATE_ACTION_NAME = "Coordinates";
    private static final String COORDINATE_FLOAT_FORMAT = "%.2f";
    private static final String COORDINATE_NAME_KEY = "a.map.name";
    private static final String COORDINATE_X_KEY = "a.map.x";
    private static final String COORDINATE_Y_KEY = "a.map.y";

    AnalyticsTrackCoordinateSpace() {
    }

    public static void trackCoordinateSpace(String str, float f2, float f3, Map<String, Object> map) {
        if (f2 < 0.0f || f2 > 1.0f || f3 < 0.0f || f3 > 1.0f) {
            StaticMethods.logWarningFormat("Analytics - trackCoordinateSpace failed, the coordinates (x:%.2f, y:%.2f) must be between 0.0f & 1.0f.", Float.valueOf(f2), Float.valueOf(f3));
            return;
        }
        if (str == null || str.trim().length() == 0) {
            StaticMethods.logWarningFormat("Analytics - trackCoordinateSpace failed, the name was empty or only contained whitespace and is required to map the coorindates to a coordinates space.", new Object[0]);
            return;
        }
        String str2 = String.format(Locale.US, COORDINATE_FLOAT_FORMAT, Float.valueOf(Math.abs(f2)));
        String str3 = String.format(Locale.US, COORDINATE_FLOAT_FORMAT, Float.valueOf(Math.abs(f3)));
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        map2.put(COORDINATE_NAME_KEY, str);
        map2.put(COORDINATE_X_KEY, str2);
        map2.put(COORDINATE_Y_KEY, str3);
        AnalyticsTrackInternal.trackInternal(COORDINATE_ACTION_NAME, map2, StaticMethods.getTimeSince1970());
    }
}
