package com.adobe.premiereclip.notification;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class ClipNotificationService extends Service {
    private NotificationHelper notificationHelper;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.notificationHelper = new NotificationHelper(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.d("ClipService", "onstartcommand called");
        if (intent != null && intent.getAction() != null) {
            this.notificationHelper.onStart(NotificationHelper.getNotificationType(intent.getAction()));
        }
        stopSelf();
        return 1;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }
}
