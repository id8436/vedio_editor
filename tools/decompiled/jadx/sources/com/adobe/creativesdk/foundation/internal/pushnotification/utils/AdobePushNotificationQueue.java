package com.adobe.creativesdk.foundation.internal.pushnotification.utils;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotification;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePushNotificationQueue {
    static AdobePushNotificationQueue _pushNotificationQueue;
    private HashMap<String, AdobePushNotification> _notificationMap = new HashMap<>();

    private AdobePushNotificationQueue() {
    }

    public static AdobePushNotificationQueue getPushNotificationQueue() {
        if (_pushNotificationQueue == null) {
            _pushNotificationQueue = new AdobePushNotificationQueue();
        }
        return _pushNotificationQueue;
    }

    public void putNotificationInQueue(List<AdobePushNotification> list) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                this._notificationMap.put(list.get(i2).getNotificationID(), list.get(i2));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void handleNotificationResponse(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONObject("notifications").getJSONArray("notification");
            for (int i = 0; i < jSONArray.length(); i++) {
                this._notificationMap.remove(jSONArray.getJSONObject(i).getString(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_NOTIFICATION_ID));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public ArrayList<AdobePushNotification> getReadNotificationsList() {
        ArrayList<AdobePushNotification> arrayList = new ArrayList<>();
        Iterator<AdobePushNotification> it = this._notificationMap.values().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
