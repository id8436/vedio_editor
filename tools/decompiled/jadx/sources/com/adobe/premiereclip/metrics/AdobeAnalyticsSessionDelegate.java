package com.adobe.premiereclip.metrics;

import android.content.Context;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSession;
import com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAnalyticsSessionDelegate implements IAdobeAnalyticsSessionCallback {
    private Context mContext;
    private Boolean mInit = false;

    public AdobeAnalyticsSessionDelegate(Context context) {
        this.mContext = context;
    }

    public void init() {
        if (!this.mInit.booleanValue()) {
            AdobeAnalyticsSession.getSharedInstance().registerDelegate(this, this.mContext);
            this.mInit = true;
        }
    }

    public void release() {
        if (this.mInit.booleanValue()) {
            AdobeAnalyticsSession.getSharedInstance().unregisterDelegate(this.mContext);
            this.mInit = false;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
    public void trackState(String str, Map<String, Object> map) {
        HashMap map2 = new HashMap(map);
        Metrics.sharedInstance().setCommonStateInfoInDictionary(map2);
        ADBMAnalyticsHelper.trackState(str, map2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
    public void trackAction(String str, Map<String, Object> map) {
        HashMap map2 = new HashMap(map);
        Metrics.sharedInstance().setCommonActionInfoInDictionary(map2);
        ADBMAnalyticsHelper.trackAction(str, map2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
    public void trackTimedActionStart(String str, Map<String, Object> map) {
        ADBMAnalyticsHelper.trackTimedActionStart(str, map);
    }

    @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
    public void trackTimedActionUpdate(String str, Map<String, Object> map) {
        ADBMAnalyticsHelper.trackTimedActionUpdate(str, map);
    }

    @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
    public void trackTimedActionEnd(String str, Map<String, Object> map) {
    }
}
