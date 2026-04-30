package com.behance.sdk.network;

import android.support.annotation.Nullable;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.data.analytics.Engagement;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
public class BehanceHttpsConnection implements IBehanceHttpConnection {
    private static final String ACCESS_TOKEN = "Authorization";
    private static final String ACCESS_TOKEN_PREFIX = "Bearer ";
    private static final int BUFFER_SIZE = 32768;
    private static final String CHARSET_NAME_UTF_8 = "UTF-8";
    private static final int CONNECT_TIMEOUT_MILLIS = 15000;
    private static final String LINE_ENDING = "\r\n";
    private static final int READ_TIMEOUT_MILLIS = 10000;
    private NoSSLv3Factory noSSLv3Factory = new NoSSLv3Factory();
    private static final ILogger logger = LoggerFactory.getLogger(BehanceHttpsConnection.class);
    private static BehanceHttpsConnection instance = null;

    public static BehanceHttpsConnection getInstance() {
        if (instance == null) {
            instance = new BehanceHttpsConnection();
        }
        return instance;
    }

    private BehanceHttpsConnection() {
    }

    public BehanceConnectionResponse<String> invokeHttpGetRequest(String str, @Nullable String str2) throws IOException {
        return invokeHttpRequest(BehanceHttpMethod.GET, str, str2);
    }

    public BehanceConnectionResponse<String> invokeHttpGetRequest(String str, List<BehanceNameValuePair> list, @Nullable String str2) throws IOException {
        return invokeHttpRequest(BehanceHttpMethod.GET, str, list, str2);
    }

    public BehanceConnectionResponse<String> invokeHttpPostRequest(String str, @Nullable String str2) throws IOException {
        return invokeHttpPostRequest(str, null, str2);
    }

    public BehanceConnectionResponse<String> invokeHttpPostRequest(String str, List<BehanceNameValuePair> list, @Nullable String str2) throws IOException {
        return invokeHttpPostRequest(str, list, (List<BehanceNameValuePair>) null, str2);
    }

    public BehanceConnectionResponse<String> invokeHttpPostRequest(String str, List<BehanceNameValuePair> list, List<BehanceNameValuePair> list2, OAuthConsumer oAuthConsumer, @Nullable String str2) throws OAuthExpectationFailedException, IOException, OAuthMessageSignerException, OAuthCommunicationException {
        BehanceConnectionResponse<String> behanceConnectionResponse = new BehanceConnectionResponse<>();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(BehanceSDKUrlUtil.appendQueryStringParam(str, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId())).openConnection();
        httpsURLConnection.setSSLSocketFactory(this.noSSLv3Factory);
        httpsURLConnection.setRequestMethod(BehanceHttpMethod.POST.name());
        httpsURLConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        if (str2 != null) {
            httpsURLConnection.setRequestProperty("Authorization", ACCESS_TOKEN_PREFIX + str2);
        }
        addSDKHeaders(httpsURLConnection);
        httpsURLConnection.setDoInput(true);
        oAuthConsumer.sign(httpsURLConnection);
        if (list2 != null) {
            for (BehanceNameValuePair behanceNameValuePair : list2) {
                if (behanceNameValuePair != null) {
                    httpsURLConnection.setRequestProperty(behanceNameValuePair.getName(), behanceNameValuePair.getValue());
                }
            }
        }
        StringBuilder sb = null;
        if (list != null) {
            StringBuilder sb2 = new StringBuilder();
            boolean z = true;
            for (BehanceNameValuePair behanceNameValuePair2 : list) {
                if (behanceNameValuePair2 != null) {
                    if (z) {
                        z = false;
                    } else {
                        sb2.append("&");
                    }
                    sb2.append(URLEncoder.encode(behanceNameValuePair2.getName(), "UTF-8"));
                    sb2.append(Engagement.Comparison.EQ);
                    sb2.append(URLEncoder.encode(behanceNameValuePair2.getValue(), "UTF-8"));
                }
                z = z;
            }
            sb = sb2;
        }
        httpsURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        if (sb != null) {
            httpsURLConnection.setDoOutput(true);
            OutputStream outputStream = httpsURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            bufferedWriter.write(sb.toString());
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
        }
        httpsURLConnection.connect();
        readResponseFromUrlConnection(httpsURLConnection, behanceConnectionResponse);
        return behanceConnectionResponse;
    }

