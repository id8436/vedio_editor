package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXPublicationRecordDataCompletionHandler {
    void onComplete(JSONObject jSONObject, AdobeCSDKException adobeCSDKException);
}
