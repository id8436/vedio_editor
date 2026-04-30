package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSAssetBrowserSearchEvent extends AdobeAnalyticsETSAssetBrowserBaseEvent {
    public AdobeAnalyticsETSAssetBrowserSearchEvent(String str) {
        super(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppSearch.getValue(), str);
    }
}