    public BehanceConnectionResponse<String> invokeHttpPostRequest(String str, List<BehanceNameValuePair> list, List<BehanceNameValuePair> list2, @Nullable String str2) throws IOException {
        BehanceConnectionResponse<String> behanceConnectionResponse = new BehanceConnectionResponse<>();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(BehanceSDKUrlUtil.appendQueryStringParam(str, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId())).openConnection();
        httpsURLConnection.setSSLSocketFactory(this.noSSLv3Factory);
        httpsURLConnection.setRequestMethod(BehanceHttpMethod.POST.name());
        httpsURLConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        if (str2 != null) {
            httpsURLConnection.setRequestProperty("Authorization", ACCESS_TOKEN_PREFIX + str2);
        }
        addSDKHeaders(httpsURLConnection);
        httpsURLConnection.setDoInput(true);
        if (list2 != null) {
            for (BehanceNameValuePair behanceNameValuePair : list2) {
                if (behanceNameValuePair != null) {
                    httpsURLConnection.setRequestProperty(behanceNameValuePair.getName(), behanceNameValuePair.getValue());
                }
            }
        }
        StringBuilder sb = null;
        if (list != null) {
            StringBuilder sb2 = new StringBuilder();
            boolean z = true;
            for (BehanceNameValuePair behanceNameValuePair2 : list) {
                if (behanceNameValuePair2 != null) {
                    if (z) {
                        z = false;
                    } else {
                        sb2.append("&");
                    }
                    sb2.append(URLEncoder.encode(behanceNameValuePair2.getName(), "UTF-8"));
                    sb2.append(Engagement.Comparison.EQ);
                    sb2.append(URLEncoder.encode(behanceNameValuePair2.getValue(), "UTF-8"));
                }
                z = z;
            }
            sb = sb2;
        }
        if (sb != null) {
            httpsURLConnection.setDoOutput(true);
            OutputStream outputStream = httpsURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            bufferedWriter.write(sb.toString());
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
        }
        httpsURLConnection.connect();
        readResponseFromUrlConnection(httpsURLConnection, behanceConnectionResponse);
        return behanceConnectionResponse;
    }

    public BehanceConnectionResponse<String> invokeHttpPostRequest(String str, String str2, List<BehanceNameValuePair> list, @Nullable String str3) throws IOException {
        BehanceConnectionResponse<String> behanceConnectionResponse = new BehanceConnectionResponse<>();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(BehanceSDKUrlUtil.appendQueryStringParam(str, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId())).openConnection();
        httpsURLConnection.setSSLSocketFactory(this.noSSLv3Factory);
        httpsURLConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        httpsURLConnection.setRequestMethod(BehanceHttpMethod.POST.name());
        if (str3 != null) {
            httpsURLConnection.setRequestProperty("Authorization", ACCESS_TOKEN_PREFIX + str3);
        }
        addSDKHeaders(httpsURLConnection);
        httpsURLConnection.setDoInput(true);
        if (list != null) {
            for (BehanceNameValuePair behanceNameValuePair : list) {
                if (behanceNameValuePair != null) {
                    httpsURLConnection.setRequestProperty(behanceNameValuePair.getName(), behanceNameValuePair.getValue());
                }
            }
        }
        if (str2 != null && !str2.isEmpty()) {
            httpsURLConnection.setDoOutput(true);
            OutputStream outputStream = httpsURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            bufferedWriter.write(str2);
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
        }
        httpsURLConnection.connect();
        readResponseFromUrlConnection(httpsURLConnection, behanceConnectionResponse);
        return behanceConnectionResponse;
    }

    public BehanceConnectionResponse<String> invokeHttpPostRequest(String str, BehanceMultipartEntity behanceMultipartEntity, BehanceRequestCancellationWrapper behanceRequestCancellationWrapper, @Nullable String str2) throws Throwable {
        BehanceConnectionResponse<String> behanceConnectionResponse = new BehanceConnectionResponse<>();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(BehanceSDKUrlUtil.appendQueryStringParam(str, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId())).openConnection();
        httpsURLConnection.setSSLSocketFactory(this.noSSLv3Factory);
        httpsURLConnection.setRequestMethod(BehanceHttpMethod.POST.name());
        httpsURLConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        if (str2 != null) {
            httpsURLConnection.setRequestProperty("Authorization", ACCESS_TOKEN_PREFIX + str2);
        }
        addSDKHeaders(httpsURLConnection);
        httpsURLConnection.setDoInput(true);
        if (behanceMultipartEntity.getMultipartHeaders() != null) {
            for (BehanceNameValuePair behanceNameValuePair : behanceMultipartEntity.getMultipartHeaders()) {
                if (behanceNameValuePair != null) {
                    httpsURLConnection.setRequestProperty(behanceNameValuePair.getName(), behanceNameValuePair.getValue());
                }
            }
        }
        if (behanceMultipartEntity.getMultiPartDataList() != null && !behanceMultipartEntity.getMultiPartDataList().isEmpty()) {
            writeToOutputStream(httpsURLConnection, behanceMultipartEntity, behanceRequestCancellationWrapper);
        }
        httpsURLConnection.connect();
        readResponseFromUrlConnection(httpsURLConnection, behanceConnectionResponse);
        return behanceConnectionResponse;
    }

