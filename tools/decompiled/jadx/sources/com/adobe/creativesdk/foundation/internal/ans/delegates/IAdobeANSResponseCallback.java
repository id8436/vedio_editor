package com.adobe.creativesdk.foundation.internal.ans.delegates;

import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeANSResponseCallback {
    void onError(AdobeNetworkException adobeNetworkException);

    void onSuccess(JSONObject jSONObject);
}
