package com.adobe.creativesdk.foundation.internal.net;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.internal.utils.AdobeNetworkUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import javax.net.ssl.SSLException;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes.dex */
abstract class AdobeNetworkHttpTask implements Callable<AdobeNetworkHttpResponse> {
    private static final int BUFFER_SIZE = 32768;
    static final String CLIENT_ID = "client_id";
    public static final String ERROR_DURING_IO_OPERATION = "Error during io operation";
    private static final boolean L = false;
    private static final String T = AdobeNetworkHttpTask.class.getSimpleName();
    protected static double[] retryOn5xxDelays = {0.1d, 1.0d, 2.0d};
    protected AdobeNetworkHttpResponseHandler completionHandler = null;
    protected AdobeNetworkHttpTaskHandle requestHandler = null;
    protected String accessToken = null;
    protected HttpURLConnection urlConnection = null;
    protected AdobeNetworkHttpRequest request = null;
    protected int numRetries = -1;
    protected boolean retryEnabled = true;
    AdobeNetworkHttpResponse response = null;

    protected abstract void captureInputStream();

    AdobeNetworkHttpTask() {
    }

    public void init(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        this.request = adobeNetworkHttpRequest;
        this.completionHandler = adobeNetworkHttpResponseHandler;
        this.requestHandler = adobeNetworkHttpTaskHandle;
        this.accessToken = str;
        this.urlConnection = null;
        this.numRetries = -1;
        this.response = null;
    }

    protected boolean writeToOutputStream() throws Throwable {
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        try {
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e2) {
            e = e2;
        }
        if (this.request.getRequestMethod() != AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST) {
            if (this.request.getRequestMethod() != AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT) {
                IOUtils.closeQuietly((OutputStream) null);
                return false;
            }
            if (this.request.getBodyStream() != null) {
                this.urlConnection.setDoOutput(true);
                outputStream2 = this.urlConnection.getOutputStream();
                InputStream bodyStream = this.request.getBodyStream();
                byte[] bArr = new byte[32768];
                for (int i = bodyStream.read(bArr, 0, 32768); i > 0; i = bodyStream.read(bArr, 0, 32768)) {
                    outputStream2.write(bArr, 0, i);
                }
                outputStream2.flush();
                this.request.closeStream();
            }
            IOUtils.closeQuietly(outputStream2);
            return true;
        }
        this.urlConnection.setDoOutput(true);
        Uri.Builder builder = new Uri.Builder();
        if (this.request.getQueryParams() != null) {
            for (Map.Entry<String, String> entry : this.request.getQueryParams().entrySet()) {
                builder.appendQueryParameter(entry.getKey(), entry.getValue());
            }
        }
        String string = builder.build().toString();
        String strSubstring = !string.isEmpty() ? string.substring(1) : string;
        if (strSubstring.isEmpty() && this.request.getBodyStream() == null) {
            outputStream = null;
        } else {
            outputStream = this.urlConnection.getOutputStream();
            try {
                if (!strSubstring.isEmpty()) {
                    outputStream.write(strSubstring.getBytes("UTF-8"));
                }
                InputStream bodyStream2 = this.request.getBodyStream();
                if (bodyStream2 != null && bodyStream2.available() > 0) {
                    int iAvailable = bodyStream2.available();
                    byte[] bArr2 = new byte[32768];
                    int i2 = bodyStream2.read(bArr2, 0, 32768);
                    int i3 = 0;
                    while (i2 > 0) {
                        if (this.requestHandler.isCancelled()) {
                            this.request.closeStream();
                            IOUtils.closeQuietly(outputStream);
                            return false;
                        }
                        outputStream.write(bArr2, 0, i2);
                        outputStream.flush();
                        i3 += i2;
                        i2 = bodyStream2.read(bArr2, 0, 32768);
                        onProgressUpdate(Integer.valueOf((int) ((i3 / iAvailable) * 100.0f)));
                    }
                    this.response.setBytesSent(i3);
                    this.request.closeStream();
                }
            } catch (Exception e3) {
                outputStream2 = outputStream;
                e = e3;
                AdobeLogger.log(Level.ERROR, AdobeNetworkHttpTask.class.getName(), "Error during io operation", e);
                IOUtils.closeQuietly(outputStream2);
                return false;
            } catch (Throwable th2) {
                outputStream2 = outputStream;
                th = th2;
                IOUtils.closeQuietly(outputStream2);
                throw th;
            }
        }
        IOUtils.closeQuietly(outputStream);
        return true;
    }

