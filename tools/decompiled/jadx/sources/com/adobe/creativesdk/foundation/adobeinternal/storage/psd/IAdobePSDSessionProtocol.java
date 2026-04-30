package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobePSDSessionProtocol {
    AdobeStorageResourceItem getManifest(AdobeStorageResourceItem adobeStorageResourceItem, String str, String str2);

    AdobeNetworkHttpTaskHandle updatePSDAt(String str, AdobeStorageResourceItem adobeStorageResourceItem, String str2, boolean z, IAdobeDCXPSDResourceRequestCompletionHandler iAdobeDCXPSDResourceRequestCompletionHandler);
}
