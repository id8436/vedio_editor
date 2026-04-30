package com.adobe.premiereclip.notification;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(26)
public class DismissNotificationBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("notificationType", ClipNotificationManager.NOTIFICATION_RESTART);
        ((JobScheduler) context.getSystemService("jobscheduler")).schedule(new JobInfo.Builder(1001, new ComponentName(context, (Class<?>) ClipNotificationJobService.class)).setOverrideDeadline(0L).setExtras(persistableBundle).build());
    }
}
