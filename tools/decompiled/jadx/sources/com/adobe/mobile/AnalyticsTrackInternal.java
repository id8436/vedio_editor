package com.adobe.mobile;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsTrackInternal {
    AnalyticsTrackInternal() {
    }

    protected static void trackInternal(String str, Map<String, Object> map) {
        trackInternal(str, map, StaticMethods.getTimeSince1970());
    }

    protected static void trackInternal(String str, Map<String, Object> map, long j) {
        HashMap map2 = map != null ? new HashMap(map) : new HashMap();
        map2.put("a.internalaction", str != null ? str : "None");
        HashMap map3 = new HashMap();
        map3.put("pe", "lnk_o");
        StringBuilder sbAppend = new StringBuilder().append("ADBINTERNAL:");
        if (str == null) {
            str = "None";
        }
        map3.put("pev2", sbAppend.append(str).toString());
        map3.put("pageName", StaticMethods.getApplicationID());
        RequestBuilder.buildAndSendRequest(map2, map3, j);
    }
}
