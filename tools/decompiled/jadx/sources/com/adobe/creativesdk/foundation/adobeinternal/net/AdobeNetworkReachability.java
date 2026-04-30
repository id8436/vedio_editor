package com.adobe.creativesdk.foundation.adobeinternal.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkReachability {
    public static final String AdobeNetworkReachabilityStatusKey = "AdobeNetworkReachabilityStatusKey";
    private static AdobeNetworkReachability _networkReachability = null;
    private AdobeNetworkStatusCode _adobeNetworkStatusCode = AdobeNetworkStatusCode.AdobeNetworkNotReachable;
    private Context _applicationContext = null;
    private NetworkReceiver _networkReceiver = null;

    public class AdobeNetworkStatus {
        public AdobeNetworkStatusCode networkStatusCode = AdobeNetworkStatusCode.AdobeNetworkNotReachable;
    }

    public enum AdobeNetworkStatusCode {
        AdobeNetworkNotReachable,
        AdobeNetworkReachableNonMetered,
        AdobeNetworkReachableMetered
    }

    AdobeNetworkReachability() {
    }

    private static AdobeNetworkReachability createAndGetNetworkReachability() {
        if (_networkReachability == null) {
            synchronized (AdobeNetworkReachability.class) {
                if (_networkReachability == null) {
                    _networkReachability = new AdobeNetworkReachability();
                }
            }
        }
        return _networkReachability;
    }

    public boolean isOnline() {
        return this._adobeNetworkStatusCode != AdobeNetworkStatusCode.AdobeNetworkNotReachable;
    }

    public AdobeNetworkStatusCode getNetworkStatus() {
        return this._adobeNetworkStatusCode;
    }

    public synchronized boolean startNotification(Context context) {
        boolean zIsOnline;
        if (this._applicationContext != null) {
            zIsOnline = isOnline();
        } else {
            this._applicationContext = context;
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            this._networkReceiver = new NetworkReceiver();
            this._applicationContext.registerReceiver(this._networkReceiver, intentFilter);
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            decideNetworkConnectivity(connectivityManager.getActiveNetworkInfo(), connectivityManager);
            zIsOnline = isOnline();
        }
        return zIsOnline;
    }

    synchronized void stopNotification() {
        if (this._networkReceiver != null && this._applicationContext != null) {
            this._applicationContext.unregisterReceiver(this._networkReceiver);
        }
        this._applicationContext = null;
        this._networkReceiver = null;
    }

    void notifyNetworkChange() {
        AdobeLocalNotificationCenter defaultNotificationCenter = AdobeLocalNotificationCenter.getDefaultNotificationCenter();
        HashMap map = new HashMap();
        AdobeNetworkStatus adobeNetworkStatus = new AdobeNetworkStatus();
        adobeNetworkStatus.networkStatusCode = this._adobeNetworkStatusCode;
        map.put(AdobeNetworkReachabilityStatusKey, adobeNetworkStatus);
        defaultNotificationCenter.postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, map));
    }

    void decideNetworkConnectivity(NetworkInfo networkInfo, ConnectivityManager connectivityManager) {
        if (networkInfo != null) {
            if (!connectivityManager.isActiveNetworkMetered()) {
                this._adobeNetworkStatusCode = AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered;
                return;
            } else {
                this._adobeNetworkStatusCode = AdobeNetworkStatusCode.AdobeNetworkReachableMetered;
                return;
            }
        }
        this._adobeNetworkStatusCode = AdobeNetworkStatusCode.AdobeNetworkNotReachable;
    }

    class NetworkReceiver extends BroadcastReceiver {
        NetworkReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            AdobeNetworkStatusCode adobeNetworkStatusCode = AdobeNetworkReachability.this._adobeNetworkStatusCode;
            AdobeNetworkReachability.this.decideNetworkConnectivity(activeNetworkInfo, connectivityManager);
            if (adobeNetworkStatusCode != AdobeNetworkReachability.this._adobeNetworkStatusCode) {
                AdobeNetworkReachability.this.notifyNetworkChange();
            }
        }
    }
}
