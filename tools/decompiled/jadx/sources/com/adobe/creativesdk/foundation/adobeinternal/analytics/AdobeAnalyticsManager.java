package com.adobe.creativesdk.foundation.adobeinternal.analytics;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSJobManager;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsManager {
    private static AdobeAnalyticsManager _sharedInstance = null;

    public static AdobeAnalyticsManager getInstance() {
        if (_sharedInstance == null) {
            _sharedInstance = new AdobeAnalyticsManager();
        }
        return _sharedInstance;
    }

    private AdobeAnalyticsManager() {
    }

    @Deprecated
    public void enableAnalyticsReporting(AdobeAnalyticsMode adobeAnalyticsMode) {
        AdobeAnalyticsETSJobManager.getSharedInstance().enableAnalyticsReporting();
    }

    public void enableAnalyticsReporting() {
        AdobeAnalyticsETSJobManager.getSharedInstance().enableAnalyticsReporting();
    }

    public void disableAnalyticsReporting() {
        AdobeAnalyticsETSJobManager.getSharedInstance().disableAnalyticsReporting();
    }
}
