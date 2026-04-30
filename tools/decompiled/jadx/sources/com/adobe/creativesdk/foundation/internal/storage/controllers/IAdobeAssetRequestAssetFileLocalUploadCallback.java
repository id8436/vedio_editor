package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.graphics.Bitmap;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback;
import com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback;
import com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeAssetRequestAssetFileLocalUploadCallback extends IAdobeGenericErrorCallback<AdobeAssetException>, IAdobeCancelCallback, IAdobeProgressCallback, IAdobeRequestCompletionCallback {
    void onRendition(Bitmap bitmap);
}
