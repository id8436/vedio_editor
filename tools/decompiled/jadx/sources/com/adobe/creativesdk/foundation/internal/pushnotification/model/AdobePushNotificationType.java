package com.adobe.creativesdk.foundation.internal.pushnotification.model;

/* JADX INFO: loaded from: classes.dex */
public enum AdobePushNotificationType {
    ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS,
    ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY;

    @Override // java.lang.Enum
    public String toString() {
        switch (this) {
            case ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:
                return "com.adobe.stormcloud.v1";
            case ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:
                return "com.adobe.designlibrary.v1";
            default:
                return "";
        }
    }

    public static AdobePushNotificationType getValue(String str) {
        if (str == null) {
            return null;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS.toString())) {
            return ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY.toString())) {
            return ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY;
        }
        return null;
    }
}
