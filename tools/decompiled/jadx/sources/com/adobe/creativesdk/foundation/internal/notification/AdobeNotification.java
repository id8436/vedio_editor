package com.adobe.creativesdk.foundation.internal.notification;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNotification {
    public static final String Error = "Error";
    private Map<String, Object> _info;
    private IAdobeNotificationID _notificationID;

    public AdobeNotification(IAdobeNotificationID iAdobeNotificationID, Map<String, Object> map) {
        this._notificationID = null;
        this._info = null;
        this._notificationID = iAdobeNotificationID;
        this._info = map;
    }

    public final IAdobeNotificationID getId() {
        return this._notificationID;
    }

    public final Map<String, Object> getInfo() {
        return this._info;
    }
}
