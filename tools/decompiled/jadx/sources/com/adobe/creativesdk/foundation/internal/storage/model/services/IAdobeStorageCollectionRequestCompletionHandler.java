package com.adobe.creativesdk.foundation.internal.storage.model.services;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeStorageCollectionRequestCompletionHandler extends IAdobeGenericErrorCallback<AdobeAssetException> {
    void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection);
}