    public BehanceConnectionResponse<String> invokeHttpPutRequest(String str, @Nullable String str2) throws IOException {
        return invokeHttpPutRequest(str, null, str2);
    }

    public BehanceConnectionResponse<String> invokeHttpPutRequest(String str, String str2, List<BehanceNameValuePair> list, @Nullable String str3) throws IOException {
        BehanceConnectionResponse<String> behanceConnectionResponse = new BehanceConnectionResponse<>();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(BehanceSDKUrlUtil.appendQueryStringParam(str, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId())).openConnection();
        httpsURLConnection.setSSLSocketFactory(this.noSSLv3Factory);
        httpsURLConnection.setRequestMethod(BehanceHttpMethod.PUT.name());
        httpsURLConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        if (str3 != null) {
            httpsURLConnection.setRequestProperty("Authorization", ACCESS_TOKEN_PREFIX + str3);
        }
        addSDKHeaders(httpsURLConnection);
        httpsURLConnection.setDoInput(true);
        if (list != null) {
            for (BehanceNameValuePair behanceNameValuePair : list) {
                if (behanceNameValuePair != null) {
                    httpsURLConnection.setRequestProperty(behanceNameValuePair.getName(), behanceNameValuePair.getValue());
                }
            }
        }
        if (str2 != null && !str2.isEmpty()) {
            httpsURLConnection.setDoOutput(true);
            OutputStream outputStream = httpsURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            bufferedWriter.write(str2);
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
        }
        httpsURLConnection.connect();
        readResponseFromUrlConnection(httpsURLConnection, behanceConnectionResponse);
        return behanceConnectionResponse;
    }

    public BehanceConnectionResponse<String> invokeHttpPutRequest(String str, List<BehanceNameValuePair> list, @Nullable String str2) throws IOException {
        BehanceConnectionResponse<String> behanceConnectionResponse = new BehanceConnectionResponse<>();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(BehanceSDKUrlUtil.appendQueryStringParam(str, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId())).openConnection();
        httpsURLConnection.setSSLSocketFactory(this.noSSLv3Factory);
        httpsURLConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        httpsURLConnection.setRequestMethod(BehanceHttpMethod.PUT.name());
        if (str2 != null) {
            httpsURLConnection.setRequestProperty("Authorization", ACCESS_TOKEN_PREFIX + str2);
        }
        addSDKHeaders(httpsURLConnection);
        httpsURLConnection.setDoInput(true);
        StringBuilder sb = null;
        if (list != null) {
            StringBuilder sb2 = new StringBuilder();
            boolean z = true;
            for (BehanceNameValuePair behanceNameValuePair : list) {
                if (behanceNameValuePair != null) {
                    if (z) {
                        z = false;
                    } else {
                        sb2.append("&");
                    }
                    sb2.append(URLEncoder.encode(behanceNameValuePair.getName(), "UTF-8"));
                    sb2.append(Engagement.Comparison.EQ);
                    sb2.append(URLEncoder.encode(behanceNameValuePair.getValue(), "UTF-8"));
                }
                z = z;
            }
            sb = sb2;
        }
        if (sb != null) {
            httpsURLConnection.setDoOutput(true);
            OutputStream outputStream = httpsURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            bufferedWriter.write(sb.toString());
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
        }
        httpsURLConnection.connect();
        readResponseFromUrlConnection(httpsURLConnection, behanceConnectionResponse);
        return behanceConnectionResponse;
    }

