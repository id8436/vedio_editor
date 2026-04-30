package com.adobe.mobile;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class RequestBuilder {
    private static final String PRIVACY_MODE_KEY = "a.privacy.mode";
    private static final String VAR_ESCAPE_PREFIX = "&&";

    RequestBuilder() {
    }

    protected static void buildAndSendRequest(Map<String, Object> map, Map<String, Object> map2, long j) {
        if (WearableFunctionBridge.shouldSendHit() && MobileConfig.getInstance().mobileUsingAnalytics()) {
            HashMap map3 = new HashMap();
            map3.putAll(StaticMethods.getDefaultData());
            long timeSinceLaunch = StaticMethods.getTimeSinceLaunch();
            if (timeSinceLaunch > 0) {
                map3.put("a.TimeSinceLaunch", String.valueOf(timeSinceLaunch));
            }
            if (map != null) {
                map3.putAll(map);
            }
            if (MobileConfig.getInstance().getPrivacyStatus() == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_UNKNOWN) {
                map3.put(PRIVACY_MODE_KEY, "unknown");
            }
            HashMap map4 = map2 != null ? new HashMap(map2) : new HashMap();
            if (StaticMethods.getAID() != null) {
                map4.put("aid", StaticMethods.getAID());
            }
            if (StaticMethods.getVisitorID() != null) {
                map4.put("vid", StaticMethods.getVisitorID());
            }
            map4.put("ce", MobileConfig.getInstance().getCharacterSet());
            if (MobileConfig.getInstance().getOfflineTrackingEnabled()) {
                map4.put("ts", Long.toString(j));
            }
            map4.put("t", StaticMethods.getTimestampString());
            Iterator it = map3.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                if (str == null) {
                    it.remove();
                } else if (str.startsWith(VAR_ESCAPE_PREFIX)) {
                    map4.put(str.substring(VAR_ESCAPE_PREFIX.length()), entry.getValue());
                    it.remove();
                }
            }
            if (MobileConfig.getInstance().getVisitorIdServiceEnabled()) {
                map4.putAll(VisitorIDService.sharedInstance().getAnalyticsIdVisitorParameters());
            }
            Messages.checkForInAppMessage(new HashMap(map4), new HashMap(map3), new HashMap(Lifecycle.getContextDataLowercase()));
            Messages.checkFor3rdPartyCallbacks(new HashMap(map4), new HashMap(map3));
            map4.put("c", StaticMethods.translateContextData(map3));
            StringBuilder sb = new StringBuilder(2048);
            sb.append("ndh=1");
            if (MobileConfig.getInstance().getVisitorIdServiceEnabled()) {
                sb.append(VisitorIDService.sharedInstance().getAnalyticsIdString());
            }
            StaticMethods.serializeToQueryString(map4, sb);
            StaticMethods.logDebugFormat("Analytics - Request Queued (%s)", sb);
            AnalyticsWorker.sharedInstance().queue(sb.toString(), j);
        }
    }
}
