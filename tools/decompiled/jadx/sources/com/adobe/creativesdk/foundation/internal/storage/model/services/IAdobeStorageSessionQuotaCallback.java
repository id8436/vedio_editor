package com.adobe.creativesdk.foundation.internal.storage.model.services;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeStorageSessionQuotaCallback extends IAdobeGenericErrorCallback<AdobeCSDKException> {
    void onCompletion(Number number, Number number2, Number number3);
}
