package com.adobe.creativesdk.foundation.internal.net;

import android.net.Uri;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkHttpRequest {
    private static final int BUFFER_SIZE = 32768;
    private InputStream _body;
    private boolean encodeValues;
    private boolean isRequestTimeoutSet;
    private Map<String, String> queryParams;
    private AdobeNetworkHttpRequestMethod requestMethod;
    private Map<String, String> requestProperty;
    private int requestTimeout;
    private boolean shouldAddClientId;
    private URL url;

    public AdobeNetworkHttpRequest() {
        this.url = null;
        this.requestMethod = null;
        this._body = null;
        this.requestProperty = null;
        this.shouldAddClientId = true;
        this.isRequestTimeoutSet = false;
        this.encodeValues = true;
        this.requestProperty = new HashMap();
        this.queryParams = new LinkedHashMap();
    }

    public AdobeNetworkHttpRequest(URL url, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, Map<String, String> map) {
        this();
        this.url = url;
        this.requestMethod = adobeNetworkHttpRequestMethod;
        setRequestMethod(adobeNetworkHttpRequestMethod);
        this.queryParams = map;
    }

    public URL getUrl() {
        return this.url;
    }

    public String getQueryString() {
        if (this.queryParams == null) {
            return null;
        }
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : this.queryParams.entrySet()) {
            builder.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String string = builder.build().toString();
        return !string.isEmpty() ? string.substring(1) : string;
    }

    public void setUrl(URL url) {
        this.url = url;
    }

    public AdobeNetworkHttpRequestMethod getRequestMethod() {
        return this.requestMethod;
    }

    public void setRequestMethod(AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod) {
        this.requestMethod = adobeNetworkHttpRequestMethod;
    }

    public Map<String, String> getQueryParams() {
        return this.queryParams;
    }

    public void setQueryParams(Map<String, String> map) {
        this.queryParams = map;
    }

    public void addQueryParameters(String str, String str2) {
        if (this.queryParams == null) {
            this.queryParams = new LinkedHashMap();
        }
        if (this.queryParams.get(str) == null) {
            this.queryParams.put(str, str2);
        }
    }

    public boolean isEncodeValues() {
        return this.encodeValues;
    }

    public void setEncodeValues(boolean z) {
        this.encodeValues = z;
    }

    public InputStream getBodyStream() {
        return this._body;
    }

    public void setBody(byte[] bArr) {
        if (bArr != null) {
            IOUtils.closeQuietly(this._body);
            this._body = new ByteArrayInputStream(bArr);
        }
    }

    public void setBodyStream(InputStream inputStream) {
        IOUtils.closeQuietly(this._body);
        this._body = inputStream;
    }

    public void setBodyStreamFromFile(String str) throws FileNotFoundException {
        IOUtils.closeQuietly(this._body);
        this._body = new BufferedInputStream(new FileInputStream(new File(str)), 32768);
    }

    public void closeStream() {
        IOUtils.closeQuietly(this._body);
        this._body = null;
    }

    public void setBody(Map<String, String> map) {
    }

    public void setRequestProperty(String str, String str2) {
        this.requestProperty.put(str, str2);
    }

    public String getRequestProperty(String str) {
        return this.requestProperty.get(str);
    }

    public Map<String, String> getRequestProperties() {
        return this.requestProperty;
    }

    public void setShouldAddClientId(boolean z) {
        this.shouldAddClientId = z;
    }

    public boolean shouldAddClientId() {
        return this.shouldAddClientId;
    }

    public int getRequestTImeout() {
        return this.requestTimeout;
    }

    public void setRequestTimeout(int i) {
        this.isRequestTimeoutSet = true;
        this.requestTimeout = i;
    }

    public boolean isRequestTimeoutSet() {
        return this.isRequestTimeoutSet;
    }
}
