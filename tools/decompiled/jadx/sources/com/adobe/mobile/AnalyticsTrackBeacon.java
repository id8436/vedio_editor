package com.adobe.mobile;

import com.adobe.mobile.Analytics;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsTrackBeacon {
    private static final String BEACON_ACTION_NAME = "Beacon";
    private static final String BEACON_MAJOR_KEY = "a.beacon.major";
    private static final String BEACON_MINOR_KEY = "a.beacon.minor";
    private static final String BEACON_PROX_KEY = "a.beacon.prox";
    private static final String BEACON_UUID_KEY = "a.beacon.uuid";

    AnalyticsTrackBeacon() {
    }

    protected static void trackBeacon(String str, String str2, String str3, Analytics.BEACON_PROXIMITY beacon_proximity, Map<String, Object> map) {
        HashMap map2 = new HashMap();
        clearBeacon();
        if (str != null) {
            map2.put(BEACON_UUID_KEY, str);
            TargetWorker.addPersistentParameter(BEACON_UUID_KEY, str);
        }
        if (str2 != null) {
            map2.put(BEACON_MAJOR_KEY, str2);
            TargetWorker.addPersistentParameter(BEACON_MAJOR_KEY, str2);
        }
        if (str3 != null) {
            map2.put(BEACON_MINOR_KEY, str3);
            TargetWorker.addPersistentParameter(BEACON_MINOR_KEY, str3);
        }
        if (beacon_proximity != null) {
            map2.put(BEACON_PROX_KEY, beacon_proximity.toString());
            TargetWorker.addPersistentParameter(BEACON_PROX_KEY, beacon_proximity.toString());
        }
        Lifecycle.updateContextData(map2);
        if (map != null) {
            map2.putAll(map);
        }
        AnalyticsTrackInternal.trackInternal(BEACON_ACTION_NAME, map2);
    }

    protected static void clearBeacon() {
        TargetWorker.removePersistentParameter(BEACON_UUID_KEY);
        TargetWorker.removePersistentParameter(BEACON_MAJOR_KEY);
        TargetWorker.removePersistentParameter(BEACON_MINOR_KEY);
        TargetWorker.removePersistentParameter(BEACON_PROX_KEY);
        Lifecycle.removeContextData(BEACON_UUID_KEY);
        Lifecycle.removeContextData(BEACON_MAJOR_KEY);
        Lifecycle.removeContextData(BEACON_MINOR_KEY);
        Lifecycle.removeContextData(BEACON_PROX_KEY);
    }
}
