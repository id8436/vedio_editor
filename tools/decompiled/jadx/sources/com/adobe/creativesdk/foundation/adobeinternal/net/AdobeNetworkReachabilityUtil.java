package com.adobe.creativesdk.foundation.adobeinternal.net;

import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkReachabilityUtil {
    private static volatile int _sharedCount = 0;
    private static volatile AdobeNetworkReachability _sharedInstance;

    public static synchronized AdobeNetworkReachability getSharedInstance() {
        if (_sharedInstance == null) {
            _sharedInstance = new AdobeNetworkReachability();
            _sharedInstance.startNotification(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext());
        }
        _sharedCount++;
        return _sharedInstance;
    }

    public static synchronized void destorySharedInstance() {
        if (_sharedInstance == null) {
            _sharedCount = 0;
        } else {
            _sharedCount--;
            if (_sharedCount == 0) {
                _sharedInstance.stopNotification();
                _sharedInstance = null;
            }
        }
    }

    public static boolean isOnline() {
        if (AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext() == null) {
            return false;
        }
        boolean zIsOnline = getSharedInstance().isOnline();
        destorySharedInstance();
        return zIsOnline;
    }
}
