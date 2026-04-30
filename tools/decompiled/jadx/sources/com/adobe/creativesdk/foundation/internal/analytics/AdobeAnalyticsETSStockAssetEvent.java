package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSStockAssetEvent extends AdobeAnalyticsETSEvent {
    public AdobeAnalyticsETSStockAssetEvent(String str, String str2, String str3) {
        super(str);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_STOCK_BROWSER);
        if (str2 != null) {
            this.data.put(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentId.getValue(), str2);
        }
        this.data.put(AdobeAnalyticsEventParams.UI.AdobeEventPropertyUiViewType.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_GRID);
        this.data.put(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppSort.getValue(), str3);
    }
}
