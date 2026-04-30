package com.adobe.mobile;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes2.dex */
final class RequestHandler {
    private static final int BUF_SIZE = 1024;
    private static final int CONNECTION_TIMEOUT = 2000;
    private static final int MAX_REDIRECT_COUNT = 21;

    public interface HeaderCallback {
        void call(Map<String, List<String>> map);
    }

    RequestHandler() {
    }

    protected static byte[] retrieveData(String str, final Map<String, String> map, int i, String str2) {
        if (StaticMethods.isWearableApp()) {
            return WearableFunctionBridge.retrieveData(str, i);
        }
        Callable<Map<String, String>> callable = new Callable<Map<String, String>>() { // from class: com.adobe.mobile.RequestHandler.1
            @Override // java.util.concurrent.Callable
            public Map<String, String> call() throws Exception {
                return map;
            }
        };
        if (map == null) {
            callable = null;
        }
        return retrieveData(str, i, str2, callable, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0160 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0194 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static byte[] retrieveData(java.lang.String r12, int r13, java.lang.String r14, java.util.concurrent.Callable<java.util.Map<java.lang.String, java.lang.String>> r15, com.adobe.mobile.RequestHandler.HeaderCallback r16) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.mobile.RequestHandler.retrieveData(java.lang.String, int, java.lang.String, java.util.concurrent.Callable, com.adobe.mobile.RequestHandler$HeaderCallback):byte[]");
    }

    protected static void sendGenericRequest(String str, Map<String, String> map, int i, String str2) {
        if (str != null) {
            if (StaticMethods.isWearableApp()) {
                WearableFunctionBridge.sendGenericRequest(str, i, str2);
                return;
            }
            try {
                HttpURLConnection httpURLConnectionRequestConnect = requestConnect(str);
                if (httpURLConnectionRequestConnect != null) {
                    httpURLConnectionRequestConnect.setConnectTimeout(i);
                    httpURLConnectionRequestConnect.setReadTimeout(i);
                    if (map != null) {
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            String value = entry.getValue();
                            if (value.trim().length() > 0) {
                                httpURLConnectionRequestConnect.setRequestProperty(entry.getKey(), value);
                            }
                        }
                    }
                    StaticMethods.logDebugFormat("%s - Request Sent(%s)", str2, str);
                    httpURLConnectionRequestConnect.getResponseCode();
                    httpURLConnectionRequestConnect.getInputStream().close();
                    httpURLConnectionRequestConnect.disconnect();
                }
            } catch (Error e2) {
                StaticMethods.logWarningFormat("%s - Exception while attempting to send hit, will not retry(%s)", str2, e2.getLocalizedMessage());
            } catch (SocketTimeoutException e3) {
                StaticMethods.logWarningFormat("%s - Timed out sending request(%s)", str2, str);
            } catch (IOException e4) {
                StaticMethods.logWarningFormat("%s - IOException while sending request, may retry(%s)", str2, e4.getLocalizedMessage());
            } catch (Exception e5) {
                StaticMethods.logWarningFormat("%s - Exception while attempting to send hit, will not retry(%s)", str2, e5.getLocalizedMessage());
            }
        }
    }

