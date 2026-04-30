package com.adobe.creativesdk.foundation.internal.ans.delegates;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeNotificationQueryCallback {
    void onError();

    void onSuccess(JSONObject jSONObject);
}
