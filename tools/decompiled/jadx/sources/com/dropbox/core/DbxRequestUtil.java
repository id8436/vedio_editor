package com.dropbox.core;

import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.util.StringUtil;
import com.dropbox.core.v2.callbacks.DbxGlobalCallbackFactory;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import com.google.gdata.client.appsforyourdomain.AppsGroupsService;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.charset.CharacterCodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class DbxRequestUtil {
    private static final Random RAND = new Random();
    public static DbxGlobalCallbackFactory sharedCallbackFactory;

    public abstract class RequestMaker<T, E extends Throwable> {
        public abstract T run() throws Throwable;
    }

    public abstract class ResponseHandler<T> {
        public abstract T handle(HttpRequestor.Response response) throws DbxException;
    }

    public static String encodeUrlParam(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw LangUtil.mkAssert("UTF-8 should always be supported", e2);
        }
    }

    public static String buildUrlWithParams(String str, String str2, String str3, String[] strArr) {
        return buildUri(str2, str3) + "?" + encodeUrlParams(str, strArr);
    }

    static String[] toParamsArray(Map<String, String> map) {
        String[] strArr = new String[map.size() * 2];
        int i = 0;
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                strArr[i2] = next.getKey();
                strArr[i2 + 1] = next.getValue();
                i = i2 + 2;
            } else {
                return strArr;
            }
        }
    }

    public static String buildUri(String str, String str2) {
        try {
            return new URI("https", str, URIUtil.SLASH + str2, null).toASCIIString();
        } catch (URISyntaxException e2) {
            throw LangUtil.mkAssert("URI creation failed, host=" + StringUtil.jq(str) + ", path=" + StringUtil.jq(str2), e2);
        }
    }

    private static String encodeUrlParams(String str, String[] strArr) {
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (str != null) {
            sb.append("locale=").append(encodeUrlParam(str));
            str2 = "&";
        }
        if (strArr != null) {
            if (strArr.length % 2 != 0) {
                throw new IllegalArgumentException("'params.length' is " + strArr.length + "; expecting a multiple of two");
            }
            for (int i = 0; i < strArr.length; i += 2) {
                String str3 = strArr[i];
                String str4 = strArr[i + 1];
                if (str3 == null) {
                    throw new IllegalArgumentException("params[" + i + "] is null");
                }
                if (str4 != null) {
                    sb.append(str2);
                    str2 = "&";
                    sb.append(encodeUrlParam(str3));
                    sb.append(Engagement.Comparison.EQ);
                    sb.append(encodeUrlParam(str4));
                }
            }
        }
        return sb.toString();
    }

    public static List<HttpRequestor.Header> addAuthHeader(List<HttpRequestor.Header> list, String str) {
        if (str == null) {
            throw new NullPointerException("accessToken");
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new HttpRequestor.Header("Authorization", "Bearer " + str));
        return list;
    }

    public static List<HttpRequestor.Header> addSelectUserHeader(List<HttpRequestor.Header> list, String str) {
        if (str == null) {
            throw new NullPointerException(AppsGroupsService.APPS_PROP_GROUP_MEMBER_ID);
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new HttpRequestor.Header("Dropbox-API-Select-User", str));
        return list;
    }

    public static List<HttpRequestor.Header> addBasicAuthHeader(List<HttpRequestor.Header> list, String str, String str2) {
        if (str == null) {
            throw new NullPointerException(AppsForYourDomainQuery.USERNAME);
        }
        if (str2 == null) {
            throw new NullPointerException(Login.ATTRIBUTE_PASSWORD);
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new HttpRequestor.Header("Authorization", "Basic " + StringUtil.base64Encode(StringUtil.stringToUtf8(str + ":" + str2))));
        return list;
    }

    public static List<HttpRequestor.Header> addUserAgentHeader(List<HttpRequestor.Header> list, DbxRequestConfig dbxRequestConfig, String str) {
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(buildUserAgentHeader(dbxRequestConfig, str));
        return list;
    }

    public static List<HttpRequestor.Header> addUserLocaleHeader(List<HttpRequestor.Header> list, DbxRequestConfig dbxRequestConfig) {
        if (dbxRequestConfig.getUserLocale() != null) {
            if (list == null) {
                list = new ArrayList<>();
            }
            list.add(new HttpRequestor.Header("Dropbox-API-User-Locale", dbxRequestConfig.getUserLocale()));
        }
        return list;
    }

    public static HttpRequestor.Header buildUserAgentHeader(DbxRequestConfig dbxRequestConfig, String str) {
        return new HttpRequestor.Header("User-Agent", dbxRequestConfig.getClientIdentifier() + " " + str + URIUtil.SLASH + DbxSdkVersion.Version);
    }

    public static HttpRequestor.Response startGet(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String str4, String[] strArr, List<HttpRequestor.Header> list) throws NetworkIOException {
        List<HttpRequestor.Header> listAddAuthHeader = addAuthHeader(addUserAgentHeader(copyHeaders(list), dbxRequestConfig, str2), str);
        try {
            return dbxRequestConfig.getHttpRequestor().doGet(buildUrlWithParams(dbxRequestConfig.getUserLocale(), str3, str4, strArr), listAddAuthHeader);
        } catch (IOException e2) {
            throw new NetworkIOException(e2);
        }
    }

    public static HttpRequestor.Uploader startPut(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String str4, String[] strArr, List<HttpRequestor.Header> list) throws NetworkIOException {
        List<HttpRequestor.Header> listAddAuthHeader = addAuthHeader(addUserAgentHeader(copyHeaders(list), dbxRequestConfig, str2), str);
        try {
            return dbxRequestConfig.getHttpRequestor().startPut(buildUrlWithParams(dbxRequestConfig.getUserLocale(), str3, str4, strArr), listAddAuthHeader);
        } catch (IOException e2) {
            throw new NetworkIOException(e2);
        }
    }

    public static HttpRequestor.Response startPostNoAuth(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String[] strArr, List<HttpRequestor.Header> list) throws NetworkIOException {
        byte[] bArrStringToUtf8 = StringUtil.stringToUtf8(encodeUrlParams(dbxRequestConfig.getUserLocale(), strArr));
        List<HttpRequestor.Header> listCopyHeaders = copyHeaders(list);
        listCopyHeaders.add(new HttpRequestor.Header("Content-Type", "application/x-www-form-urlencoded; charset=utf-8"));
        return startPostRaw(dbxRequestConfig, str, str2, str3, bArrStringToUtf8, listCopyHeaders);
    }

    public static HttpRequestor.Response startPostRaw(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, byte[] bArr, List<HttpRequestor.Header> list) throws NetworkIOException {
        String strBuildUri = buildUri(str2, str3);
        List<HttpRequestor.Header> listAddUserAgentHeader = addUserAgentHeader(copyHeaders(list), dbxRequestConfig, str);
        listAddUserAgentHeader.add(new HttpRequestor.Header("Content-Length", Integer.toString(bArr.length)));
        try {
            HttpRequestor.Uploader uploaderStartPost = dbxRequestConfig.getHttpRequestor().startPost(strBuildUri, listAddUserAgentHeader);
            try {
                uploaderStartPost.upload(bArr);
                return uploaderStartPost.finish();
            } finally {
                uploaderStartPost.close();
            }
        } catch (IOException e2) {
            throw new NetworkIOException(e2);
        }
    }

    private static List<HttpRequestor.Header> copyHeaders(List<HttpRequestor.Header> list) {
        return list == null ? new ArrayList() : new ArrayList(list);
    }

    public static byte[] loadErrorBody(HttpRequestor.Response response) throws NetworkIOException {
        if (response.getBody() == null) {
            return new byte[0];
        }
        try {
            return IOUtil.slurp(response.getBody(), 4096);
        } catch (IOException e2) {
            throw new NetworkIOException(e2);
        }
    }

    public static String parseErrorBody(String str, int i, byte[] bArr) throws BadResponseException {
        try {
            return StringUtil.utf8ToString(bArr);
        } catch (CharacterCodingException e2) {
            throw new BadResponseException(str, "Got non-UTF8 response body: " + i + ": " + e2.getMessage());
        }
    }

    public static DbxException unexpectedStatus(HttpRequestor.Response response) throws NetworkIOException, BadResponseException {
        return unexpectedStatus(response, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x014e A[Catch: NumberFormatException -> 0x0143, TRY_ENTER, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x0143, blocks: (B:40:0x012b, B:42:0x0135, B:46:0x014e), top: B:49:0x012b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.dropbox.core.DbxException unexpectedStatus(com.dropbox.core.http.HttpRequestor.Response r7, java.lang.String r8) throws com.dropbox.core.NetworkIOException, com.dropbox.core.BadResponseException {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.DbxRequestUtil.unexpectedStatus(com.dropbox.core.http.HttpRequestor$Response, java.lang.String):com.dropbox.core.DbxException");
    }

    private static String messageFromResponse(HttpRequestor.Response response, String str) throws NetworkIOException, BadResponseException {
        return parseErrorBody(str, response.getStatusCode(), loadErrorBody(response));
    }

    public static <T> T readJsonFromResponse(JsonReader<T> jsonReader, HttpRequestor.Response response) throws NetworkIOException, BadResponseException {
        try {
            return jsonReader.readFully(response.getBody());
        } catch (JsonReadException e2) {
            throw new BadResponseException(getRequestId(response), "error in response JSON: " + e2.getMessage(), e2);
        } catch (IOException e3) {
            throw new NetworkIOException(e3);
        }
    }

    public static <T> T doGet(final DbxRequestConfig dbxRequestConfig, final String str, final String str2, final String str3, final String str4, final String[] strArr, final List<HttpRequestor.Header> list, final ResponseHandler<T> responseHandler) throws DbxException {
        return (T) runAndRetry(dbxRequestConfig.getMaxRetries(), new RequestMaker<T, DbxException>() { // from class: com.dropbox.core.DbxRequestUtil.1
            @Override // com.dropbox.core.DbxRequestUtil.RequestMaker
            public T run() throws DbxException {
                HttpRequestor.Response responseStartGet = DbxRequestUtil.startGet(dbxRequestConfig, str, str2, str3, str4, strArr, list);
                try {
                    T t = (T) responseHandler.handle(responseStartGet);
                    try {
                        responseStartGet.getBody().close();
                        return t;
                    } catch (IOException e2) {
                        throw new NetworkIOException(e2);
                    }
                } catch (Throwable th) {
                    try {
                        responseStartGet.getBody().close();
                        throw th;
                    } catch (IOException e3) {
                        throw new NetworkIOException(e3);
                    }
                }
            }
        });
    }

    public static <T> T doPost(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String str4, String[] strArr, List<HttpRequestor.Header> list, ResponseHandler<T> responseHandler) throws DbxException {
        return (T) doPostNoAuth(dbxRequestConfig, str2, str3, str4, strArr, addAuthHeader(copyHeaders(list), str), responseHandler);
    }

    public static <T> T doPostNoAuth(final DbxRequestConfig dbxRequestConfig, final String str, final String str2, final String str3, final String[] strArr, final List<HttpRequestor.Header> list, final ResponseHandler<T> responseHandler) throws DbxException {
        return (T) runAndRetry(dbxRequestConfig.getMaxRetries(), new RequestMaker<T, DbxException>() { // from class: com.dropbox.core.DbxRequestUtil.2
            @Override // com.dropbox.core.DbxRequestUtil.RequestMaker
            public T run() throws DbxException {
                return (T) DbxRequestUtil.finishResponse(DbxRequestUtil.startPostNoAuth(dbxRequestConfig, str, str2, str3, strArr, list), responseHandler);
            }
        });
    }

    public static <T> T finishResponse(HttpRequestor.Response response, ResponseHandler<T> responseHandler) throws DbxException {
        try {
            return responseHandler.handle(response);
        } finally {
            IOUtil.closeInput(response.getBody());
        }
    }

    public static String getFirstHeader(HttpRequestor.Response response, String str) throws BadResponseException {
        List<String> list = response.getHeaders().get(str);
        if (list == null || list.isEmpty()) {
            throw new BadResponseException(getRequestId(response), "missing HTTP header \"" + str + "\"");
        }
        return list.get(0);
    }

    public static String getFirstHeaderMaybe(HttpRequestor.Response response, String str) {
        List<String> list = response.getHeaders().get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static String getRequestId(HttpRequestor.Response response) {
        return getFirstHeaderMaybe(response, "X-Dropbox-Request-Id");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x000f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T, E extends java.lang.Throwable> T runAndRetry(int r8, com.dropbox.core.DbxRequestUtil.RequestMaker<T, E> r9) throws java.lang.Throwable {
        /*
            r4 = 0
            r0 = 0
        L3:
            java.lang.Object r0 = r9.run()     // Catch: com.dropbox.core.RetryException -> L8 com.dropbox.core.ServerException -> L10
            return r0
        L8:
            r1 = move-exception
            long r2 = r1.getBackoffMillis()
        Ld:
            if (r0 < r8) goto L13
            throw r1
        L10:
            r1 = move-exception
            r2 = r4
            goto Ld
        L13:
            java.util.Random r1 = com.dropbox.core.DbxRequestUtil.RAND
            r6 = 1000(0x3e8, float:1.401E-42)
            int r1 = r1.nextInt(r6)
            long r6 = (long) r1
            long r2 = r2 + r6
            int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r1 <= 0) goto L24
            java.lang.Thread.sleep(r2)     // Catch: java.lang.InterruptedException -> L27
        L24:
            int r0 = r0 + 1
            goto L3
        L27:
            r1 = move-exception
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.DbxRequestUtil.runAndRetry(int, com.dropbox.core.DbxRequestUtil$RequestMaker):java.lang.Object");
    }
}
