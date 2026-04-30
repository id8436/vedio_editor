package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.os.Handler;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXSyncSessionProtocol {
    AdobeNetworkHttpTaskHandle getAssetsInSyncGroup(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode, IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, Handler handler);

    AdobeStorageResourceCollection getAssetsInSyncGroup(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode) throws AdobeCSDKException;

    AdobeStorageResourceCollection getCollectionForSyncGroup(String str);

    AdobeStorageResourceCollection getCollectionOfSyncGroups();

    String getHrefForSyncGroup(String str);

    AdobeNetworkHttpTaskHandle getSyncGroups(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode, IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, Handler handler);
}
