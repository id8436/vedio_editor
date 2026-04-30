package com.adobe.premiereclip.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.adobe.premiereclip.ClipPreferences;

/* JADX INFO: loaded from: classes.dex */
public class DeviceBootBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d("ClipNotification", "device boot!!");
        if (intent == null || (intent.getAction() != null && intent.getAction().equals("android.intent.action.BOOT_COMPLETED"))) {
            long notificationTime = ClipPreferences.getInstance(context).getNotificationTime();
            if (notificationTime > 0) {
                if (notificationTime <= System.currentTimeMillis()) {
                    ClipNotificationManager.getInstance(context).postInstantNotification();
                    Log.d("ClipNotification", "starting service");
                } else {
                    ClipNotificationManager.getInstance(context).scheduleNotification(notificationTime, false);
                    Log.d("ClipNotification", "scheduling notification");
                }
            }
        }
    }
}
