package com.adobe.mobile;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsTrackAction {
    AnalyticsTrackAction() {
    }

    protected static void trackAction(String str, Map<String, Object> map) {
        HashMap map2 = map != null ? new HashMap(map) : new HashMap();
        if (str == null) {
            str = "";
        }
        map2.put("a.action", str);
        HashMap map3 = new HashMap();
        map3.put("pe", "lnk_o");
        map3.put("pev2", "AMACTION:" + str);
        map3.put("pageName", StaticMethods.getApplicationID());
        RequestBuilder.buildAndSendRequest(map2, map3, StaticMethods.getTimeSince1970());
    }
}
