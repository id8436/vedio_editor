package com.adobe.premiereclip.notification;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(21)
public class ClipNotificationJobService extends JobService {
    private NotificationHelper notificationHelper;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.notificationHelper = new NotificationHelper(this);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (jobParameters.getExtras() == null || jobParameters.getExtras().get("notificationType") == null) {
            return false;
        }
        this.notificationHelper.onStart(NotificationHelper.getNotificationType((String) jobParameters.getExtras().get("notificationType")));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
