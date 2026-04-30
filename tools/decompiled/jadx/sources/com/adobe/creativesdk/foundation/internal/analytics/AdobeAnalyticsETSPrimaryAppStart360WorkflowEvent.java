package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSPrimaryAppStart360WorkflowEvent extends AdobeAnalyticsETSAssetsBaseEvent {
    public AdobeAnalyticsETSPrimaryAppStart360WorkflowEvent(String str, String str2, String str3, String str4, String str5) {
        super(str2);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_360_WORKFLOW);
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyContext.getValue(), str);
        Integer num = 3;
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyContextSequence.getValue(), num.toString());
        if (str3 != null) {
            this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertySubType.getValue(), str3);
        }
        this.data.put(AdobeAnalyticsEventParams.Consumer.AdobeEventPropertyConsumerName.getValue(), str4);
        this.data.put(AdobeAnalyticsEventParams.Consumer.AdobeEventPropertyConsumerAppStoreId.getValue(), str5);
    }
}
