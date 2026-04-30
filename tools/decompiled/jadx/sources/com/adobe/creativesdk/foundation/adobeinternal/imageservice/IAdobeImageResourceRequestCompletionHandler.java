package com.adobe.creativesdk.foundation.adobeinternal.imageservice;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeImageResourceRequestCompletionHandler {
    void onCompletion(AdobeNetworkHttpResponse adobeNetworkHttpResponse, AdobeCSDKException adobeCSDKException);
}
