package com.adobe.creativesdk.foundation.internal.analytics;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsErrorLogEvent extends AdobeAnalyticsETSEvent {
    public static final String ADOBE_ANALYTICS_COMPONENT_KEY = "event.component";
    public static final String ADOBE_ANALYTICS_ERROR_DESC_KEY = "event.error.desc";
    private static final String ADOBE_ANALYTICS_ERROR_EVENT_STR = "event.error.csdk.android";
    public static final String ADOBE_ANALYTICS_ERROR_EXTRA_DESC_KEY = "event.error.extra_desc";
    public static final String ADOBE_ANALYTICS_METHOD_KEY = "event.component.method";

    public AdobeAnalyticsErrorLogEvent() {
        super(ADOBE_ANALYTICS_ERROR_EVENT_STR);
    }

    @Override // com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent
    public void endAndTrackEvent() {
        super.endAndTrackEvent();
    }
}
