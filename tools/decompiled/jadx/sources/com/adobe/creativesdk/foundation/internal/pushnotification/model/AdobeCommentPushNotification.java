package com.adobe.creativesdk.foundation.internal.pushnotification.model;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommentPushNotification extends AdobePushNotification {
    private String comment;

    public AdobeCommentPushNotification() {
        setNotificationSubType(AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT);
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = str;
    }
}
