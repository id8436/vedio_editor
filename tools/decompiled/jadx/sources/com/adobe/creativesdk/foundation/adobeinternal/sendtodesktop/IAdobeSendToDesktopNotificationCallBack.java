package com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.sendtodesktop.AdobeSendToDesktopException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeSendToDesktopNotificationCallBack {
    void onComplete();

    void onError(AdobeNetworkHttpResponse adobeNetworkHttpResponse);

    void onError(AdobeSendToDesktopException adobeSendToDesktopException);
}
