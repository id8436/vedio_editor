package com.adobe.creativesdk.foundation.internal.net;

/* JADX INFO: loaded from: classes.dex */
class AdobeNetworkHttpFileDownloadTask extends AdobeNetworkHttpTask {
    private static final int BUFFER_SIZE = 32768;
    private static String T = AdobeNetworkHttpFileDownloadTask.class.getSimpleName();
    String _destinationPath = null;

    AdobeNetworkHttpFileDownloadTask() {
    }

    public void init(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, String str2, AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        this._destinationPath = str2;
        super.init(adobeNetworkHttpRequest, str, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6 A[Catch: all -> 0x00c7, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00c7, blocks: (B:25:0x0075, B:27:0x0082, B:29:0x008f, B:30:0x0092, B:35:0x00b6), top: B:51:0x0075 }] */
    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void captureInputStream() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpFileDownloadTask.captureInputStream():void");
    }
}
