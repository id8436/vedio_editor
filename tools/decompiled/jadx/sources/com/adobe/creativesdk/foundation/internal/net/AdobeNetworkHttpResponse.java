package com.adobe.creativesdk.foundation.internal.net;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkHttpResponse {
    protected ByteBuffer data = null;
    protected int statusCode = 0;
    protected URL url = null;
    protected Map<String, List<String>> headers = null;
    protected int bytesSent = 0;
    protected int bytesReceived = 0;
    private boolean hasFileError = false;
    private Exception _networkException = null;
    private Boolean noStorageSpaceError = false;

    public boolean hasFileError() {
        return this.hasFileError;
    }

    public boolean hasNoStorageSpaceError() {
        return this.noStorageSpaceError.booleanValue();
    }

    public void setHasFileError(boolean z) {
        this.hasFileError = z;
    }

    public void setNoStorageSpaceError(boolean z) {
        this.noStorageSpaceError = Boolean.valueOf(z);
    }

    public void setNetworkException(Exception exc) {
        this._networkException = exc;
    }

    public Exception getNetworkException() {
        return this._networkException;
    }

    public String getDataString() {
        if (this.data == null) {
            return null;
        }
        try {
            return new String(this.data.array(), "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            AdobeLogger.log(Level.ERROR, AdobeNetworkHttpResponse.class.getName(), "Error during getDataString operation", e2);
            return null;
        }
    }

    public byte[] getDataBytes() {
        if (this.data != null) {
            return this.data.array();
        }
        return null;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setURL(URL url) {
        this.url = url;
    }

    public void setData(ByteBuffer byteBuffer) {
        this.data = byteBuffer;
    }

    public void setStatusCode(int i) {
        this.statusCode = i;
    }

    public URL getUrl() {
        return this.url;
    }

    void setUrl(URL url) {
        this.url = url;
    }

    public Map<String, List<String>> getHeaders() {
        return this.headers;
    }

    public void setHeaders(Map<String, List<String>> map) {
        this.headers = map;
    }

    public int getBytesSent() {
        return this.bytesSent;
    }

    void setBytesSent(int i) {
        this.bytesSent = i;
    }

    public int getBytesReceived() {
        return this.bytesReceived;
    }

    void setBytesReceived(int i) {
        this.bytesReceived = i;
    }
}
