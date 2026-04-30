package com.adobe.creativeapps.settings.analytics;

import android.content.Context;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppAnalytics {
    protected static Map<String, Object> _dict;
    protected static Boolean _sendUserReports = true;
    protected static IAdobeAnalyticsSessionCallback _analyticsSessionDelegate = null;
    protected static Context _currentContext = null;

    public static void initAnalyticsSession(Context context) {
    }

    public static void startAnalyticsSession(Context context) {
        Toast.makeText(context, "Start Analytics needs to be implemented", 0).show();
    }

    public static void stopAnalyticsSession(Context context) {
        Toast.makeText(context, "Stop Analytics needs to be implemented", 0).show();
    }

    public static void setAnalyticsDebugMode(Boolean bool) {
    }

    public static void SetSendUserReports(Boolean bool) {
    }

    public static Boolean SendUserReports() {
        return _sendUserReports;
    }
}
