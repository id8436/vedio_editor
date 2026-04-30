package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsAppLibraryEvent extends AdobeAnalyticsETSEvent {
    public AdobeAnalyticsAppLibraryEvent(String str) {
        super(str);
    }

    public void trackConsumer(String str) {
        this.data.put(AdobeAnalyticsEventParams.Consumer.AdobeEventPropertyConsumerAppStoreId.getValue(), str);
    }

    public void trackFilter(String str) {
        this.data.put(AdobeAnalyticsEventParams.UI.AdobeEventPropertyUiFilter.getValue(), str);
    }

    public void trackSearch(String str) {
        this.data.put(AdobeAnalyticsEventParams.UI.AdobeEventPropertyUiSearchKeyword.getValue(), str);
    }

    public void trackUIType(String str) {
        this.data.put(AdobeAnalyticsEventParams.UI.AdobeEventPropertyUiViewType.getValue(), str);
    }

    @Override // com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent
    public void endAndTrackEvent() {
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_APP_LIBRARY_BROWSER);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentVersion.getValue(), AdobeCSDKFoundation.getVersion());
        super.endAndTrackEvent();
    }
}