    protected void useAccessTokenInHeaders() {
        if (!TextUtils.isEmpty(this.accessToken)) {
            this.urlConnection.setRequestProperty("Authorization", "Bearer " + this.accessToken);
        } else {
            AdobeLogger.log(Level.WARN, T, "access token empty");
        }
    }

    protected void useClientIDInHeadersAndParameters() {
        if (TextUtils.isEmpty(AdobeCSDKFoundation.getClientId())) {
            AdobeLogger.log(Level.WARN, T, "client ID empty");
        }
        this.urlConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
    }

    protected void captureData(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        int i = 0;
        int statusCode = adobeNetworkHttpResponse.getStatusCode();
        if (statusCode >= 200 && statusCode < 299) {
            try {
                InputStream inputStream = this.urlConnection.getInputStream();
                if (inputStream != null) {
                    byte[] bArr = new byte[32768];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(32768);
                    int i2 = inputStream.read(bArr, 0, 32768);
                    while (i2 > 0) {
                        if (this.requestHandler.isCancelled()) {
                            IOUtils.closeQuietly(inputStream);
                            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                            return;
                        }
                        byteArrayOutputStream.write(bArr, 0, i2);
                        byteArrayOutputStream.flush();
                        i += i2;
                        i2 = inputStream.read(bArr, 0, 32768);
                        if (this.urlConnection.getContentLength() > 0) {
                            onProgressUpdate(Integer.valueOf((int) ((i / this.urlConnection.getContentLength()) * 100.0f)));
                        }
                    }
                    adobeNetworkHttpResponse.setData(ByteBuffer.wrap(byteArrayOutputStream.toByteArray()));
                    inputStream.close();
                    byteArrayOutputStream.close();
                    return;
                }
                return;
            } catch (IOException e2) {
                adobeNetworkHttpResponse.setStatusCode(503);
                AdobeLogger.log(Level.ERROR, "NetworkService", "Error during io operation", e2);
                return;
            }
        }
        try {
            InputStream errorStream = this.urlConnection.getErrorStream();
            if (errorStream != null) {
                adobeNetworkHttpResponse.setData(ByteBuffer.wrap(IOUtils.toByteArray(errorStream)));
                errorStream.close();
            }
        } catch (IOException e3) {
            AdobeLogger.log(Level.ERROR, "NetworkService", "Error during io operation", e3);
        }
    }

    protected void onProgressUpdate(Integer num) {
        this.requestHandler.notifyProgress(num.intValue());
    }

    protected void onPostExecute(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        if (this.completionHandler != null) {
            this.completionHandler.handleResponse(adobeNetworkHttpResponse);
        }
    }

    protected URLConnection openConnection(AdobeNetworkHttpRequest adobeNetworkHttpRequest) throws IOException {
        URL url = adobeNetworkHttpRequest.getUrl();
        if (adobeNetworkHttpRequest.shouldAddClientId() && adobeNetworkHttpRequest.getRequestMethod() != AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST && adobeNetworkHttpRequest.getRequestMethod() != AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT) {
            adobeNetworkHttpRequest.addQueryParameters("client_id", AdobeCSDKFoundation.getClientId());
        }
        String queryString = adobeNetworkHttpRequest.getQueryString();
        if (queryString != null && !queryString.isEmpty()) {
            url = adobeNetworkHttpRequest.getUrl().toString().contains("?") ? new URL(adobeNetworkHttpRequest.getUrl() + "&" + adobeNetworkHttpRequest.getQueryString()) : new URL(adobeNetworkHttpRequest.getUrl() + "?" + adobeNetworkHttpRequest.getQueryString());
        }
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        setHttpRequestParameters(adobeNetworkHttpRequest, uRLConnectionOpenConnection);
        return uRLConnectionOpenConnection;
    }

    protected void setHttpRequestParameters(AdobeNetworkHttpRequest adobeNetworkHttpRequest, URLConnection uRLConnection) {
        for (Map.Entry<String, String> entry : adobeNetworkHttpRequest.getRequestProperties().entrySet()) {
            uRLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (AdobeCSDKFoundation.getApplicationName() != null && !"".equals(AdobeCSDKFoundation.getApplicationName())) {
            setUserAgent(uRLConnection);
        }
        uRLConnection.setRequestProperty("Connection", HttpHeaderValues.CLOSE);
    }

    private void setUserAgent(URLConnection uRLConnection) {
        String userAgent = AdobeNetworkUtils.getUserAgent();
        if (userAgent != null) {
            uRLConnection.setRequestProperty("User-Agent", userAgent);
        }
    }

    protected boolean checkIfShouldRetry(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        boolean z = false;
        if (adobeNetworkHttpResponse != null && this.retryEnabled) {
            int statusCode = adobeNetworkHttpResponse.getStatusCode();
            this.numRetries++;
            if (statusCode > 499 && statusCode < 600 && statusCode != 507 && this.numRetries < retryOn5xxDelays.length) {
                z = true;
                try {
                    long j = (long) (retryOn5xxDelays[this.numRetries] * 1000.0d);
                    AdobeLogger.log(Level.INFO, T, "retry #" + this.numRetries + " sleep ..." + j);
                    Thread.sleep(j);
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.INFO, "NetworkService", "Retry connection for" + this.urlConnection.toString(), e2);
                }
            }
        }
        return z;
    }

