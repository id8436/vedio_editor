package com.adobe.creativesdk.foundation.internal.net;

/* JADX INFO: loaded from: classes.dex */
class AdobeNetworkHttpDataDownloadTask extends AdobeNetworkHttpTask {
    AdobeNetworkHttpDataDownloadTask() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask
    protected void captureInputStream() {
        captureData(this.response);
    }
}
