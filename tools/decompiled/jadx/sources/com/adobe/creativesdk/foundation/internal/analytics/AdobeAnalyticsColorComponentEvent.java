package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsColorComponentEvent extends AdobeAnalyticsETSEvent {
    public AdobeAnalyticsColorComponentEvent(String str) {
        super(str);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), "color");
    }
}
