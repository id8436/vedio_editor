package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSAssetFileEvent extends AdobeAnalyticsETSAssetsBaseEvent {
    public AdobeAnalyticsETSAssetFileEvent(String str, String str2) {
        super(str);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_ASSET_HEADLESS);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentVersion.getValue(), AdobeCSDKFoundation.getVersion());
        this.data.put(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentType.getValue(), str2);
    }
}
