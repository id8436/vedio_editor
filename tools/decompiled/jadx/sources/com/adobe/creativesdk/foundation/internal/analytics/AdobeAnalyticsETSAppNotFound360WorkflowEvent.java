package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSAppNotFound360WorkflowEvent extends AdobeAnalyticsETSAssetsBaseEvent {
    public AdobeAnalyticsETSAppNotFound360WorkflowEvent(String str) {
        super(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppStore.getValue());
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_360_WORKFLOW);
        this.data.put(AdobeAnalyticsEventParams.Consumer.AdobeEventPropertyConsumerAppStoreId.getValue(), str);
    }
}
