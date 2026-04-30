package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSStockSearchEvent extends AdobeAnalyticsETSEvent {
    public AdobeAnalyticsETSStockSearchEvent(String str, String str2, String str3, String str4, String str5) {
        super(str);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_STOCK_BROWSER);
        if (str2 != null) {
            this.data.put(AdobeAnalyticsEventParams.UI.AdobeEventPropertyUiSearchKeyword.getValue(), str2);
        }
        this.data.put(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppFilter.getValue(), str5);
        this.data.put(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppSort.getValue(), str4);
        this.data.put(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppOrientationFilter.getValue(), str3);
        this.data.put(AdobeAnalyticsEventParams.UI.AdobeEventPropertyUiViewType.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_GRID);
    }
}
