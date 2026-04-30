package com.adobe.creativesdk.foundation.internal.utils;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationDataModel;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCancelDownloadIntentService extends IntentService {
    public AdobeCancelDownloadIntentService() {
        super("AdobeCancelDownloadIntentService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        int i = extras.getInt(AdobePushNotificationDataModel.UPLOAD_DOWNLOAD_REQUEST_CANCELLATION_NOTIFICATION_ID_KEY);
        if (extras.getBoolean(AdobePushNotificationDataModel.UPLOAD_DOWNLOAD_REQUEST_CANCELLATION_KEY, false)) {
            AdobeUploadDownloadManager.getSharedInstance().cancelUploadRequest(i);
        } else {
            AdobeUploadDownloadManager.getSharedInstance().cancelDownloadRequest(i);
        }
    }
}
