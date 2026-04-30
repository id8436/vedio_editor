package com.adobe.creativesdk.foundation.adobeinternal.storage.cloudupload;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeCSDKCloudUploadService {
    void uploadToCloud(AdobeNetworkHttpService adobeNetworkHttpService, AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, boolean z, IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler);
}
