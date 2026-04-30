package com.adobe.creativesdk.foundation.adobeinternal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsEvent extends AdobeAnalyticsETSEvent {
    public AdobeAnalyticsEvent(AdobeAnalyticsEventParams.Type type) {
        super(type.getValue());
    }

    public AdobeAnalyticsEvent(String str) {
        super(str);
    }

    public void addCustomEventParam(String str, String str2) {
        this.data.put(str, str2);
    }

    public void addEventParam(AdobeAnalyticsEventParams adobeAnalyticsEventParams, String str) {
        this.data.put(adobeAnalyticsEventParams.getValue(), str);
    }

    public void sendEvent() {
        super.endAndTrackEvent();
    }

    public static void addCoreEventsFromClient(Map<String, String> map) {
        AdobeAnalyticsETSEvent.setCoreParams(map);
    }
}
