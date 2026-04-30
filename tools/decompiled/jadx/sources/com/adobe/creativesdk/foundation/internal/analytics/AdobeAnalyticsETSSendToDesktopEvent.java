package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSSendToDesktopEvent extends AdobeAnalyticsETSAssetsBaseEvent {
    public AdobeAnalyticsETSSendToDesktopEvent() {
        super(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppSend.getValue());
    }

    public void trackEnvironment(String str, String str2, String str3, String str4) {
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_SEND_TO_DESKTOP);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentVersion.getValue(), AdobeCSDKFoundation.getVersion());
        trackServiceAPIDetails(str, str2, str3, str4);
    }
}
