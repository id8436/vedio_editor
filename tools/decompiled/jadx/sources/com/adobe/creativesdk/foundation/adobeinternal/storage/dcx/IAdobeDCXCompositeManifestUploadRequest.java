package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXCompositeManifestUploadRequest {
    AdobeNetworkHttpTaskHandle perform(AdobeDCXManifest adobeDCXManifest, boolean z, IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler);
}
