package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSAssetBrowserViewEvent extends AdobeAnalyticsETSAssetBrowserBaseEvent {
    public AdobeAnalyticsETSAssetBrowserViewEvent(String str, String str2) {
        super(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppView.getValue(), str2);
        this.data.put(AdobeAnalyticsEventParams.UI.AdobeEventPropertyUiViewType.getValue(), str);
    }
}
