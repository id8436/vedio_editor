package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeGenericRequestCallback<T, ET> extends IAdobeGenericCompletionCallback<T>, IAdobeGenericErrorCallback<ET>, IAdobeCancelCallback, IAdobeProgressCallback {
}