    private String getRFC2047DecodedValue(String str) {
        if (str != null && str.startsWith("=?") && str.endsWith("?=")) {
            String[] strArrSplit = str.split("\\?");
            if (strArrSplit.length >= 4) {
                String str2 = strArrSplit[3];
                String str3 = strArrSplit[2];
                if (strArrSplit[1].startsWith("utf-8")) {
                    if (str3.startsWith("b")) {
                        return new String(Base64.decode(str2, 0), Charsets.UTF_8);
                    }
                    if (str3.startsWith("q")) {
                        return new String(str2.getBytes(Charsets.UTF_8), Charsets.UTF_8);
                    }
                    return str;
                }
                return str;
            }
            return str;
        }
        return str;
    }

    protected void parseHttpHeaders(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<String>> entry : this.urlConnection.getHeaderFields().entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < value.size()) {
                    arrayList.add(getRFC2047DecodedValue(value.get(i2)));
                    i = i2 + 1;
                }
            }
            map.put(key, arrayList);
        }
        adobeNetworkHttpResponse.setHeaders(map);
    }

    protected void addRequestMethod() {
        try {
            switch (this.request.getRequestMethod()) {
                case AdobeNetworkHttpRequestMethodGET:
                    this.urlConnection.setRequestMethod("GET");
                    break;
                case AdobeNetworkHttpRequestMethodDELETE:
                    this.urlConnection.setRequestMethod("DELETE");
                    break;
                case AdobeNetworkHttpRequestMethodHEAD:
                    this.urlConnection.setRequestMethod("HEAD");
                    break;
                case AdobeNetworkHttpRequestMethodPOST:
                    this.urlConnection.setRequestMethod("POST");
                    break;
                case AdobeNetworkHttpRequestMethodPUT:
                    this.urlConnection.setRequestMethod("PUT");
                    break;
            }
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "NetworkService", "Error while setting Http request method.", e2);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public AdobeNetworkHttpResponse call() throws Throwable {
        this.requestHandler.setScheduled(true);
        if (!this.requestHandler.isCancelled()) {
            this.response = new AdobeNetworkHttpResponse();
            do {
                this.urlConnection = null;
                this.response.setStatusCode(404);
                try {
                    this.urlConnection = (HttpURLConnection) openConnection(this.request);
                    if (this.request.isRequestTimeoutSet()) {
                        this.urlConnection.setConnectTimeout(this.request.getRequestTImeout());
                    }
                    this.response.setURL(this.request.getUrl());
                    addRequestMethod();
                    if (this.urlConnection == null) {
                        AdobeLogger.log(Level.ERROR, T, "error : url connection null");
                        return null;
                    }
                    useAccessTokenInHeaders();
                    useClientIDInHeadersAndParameters();
                    boolean zWriteToOutputStream = writeToOutputStream();
                    boolean zIsCancelled = this.requestHandler.isCancelled();
                    if (!zIsCancelled || zWriteToOutputStream) {
                        try {
                            this.response.setStatusCode(this.urlConnection.getResponseCode());
                            parseHttpHeaders(this.response);
                            captureInputStream();
                            zIsCancelled = this.requestHandler.isCancelled();
                        } catch (IOException e2) {
                            AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e2);
                            if ((e2 instanceof SSLException) || (e2 instanceof UnknownHostException)) {
                                this.response.setStatusCode(600);
                            } else {
                                this.response.setStatusCode(404);
                            }
                            this.response.setNetworkException(e2);
                        }
                    }
                    this.urlConnection.disconnect();
                    this.urlConnection = null;
                    if (zIsCancelled && !zWriteToOutputStream) {
                        this.response = null;
                    }
                } catch (IOException e3) {
                    AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error opening url connection", e3);
                    return null;
                }
            } while (checkIfShouldRetry(this.response));
        }
        onPostExecute(this.response);
        return this.response;
    }
}
