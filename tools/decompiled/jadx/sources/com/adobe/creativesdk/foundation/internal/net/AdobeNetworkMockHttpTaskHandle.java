package com.adobe.creativesdk.foundation.internal.net;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkMockHttpTaskHandle extends AdobeNetworkHttpTaskHandle {
    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle
    public synchronized void cancel() {
        this.isCancelled = true;
    }
}