    private static final void setRequestMethodUsingWorkaroundForJREBug(HttpURLConnection httpURLConnection, String str) {
        Class<?> superclass;
        try {
            httpURLConnection.setRequestMethod(str);
        } catch (ProtocolException e2) {
            Class<?> cls = httpURLConnection.getClass();
            try {
                Field declaredField = cls.getDeclaredField("delegate");
                declaredField.setAccessible(true);
                setRequestMethodUsingWorkaroundForJREBug((HttpURLConnection) declaredField.get(httpURLConnection), str);
                superclass = cls;
            } catch (IllegalAccessException e3) {
                e = e3;
                throw new RuntimeException(e);
            } catch (IllegalArgumentException e4) {
                e = e4;
                throw new RuntimeException(e);
            } catch (NoSuchFieldException e5) {
                superclass = cls;
            }
            while (superclass != null) {
                try {
                    Field declaredField2 = superclass.getDeclaredField("method");
                    declaredField2.setAccessible(true);
                    declaredField2.set(httpURLConnection, str);
                    return;
                } catch (NoSuchFieldException e6) {
                    try {
                        superclass = superclass.getSuperclass();
                    } catch (Exception e7) {
                        throw new RuntimeException(e7);
                    }
                }
            }
        }
    }

    public BehanceConnectionResponse<String> invokeHttpPatchRequest(String str, BehanceMultipartEntity behanceMultipartEntity, BehanceRequestCancellationWrapper behanceRequestCancellationWrapper, @Nullable String str2) throws Throwable {
        BehanceConnectionResponse<String> behanceConnectionResponse = new BehanceConnectionResponse<>();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(BehanceSDKUrlUtil.appendQueryStringParam(str, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId())).openConnection();
        httpsURLConnection.setSSLSocketFactory(this.noSSLv3Factory);
        httpsURLConnection.setRequestMethod("PATCH");
        httpsURLConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        if (str2 != null) {
            httpsURLConnection.setRequestProperty("Authorization", ACCESS_TOKEN_PREFIX + str2);
        }
        addSDKHeaders(httpsURLConnection);
        httpsURLConnection.setDoOutput(true);
        if (behanceMultipartEntity.getMultipartHeaders() != null) {
            for (BehanceNameValuePair behanceNameValuePair : behanceMultipartEntity.getMultipartHeaders()) {
                if (behanceNameValuePair != null) {
                    httpsURLConnection.setRequestProperty(behanceNameValuePair.getName(), behanceNameValuePair.getValue());
                }
            }
        }
        if (behanceMultipartEntity.getMultiPartDataList() != null && !behanceMultipartEntity.getMultiPartDataList().isEmpty()) {
            writeToOutputStream(httpsURLConnection, behanceMultipartEntity, behanceRequestCancellationWrapper);
        }
        httpsURLConnection.connect();
        readResponseFromUrlConnection(httpsURLConnection, behanceConnectionResponse);
        return behanceConnectionResponse;
    }

    public BehanceConnectionResponse<String> invokeHttpPutRequest(String str, BehanceMultipartEntity behanceMultipartEntity, BehanceRequestCancellationWrapper behanceRequestCancellationWrapper, @Nullable String str2) throws Throwable {
        BehanceConnectionResponse<String> behanceConnectionResponse = new BehanceConnectionResponse<>();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(BehanceSDKUrlUtil.appendQueryStringParam(str, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId())).openConnection();
        httpsURLConnection.setSSLSocketFactory(this.noSSLv3Factory);
        httpsURLConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        httpsURLConnection.setRequestMethod(BehanceHttpMethod.PUT.name());
        if (str2 != null) {
            httpsURLConnection.setRequestProperty("Authorization", ACCESS_TOKEN_PREFIX + str2);
        }
        addSDKHeaders(httpsURLConnection);
        httpsURLConnection.setDoInput(true);
        if (behanceMultipartEntity.getMultipartHeaders() != null) {
            for (BehanceNameValuePair behanceNameValuePair : behanceMultipartEntity.getMultipartHeaders()) {
                if (behanceNameValuePair != null) {
                    httpsURLConnection.setRequestProperty(behanceNameValuePair.getName(), behanceNameValuePair.getValue());
                }
            }
        }
        if (behanceMultipartEntity.getMultiPartDataList() != null && !behanceMultipartEntity.getMultiPartDataList().isEmpty()) {
            writeToOutputStream(httpsURLConnection, behanceMultipartEntity, behanceRequestCancellationWrapper);
        }
        httpsURLConnection.connect();
        readResponseFromUrlConnection(httpsURLConnection, behanceConnectionResponse);
        return behanceConnectionResponse;
    }

    public BehanceConnectionResponse<String> invokeHttpDeleteRequest(String str, @Nullable String str2) throws IOException {
        return invokeHttpRequest(BehanceHttpMethod.DELETE, str, str2);
    }

