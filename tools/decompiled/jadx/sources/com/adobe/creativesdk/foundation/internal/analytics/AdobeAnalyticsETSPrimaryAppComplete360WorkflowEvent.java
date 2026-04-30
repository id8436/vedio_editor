package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSPrimaryAppComplete360WorkflowEvent extends AdobeAnalyticsETSAssetsBaseEvent {
    public AdobeAnalyticsETSPrimaryAppComplete360WorkflowEvent(String str) {
        super(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppComplete.getValue());
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_360_WORKFLOW);
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyContext.getValue(), str);
        Integer num = 6;
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyContextSequence.getValue(), num.toString());
    }
}
