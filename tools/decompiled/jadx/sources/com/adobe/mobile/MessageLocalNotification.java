package com.adobe.mobile;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.adobe.mobile.StaticMethods;
import java.security.SecureRandom;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class MessageLocalNotification extends Message {
    private static final String JSON_CONFIG_CONTENT = "content";
    private static final String JSON_CONFIG_WAIT = "wait";
    protected String content;
    protected Integer localNotificationDelay;

    MessageLocalNotification() {
    }

    @Override // com.adobe.mobile.Message
    protected boolean initWithPayloadObject(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() <= 0 || !super.initWithPayloadObject(jSONObject)) {
            return false;
        }
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_PAYLOAD);
            if (jSONObject2.length() <= 0) {
                StaticMethods.logDebugFormat("Messages - Unable to create local notification message \"%s\", payload is empty", this.messageId);
                return false;
            }
            try {
                this.content = jSONObject2.getString(JSON_CONFIG_CONTENT);
                if (this.content.length() <= 0) {
                    StaticMethods.logDebugFormat("Messages - Unable to create local notification message \"%s\", content is empty", this.messageId);
                    return false;
                }
                try {
                    this.localNotificationDelay = Integer.valueOf(jSONObject2.getInt(JSON_CONFIG_WAIT));
                    return true;
                } catch (JSONException e2) {
                    StaticMethods.logDebugFormat("Messages - Unable to create local notification message \"%s\", localNotificationDelay is required", this.messageId);
                    return false;
                }
            } catch (JSONException e3) {
                StaticMethods.logDebugFormat("Messages - Unable to create local notification message \"%s\", content is required", this.messageId);
                return false;
            }
        } catch (JSONException e4) {
            StaticMethods.logDebugFormat("Messages - Unable to create local notification message \"%s\", payload is required", this.messageId);
            return false;
        }
    }

    @Override // com.adobe.mobile.Message
    protected void show() {
        super.show();
        try {
            Activity currentActivity = StaticMethods.getCurrentActivity();
            int iNextInt = new SecureRandom().nextInt();
            Calendar calendar = Calendar.getInstance();
            calendar.add(13, this.localNotificationDelay.intValue());
            Intent intent = new Intent();
            intent.setClass(currentActivity, MessageNotificationHandler.class);
            intent.putExtra("alarm_message", this.content);
            intent.putExtra("adbMessageCode", Messages.MESSAGE_LOCAL_IDENTIFIER);
            intent.putExtra("requestCode", iNextInt);
            try {
                ((AlarmManager) StaticMethods.getSharedContext().getSystemService(NotificationCompat.CATEGORY_ALARM)).set(0, calendar.getTimeInMillis(), PendingIntent.getBroadcast(StaticMethods.getSharedContext(), iNextInt, intent, com.adobe.customextractor.Constants.SAMPLE_FLAG_DECODE_ONLY));
            } catch (StaticMethods.NullContextException e2) {
                StaticMethods.logErrorFormat("Messaging - Error scheduling local notification (%s)", e2.getMessage());
            }
            viewed();
        } catch (StaticMethods.NullActivityException e3) {
            StaticMethods.logErrorFormat(e3.getMessage(), new Object[0]);
        }
    }
}
