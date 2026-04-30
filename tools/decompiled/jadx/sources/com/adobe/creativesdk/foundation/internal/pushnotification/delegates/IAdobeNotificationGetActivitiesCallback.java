package com.adobe.creativesdk.foundation.internal.pushnotification.delegates;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotification;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeNotificationGetActivitiesCallback {
    void onError();

    void onProgress(ArrayList<AdobePushNotification> arrayList);

    void onSuccess(ArrayList<AdobePushNotification> arrayList);
}
