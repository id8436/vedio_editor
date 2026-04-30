package com.adobe.premiereclip.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.adobe.mobile.Analytics;

/* JADX INFO: loaded from: classes.dex */
public class GPBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Analytics.processReferrer(context, intent);
    }
}
