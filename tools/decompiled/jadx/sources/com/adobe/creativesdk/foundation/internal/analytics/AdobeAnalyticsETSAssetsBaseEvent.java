package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSAssetsBaseEvent extends AdobeAnalyticsETSEvent {
    public AdobeAnalyticsETSAssetsBaseEvent(String str) {
        super(str);
    }

    public void trackCloud(AdobeCloud adobeCloud) {
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyCloud.getValue(), adobeCloud.getHref());
    }

    public void trackContentInfo(String str, String str2, String str3, String str4, String str5) {
        this.data.put(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentId.getValue(), str);
        this.data.put(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentName.getValue(), str2);
        this.data.put(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentExtension.getValue(), str3);
        this.data.put(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentType.getValue(), str4);
        this.data.put(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentSize.getValue(), str5);
    }

    public void trackID(String str) {
        this.data.put(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentId.getValue(), str);
    }

    public void trackServiceAPIDetails(String str, String str2, String str3, String str4) {
        if (!str.equals("")) {
            this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyServiceName.getValue(), str);
        }
        if (!str2.equals("")) {
            this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyServiceVersion.getValue(), str2);
        }
        if (!str3.equals("")) {
            this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyServiceAPIName.getValue(), str3);
        }
        if (!str4.equals("")) {
            this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyServiceAPIVersion.getValue(), str4);
        }
    }

    public void trackConsumerDetails(String str) {
        this.data.put(AdobeAnalyticsEventParams.Consumer.AdobeEventPropertyConsumerName.getValue(), str);
    }
}
