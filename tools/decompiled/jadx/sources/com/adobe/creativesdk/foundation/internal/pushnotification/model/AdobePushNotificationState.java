package com.adobe.creativesdk.foundation.internal.pushnotification.model;

/* JADX INFO: loaded from: classes.dex */
public enum AdobePushNotificationState {
    ADOBE_PUSH_NOTIFICATION_STATE_NEW,
    ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED;

    @Override // java.lang.Enum
    public String toString() {
        switch (this) {
            case ADOBE_PUSH_NOTIFICATION_STATE_NEW:
                return AdobePushNotificationDataModel.STATE_NEW;
            case ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:
                return AdobePushNotificationDataModel.STATE_EXPIRED;
            default:
                return "";
        }
    }

    public static AdobePushNotificationState getValue(String str) {
        if (str == null) {
            return null;
        }
        if (str.equalsIgnoreCase(AdobePushNotificationDataModel.STATE_NEW)) {
            return ADOBE_PUSH_NOTIFICATION_STATE_NEW;
        }
        if (str.equalsIgnoreCase(AdobePushNotificationDataModel.STATE_EXPIRED)) {
            return ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED;
        }
        return null;
    }
}
