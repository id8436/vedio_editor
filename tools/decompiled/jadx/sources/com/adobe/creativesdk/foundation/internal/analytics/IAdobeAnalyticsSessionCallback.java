package com.adobe.creativesdk.foundation.internal.analytics;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAnalyticsSessionCallback {
    void trackAction(String str, Map<String, Object> map);

    void trackState(String str, Map<String, Object> map);

    void trackTimedActionEnd(String str, Map<String, Object> map);

    void trackTimedActionStart(String str, Map<String, Object> map);

    void trackTimedActionUpdate(String str, Map<String, Object> map);
}