    protected static byte[] retrieveAnalyticsRequestData(String str, String str2, Map<String, String> map, int i, String str3) {
        if (str == null) {
            return null;
        }
        if (StaticMethods.isWearableApp()) {
            return WearableFunctionBridge.retrieveAnalyticsRequestData(str, str2, i, str3);
        }
        HttpURLConnection httpURLConnectionRequestConnect = requestConnect(str);
        try {
            if (httpURLConnectionRequestConnect == null) {
                return null;
            }
            try {
                try {
                    try {
                        try {
                            httpURLConnectionRequestConnect.setConnectTimeout(i);
                            httpURLConnectionRequestConnect.setReadTimeout(i);
                            httpURLConnectionRequestConnect.setRequestMethod("POST");
                            if (!MobileConfig.getInstance().getSSL()) {
                                httpURLConnectionRequestConnect.setRequestProperty("connection", HttpHeaderValues.CLOSE);
                            }
                            byte[] bytes = str2.getBytes("UTF-8");
                            httpURLConnectionRequestConnect.setFixedLengthStreamingMode(bytes.length);
                            httpURLConnectionRequestConnect.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                            if (map != null) {
                                for (Map.Entry<String, String> entry : map.entrySet()) {
                                    httpURLConnectionRequestConnect.setRequestProperty(entry.getKey(), entry.getValue());
                                }
                            }
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnectionRequestConnect.getOutputStream());
                            bufferedOutputStream.write(bytes);
                            bufferedOutputStream.close();
                            InputStream inputStream = httpURLConnectionRequestConnect.getInputStream();
                            byte[] bArr = new byte[1024];
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            if (MobileConfig.getInstance().getSSL() || httpURLConnectionRequestConnect.getResponseCode() == 200) {
                                while (true) {
                                    int i2 = inputStream.read(bArr);
                                    if (i2 == -1) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, i2);
                                }
                            }
                            inputStream.close();
                            StaticMethods.logDebugFormat("%s - Request Sent(%s)", str3, str2);
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            if (MobileConfig.getInstance().getSSL()) {
                                return byteArray;
                            }
                            httpURLConnectionRequestConnect.disconnect();
                            return byteArray;
                        } catch (Error e2) {
                            StaticMethods.logErrorFormat("%s - Exception while attempting to send hit, will not retry(%s)", str3, e2.getLocalizedMessage());
                            byte[] bArr2 = new byte[0];
                            if (MobileConfig.getInstance().getSSL()) {
                                return bArr2;
                            }
                            httpURLConnectionRequestConnect.disconnect();
                            return bArr2;
                        }
                    } catch (SocketTimeoutException e3) {
                        StaticMethods.logDebugFormat("%s - Timed out sending request(%s)", str3, str2);
                        if (!MobileConfig.getInstance().getSSL()) {
                            httpURLConnectionRequestConnect.disconnect();
                        }
                        return null;
                    }
                } catch (IOException e4) {
                    StaticMethods.logDebugFormat("%s - IOException while sending request, may retry(%s)", str3, e4.getLocalizedMessage());
                    if (!MobileConfig.getInstance().getSSL()) {
                        httpURLConnectionRequestConnect.disconnect();
                    }
                    return null;
                }
            } catch (Exception e5) {
                StaticMethods.logErrorFormat("%s - Exception while attempting to send hit, will not retry(%s)", str3, e5.getLocalizedMessage());
                byte[] bArr3 = new byte[0];
                if (MobileConfig.getInstance().getSSL()) {
                    return bArr3;
                }
                httpURLConnectionRequestConnect.disconnect();
                return bArr3;
            }
        } catch (Throwable th) {
            if (!MobileConfig.getInstance().getSSL()) {
                httpURLConnectionRequestConnect.disconnect();
            }
            throw th;
        }
    }

    protected static boolean sendThirdPartyRequest(String str, String str2, Map<String, String> map, int i, String str3, String str4) {
        if (str == null) {
            return false;
        }
        if (StaticMethods.isWearableApp()) {
            return WearableFunctionBridge.sendThirdPartyRequest(str, str2, i, str3, str4);
        }
        HttpURLConnection httpURLConnectionRequestConnect = requestConnect(str);
        if (httpURLConnectionRequestConnect == null) {
            return false;
        }
        try {
            httpURLConnectionRequestConnect.setConnectTimeout(i);
            httpURLConnectionRequestConnect.setReadTimeout(i);
            httpURLConnectionRequestConnect.setRequestMethod("GET");
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnectionRequestConnect.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            if (str2 != null && str2.length() > 0) {
                httpURLConnectionRequestConnect.setRequestMethod("POST");
                String str5 = (str3 == null || str3.length() <= 0) ? "application/x-www-form-urlencoded" : str3;
                byte[] bytes = str2.getBytes("UTF-8");
                httpURLConnectionRequestConnect.setFixedLengthStreamingMode(bytes.length);
                httpURLConnectionRequestConnect.setRequestProperty("Content-Type", str5);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnectionRequestConnect.getOutputStream());
                bufferedOutputStream.write(bytes);
                bufferedOutputStream.close();
            }
            InputStream inputStream = httpURLConnectionRequestConnect.getInputStream();
            while (inputStream.read(new byte[10]) > 0) {
            }
            inputStream.close();
            StaticMethods.logDebugFormat("%s - Successfully forwarded hit (%s body: %s type: %s)", str4, str, str2, str3);
        } catch (SocketTimeoutException e2) {
            StaticMethods.logDebugFormat("%s - Timed out sending request (%s)", str4, str2);
            return false;
        } catch (IOException e3) {
            StaticMethods.logDebugFormat("%s - IOException while sending request, will not retry (%s)", str4, e3.getLocalizedMessage());
        } catch (Error e4) {
            StaticMethods.logErrorFormat("%s - Exception while attempting to send hit, will not retry (%s)", str4, e4.getLocalizedMessage());
        } catch (Exception e5) {
            StaticMethods.logErrorFormat("%s - Exception while attempting to send hit, will not retry (%s)", str4, e5.getLocalizedMessage());
        }
        return true;
    }

    private static HttpURLConnection requestConnect(String str) {
        try {
            return (HttpURLConnection) new URL(str).openConnection();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Adobe Mobile - Exception opening URL(%s)", e2.getLocalizedMessage());
            return null;
        }
    }
}
