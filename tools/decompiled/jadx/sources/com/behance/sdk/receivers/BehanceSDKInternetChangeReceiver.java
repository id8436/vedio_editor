package com.behance.sdk.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKInternetChangeReceiver extends BroadcastReceiver {
    private Callbacks callbacks;

    public interface Callbacks {
        void onInternetConnectionChanged(boolean z);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.callbacks != null) {
            this.callbacks.onInternetConnectionChanged(isConnected(context));
        }
    }

    public boolean isConnected(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }
}
