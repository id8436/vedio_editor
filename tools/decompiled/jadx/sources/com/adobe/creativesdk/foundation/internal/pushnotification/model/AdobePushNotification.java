package com.adobe.creativesdk.foundation.internal.pushnotification.model;

import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdobePushNotification {
    private String displayName;
    private String firstName;
    private long formattingData;
    private boolean formattingNeeded;
    private boolean isNotificationRead;
    private boolean isUser;
    private String lastName;
    private AdobePushNotificationState localState;
    private String notificationID;
    private AdobePushNotificationSubType notificationSubType;
    private AdobePushNotificationType notificationType;
    private String region;
    private String resourceName;
    private String resourceURL;
    private AdobePushNotificationState serverState;
    private int timeStampMessage;
    private long timestamp;
    private String userId;

    public String getResourceName() {
        return this.resourceName;
    }

    public void recalculateTimeStampMessage(long j) {
        setTimeStampString(j);
    }

    public int getTimeStampStringResource() {
        return this.timeStampMessage;
    }

    public boolean isFormattingNeeded() {
        return this.formattingNeeded;
    }

    public long getFormattingData() {
        return this.formattingData;
    }

    private void setTimeStampString(long j) {
        if (j < this.timestamp) {
            AdobeLogger.log(Level.ERROR, "AdobePushNotification", "Current time should be greater than Notification Time stamp");
            return;
        }
        long j2 = (j - this.timestamp) / DateUtils.MILLIS_PER_MINUTE;
        long j3 = j2 / 60;
        long j4 = j3 / 24;
        long j5 = j4 / 365;
        if (j5 >= 1) {
            this.timeStampMessage = R.string.adobe_csdk_notification_activity_timestamp_year_multiple;
            this.formattingNeeded = true;
            this.formattingData = j5;
            return;
        }
        if (j4 >= 1) {
            this.timeStampMessage = R.string.adobe_csdk_notification_activity_timestamp_days_multiple;
            this.formattingNeeded = true;
            this.formattingData = j4;
        } else if (j3 >= 1) {
            this.timeStampMessage = R.string.adobe_csdk_notification_activity_timestamp_hours_multiple;
            this.formattingNeeded = true;
            this.formattingData = j3;
        } else if (j2 >= 1) {
            this.timeStampMessage = R.string.adobe_csdk_notification_activity_timestamp_minute;
            this.formattingNeeded = true;
            this.formattingData = j2;
        } else {
            this.timeStampMessage = R.string.adobe_csdk_notification_activity_timestamp_less_than_minute;
            this.formattingNeeded = false;
        }
    }

    public void setResourceName(String str) {
        this.resourceName = str;
    }

    public AdobePushNotificationSubType getNotificationSubType() {
        return this.notificationSubType;
    }

    public void setNotificationSubType(AdobePushNotificationSubType adobePushNotificationSubType) {
        this.notificationSubType = adobePushNotificationSubType;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public AdobePushNotificationState getLocalState() {
        return this.localState;
    }

    public void setLocalState(AdobePushNotificationState adobePushNotificationState) {
        this.localState = adobePushNotificationState;
    }

    public void setServerState(AdobePushNotificationState adobePushNotificationState) {
        this.serverState = adobePushNotificationState;
    }

    public AdobePushNotificationState getServerState() {
        return this.serverState;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public String getNotificationID() {
        return this.notificationID;
    }

    public void setNotificationID(String str) {
        this.notificationID = str;
    }

    public boolean isNotificationRead() {
        return this.isNotificationRead;
    }

    public void setIsNotificationRead(boolean z) {
        this.isNotificationRead = z;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public String getResourceURL() {
        return this.resourceURL;
    }

    public void setResourceURL(String str) {
        this.resourceURL = str;
    }

    public String getRegion() {
        return this.region;
    }

    public void setRegion(String str) {
        this.region = str;
    }

    public AdobePushNotificationType getNotificationType() {
        return this.notificationType;
    }

    public void setNotificationType(AdobePushNotificationType adobePushNotificationType) {
        this.notificationType = adobePushNotificationType;
    }

    public void setIsUser(boolean z) {
        this.isUser = z;
    }

    public boolean isUser() {
        return this.isUser;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