    public BehanceConnectionResponse<String> invokeHttpDeleteRequest(String str, List<BehanceNameValuePair> list, @Nullable String str2) throws IOException {
        return invokeHttpRequest(BehanceHttpMethod.DELETE, str, list, str2);
    }

    private BehanceConnectionResponse<String> invokeHttpRequest(BehanceHttpMethod behanceHttpMethod, String str, @Nullable String str2) throws IOException {
        return invokeHttpRequest(behanceHttpMethod, str, null, str2);
    }

    private BehanceConnectionResponse<String> invokeHttpRequest(BehanceHttpMethod behanceHttpMethod, String str, List<BehanceNameValuePair> list, @Nullable String str2) throws IOException {
        BehanceConnectionResponse<String> behanceConnectionResponse = new BehanceConnectionResponse<>();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(BehanceSDKUrlUtil.appendQueryStringParam(str, BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId())).openConnection();
        httpsURLConnection.setSSLSocketFactory(this.noSSLv3Factory);
        httpsURLConnection.setRequestProperty(BehanceSDKUrlUtil.KEY_X_IMS_CLIENT_ID, AdobeCSDKFoundation.getClientId());
        httpsURLConnection.setReadTimeout(10000);
        httpsURLConnection.setConnectTimeout(15000);
        httpsURLConnection.setRequestMethod(behanceHttpMethod.name());
        if (str2 != null) {
            httpsURLConnection.setRequestProperty("Authorization", ACCESS_TOKEN_PREFIX + str2);
        }
        addSDKHeaders(httpsURLConnection);
        httpsURLConnection.setDoInput(true);
        if (list != null) {
            for (BehanceNameValuePair behanceNameValuePair : list) {
                if (behanceNameValuePair != null) {
                    httpsURLConnection.setRequestProperty(behanceNameValuePair.getName(), behanceNameValuePair.getValue());
                }
            }
        }
        httpsURLConnection.connect();
        readResponseFromUrlConnection(httpsURLConnection, behanceConnectionResponse);
        return behanceConnectionResponse;
    }

