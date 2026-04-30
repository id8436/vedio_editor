package com.adobe.creativesdk.foundation.internal.net;

import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkMockHttpResponse extends AdobeNetworkHttpResponse {
    protected AdobeNetworkException exception;

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse
    public void setURL(URL url) {
        this.url = url;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse
    public void setData(ByteBuffer byteBuffer) {
        this.data = byteBuffer;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse
    public void setStatusCode(int i) {
        this.statusCode = i;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse
    public void setUrl(URL url) {
        this.url = url;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse
    public void setHeaders(Map<String, List<String>> map) {
        this.headers = map;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse
    public void setBytesSent(int i) {
        this.bytesSent = i;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse
    public void setBytesReceived(int i) {
        this.bytesReceived = i;
    }

    public void setException(AdobeNetworkException adobeNetworkException) {
        if (adobeNetworkException != null) {
            this.exception = adobeNetworkException;
        }
    }

    public AdobeNetworkException getException() {
        return this.exception;
    }
}
