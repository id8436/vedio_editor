package com.adobe.creativesdk.foundation.internal.pushnotification.delegates;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeUpdateNotificationCallback {
    void onError();

    void onSuccess(JSONObject jSONObject);
}