    private void readResponseFromUrlConnection(HttpsURLConnection httpsURLConnection, BehanceConnectionResponse<String> behanceConnectionResponse) throws IOException {
        int responseCode;
        try {
            responseCode = httpsURLConnection.getResponseCode();
        } catch (IOException e2) {
            responseCode = httpsURLConnection.getResponseCode();
        }
        behanceConnectionResponse.setResponseCode(responseCode);
        if (responseCode == 200) {
            behanceConnectionResponse.setHeaders(httpsURLConnection.getHeaderFields());
        }
        logger.debug("Reading response from [Response code - %s] [URL - %s] ", Integer.valueOf(responseCode), httpsURLConnection.getURL());
        InputStream errorStream = null;
        try {
            StringBuilder sb = new StringBuilder();
            errorStream = httpsURLConnection.getErrorStream();
            if (errorStream == null) {
                errorStream = httpsURLConnection.getInputStream();
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                } else {
                    sb.append(line + "\r\n");
                }
            }
            behanceConnectionResponse.setResponseObject(sb.toString());
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Throwable th) {
                    logger.warn(th, "Problem closing input stream. [URL - %s]", httpsURLConnection.getURL());
                }
            }
            try {
                httpsURLConnection.disconnect();
            } catch (Throwable th2) {
                logger.warn(th2, "Problem disconnecting url connection. [URL - %s]", httpsURLConnection.getURL());
            }
        } catch (Throwable th3) {
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Throwable th4) {
                    logger.warn(th4, "Problem closing input stream. [URL - %s]", httpsURLConnection.getURL());
                }
            }
            try {
                httpsURLConnection.disconnect();
            } catch (Throwable th5) {
                logger.warn(th5, "Problem disconnecting url connection. [URL - %s]", httpsURLConnection.getURL());
            }
            throw th3;
        }
    }

    private void sendFileInputStream(BufferedInputStream bufferedInputStream, BehanceMultipartEntity behanceMultipartEntity, BehanceMultiPartData behanceMultiPartData, OutputStream outputStream, BehanceRequestCancellationWrapper behanceRequestCancellationWrapper) throws IOException {
        if (bufferedInputStream.available() > 0) {
            outputStream.write(BehanceMultipartEntity.generateMultiPartFormData(behanceMultiPartData, behanceMultipartEntity.getBoundary(), behanceMultipartEntity.isBrowserCompatible()));
            behanceMultipartEntity.incrementTransferredBytesLength(r0.length);
            byte[] bArr = new byte[32768];
            int i = bufferedInputStream.read(bArr, 0, 32768);
            while (i > 0) {
                if (behanceRequestCancellationWrapper == null || !behanceRequestCancellationWrapper.isCancelled()) {
                    outputStream.write(bArr, 0, i);
                    outputStream.flush();
                    behanceMultipartEntity.incrementTransferredBytesLength(i);
                    i = bufferedInputStream.read(bArr, 0, 32768);
                } else {
                    return;
                }
            }
        }
    }

    protected void writeToOutputStream(HttpsURLConnection httpsURLConnection, BehanceMultipartEntity behanceMultipartEntity, BehanceRequestCancellationWrapper behanceRequestCancellationWrapper) throws Throwable {
        OutputStream outputStream;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        BufferedInputStream bufferedInputStream3 = null;
        byte[] bytes = "\r\n".getBytes();
        try {
            try {
                httpsURLConnection.setDoOutput(true);
                httpsURLConnection.setDoInput(true);
                if (behanceMultipartEntity.isChunked()) {
                    httpsURLConnection.setChunkedStreamingMode(32768);
                }
                outputStream = httpsURLConnection.getOutputStream();
                try {
                    for (BehanceMultiPartData behanceMultiPartData : behanceMultipartEntity.getMultiPartDataList()) {
                        if (behanceRequestCancellationWrapper != null && behanceRequestCancellationWrapper.isCancelled()) {
                            break;
                        }
                        if (behanceMultiPartData.getSourcePath() != null) {
                            try {
                                bufferedInputStream2 = new BufferedInputStream(new FileInputStream(behanceMultiPartData.getSourcePath()), 32768);
                                try {
                                    try {
                                        sendFileInputStream(bufferedInputStream2, behanceMultipartEntity, behanceMultiPartData, outputStream, behanceRequestCancellationWrapper);
                                    } catch (Throwable th) {
                                        th = th;
                                        bufferedInputStream3 = bufferedInputStream2;
                                        IOUtils.closeQuietly((InputStream) bufferedInputStream3);
                                        throw th;
                                    }
                                } catch (IOException e2) {
                                    e = e2;
                                    e.printStackTrace();
                                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                                }
                            } catch (IOException e3) {
                                e = e3;
                                bufferedInputStream = null;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } else if (behanceMultiPartData.getInputStream() != null) {
                            bufferedInputStream2 = new BufferedInputStream(behanceMultiPartData.getInputStream(), 32768);
                            try {
                                try {
                                    sendFileInputStream(bufferedInputStream2, behanceMultipartEntity, behanceMultiPartData, outputStream, behanceRequestCancellationWrapper);
                                } finally {
                                    IOUtils.closeQuietly((InputStream) bufferedInputStream2);
                                }
                            } catch (IOException e4) {
                                e4.printStackTrace();
                                IOUtils.closeQuietly((InputStream) bufferedInputStream2);
                            }
                        } else if (behanceMultiPartData.getData() != null) {
                            outputStream.write(BehanceMultipartEntity.generateMultiPartFormData(behanceMultiPartData, behanceMultipartEntity.getBoundary(), behanceMultipartEntity.isBrowserCompatible()));
                            behanceMultipartEntity.incrementTransferredBytesLength(r0.length);
                            outputStream.write(behanceMultiPartData.getData());
                            behanceMultipartEntity.incrementTransferredBytesLength(behanceMultiPartData.getData().length);
                        }
                        outputStream.write(bytes);
                        outputStream.flush();
                    }
                    outputStream.write(String.format("--%s--\r\n", behanceMultipartEntity.getBoundary()).getBytes(Charset.forName("UTF-8")));
                    outputStream.flush();
                    IOUtils.closeQuietly(outputStream);
                } catch (IOException e5) {
                    e = e5;
                    e.printStackTrace();
                    logger.error(e, "Error during io operation", new Object[0]);
                    IOUtils.closeQuietly(outputStream);
                }
            } catch (Throwable th3) {
                th = th3;
                IOUtils.closeQuietly((OutputStream) null);
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            outputStream = null;
        } catch (Throwable th4) {
            th = th4;
            IOUtils.closeQuietly((OutputStream) null);
            throw th;
        }
    }

    private void addSDKHeaders(HttpsURLConnection httpsURLConnection) {
        BehanceNameValuePair universalHeader = BehanceSDK.getInstance().getUniversalHeader();
        if (universalHeader != null) {
            httpsURLConnection.setRequestProperty(universalHeader.getName(), universalHeader.getValue());
        }
    }
}
