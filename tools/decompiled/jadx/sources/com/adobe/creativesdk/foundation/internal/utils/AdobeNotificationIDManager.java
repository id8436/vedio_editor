package com.adobe.creativesdk.foundation.internal.utils;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeNotificationIDManager {
    private static int NOTIFICATION_ID = 10;

    public static synchronized int getNotificationId() {
        NOTIFICATION_ID++;
        return NOTIFICATION_ID;
    }
}
