package com.adobe.premiereclip.notification;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import android.support.v4.app.NotificationCompat;
import com.adobe.premiereclip.ClipPreferences;

/* JADX INFO: loaded from: classes.dex */
public class ClipNotificationManager {
    public static final int JOB_ID = 1001;
    public static final String NOTIFICATION_END = "com.adobe.premiereclip.action.notificationend";
    public static final int NOTIFICATION_ID = 0;
    public static final String NOTIFICATION_RESTART = "com.adobe.premiereclip.action.notificationrestart";
    public static final String NOTIFICATION_START = "com.adobe.premiereclip.action.notificationstart";
    private static final long REMINDER_TIME_INTERVAL = 1296000000;
    private static ClipNotificationManager instance = null;
    private Context context;

    private ClipNotificationManager(Context context) {
        this.context = context;
    }

    public static ClipNotificationManager getInstance(Context context) {
        if (instance == null) {
            instance = new ClipNotificationManager(context);
        }
        return instance;
    }

    public void initNotification(boolean z) {
        cancelScheduledNotification(z);
        closeNotificationIfOpen();
        scheduleNotification(z);
    }

    private Intent getScheduleIntent() {
        Intent intent = new Intent(this.context, (Class<?>) ClipNotificationService.class);
        intent.setAction(NOTIFICATION_START);
        return intent;
    }

    private void scheduleNotification(boolean z) {
        scheduleNotification(System.currentTimeMillis() + REMINDER_TIME_INTERVAL, z);
    }

    protected void scheduleNotification(long j, boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z) {
            ClipPreferences.getInstance(this.context).setNotificationScheduleTime(jCurrentTimeMillis);
        }
        ClipPreferences.getInstance(this.context).setNotificationTime(j);
        if (Build.VERSION.SDK_INT >= 26) {
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("notificationType", NOTIFICATION_START);
            ((JobScheduler) this.context.getSystemService("jobscheduler")).schedule(new JobInfo.Builder(1001, new ComponentName(this.context, (Class<?>) ClipNotificationJobService.class)).setMinimumLatency(j - jCurrentTimeMillis).setOverrideDeadline(j - jCurrentTimeMillis).setExtras(persistableBundle).build());
            return;
        }
        ((AlarmManager) this.context.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(0, j, PendingIntent.getService(this.context, 0, getScheduleIntent(), 0));
    }

    protected void postInstantNotification() {
        if (Build.VERSION.SDK_INT >= 26) {
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("notificationType", NOTIFICATION_START);
            ((JobScheduler) this.context.getSystemService("jobscheduler")).schedule(new JobInfo.Builder(1001, new ComponentName(this.context, (Class<?>) ClipNotificationJobService.class)).setOverrideDeadline(0L).setExtras(persistableBundle).build());
            return;
        }
        this.context.startService(getScheduleIntent());
    }

    private void cancelScheduledNotification(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            ((JobScheduler) this.context.getSystemService("jobscheduler")).cancel(1001);
        } else {
            ((AlarmManager) this.context.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(PendingIntent.getService(this.context, 0, getScheduleIntent(), 0));
        }
        if (z) {
            ClipPreferences.getInstance(this.context).setNotificationScheduleTime(0L);
        }
        ClipPreferences.getInstance(this.context).setNotificationTime(0L);
    }

    private void closeNotificationIfOpen() {
        if (Build.VERSION.SDK_INT >= 26) {
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("notificationType", NOTIFICATION_END);
            ((JobScheduler) this.context.getSystemService("jobscheduler")).schedule(new JobInfo.Builder(1001, new ComponentName(this.context, (Class<?>) ClipNotificationJobService.class)).setOverrideDeadline(0L).setExtras(persistableBundle).build());
            return;
        }
        Intent intent = new Intent(this.context, (Class<?>) ClipNotificationService.class);
        intent.setAction(NOTIFICATION_END);
        this.context.startService(intent);
    }
}
