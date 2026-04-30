package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSSecondaryAppStart360WorkflowEvent extends AdobeAnalyticsETSAssetsBaseEvent {
    public AdobeAnalyticsETSSecondaryAppStart360WorkflowEvent(String str, String str2) {
        super(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppStartSecondaryApp.getValue());
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_360_WORKFLOW);
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyContext.getValue(), str);
        Integer num = 4;
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyContextSequence.getValue(), num.toString());
        this.data.put(AdobeAnalyticsEventParams.Consumer.AdobeEventPropertyConsumerName.getValue(), str2);
    }
}
