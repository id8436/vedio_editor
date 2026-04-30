package com.adobe.mobile;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsTrackState {
    AnalyticsTrackState() {
    }

    protected static void trackState(String str, Map<String, Object> map) {
        HashMap map2 = new HashMap();
        if (str == null || str.length() <= 0) {
            str = StaticMethods.getApplicationID();
        }
        map2.put("pageName", str);
        RequestBuilder.buildAndSendRequest(map, map2, StaticMethods.getTimeSince1970());
    }
}
