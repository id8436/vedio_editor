package com.adobe.mobile;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataMap;
import java.io.File;
import java.util.HashMap;
import java.util.Locale;
import java.util.UUID;
import org.apache.http.HttpHeaders;

/* JADX INFO: loaded from: classes2.dex */
abstract class WearableDataRequest {
    protected int timeOut;
    protected String uuid;

    protected abstract DataMap getDataMap();

    protected abstract DataMap handle(Context context);

    protected WearableDataRequest() {
        this.uuid = UUID.randomUUID().toString();
    }

    protected WearableDataRequest(int i) {
        this();
        this.timeOut = i;
    }

    protected String getUUID() {
        return this.uuid;
    }

    protected int getTimeOut() {
        return this.timeOut;
    }

    class Get extends WearableDataRequest {
        protected static final String logPrefix = "Wearable GET Requested Forward";
        protected String url;

        protected Get(String str, int i) {
            super(i);
            this.url = str;
        }

        protected Get(DataMap dataMap) {
            this.url = dataMap.getString("URL");
            this.uuid = dataMap.getString("ID");
            this.timeOut = dataMap.getInt(HttpHeaders.TIMEOUT);
        }

        @Override // com.adobe.mobile.WearableDataRequest
        protected DataMap getDataMap() {
            DataMap dataMap = new DataMap();
            dataMap.putString("ID", this.uuid);
            dataMap.putInt(HttpHeaders.TIMEOUT, this.timeOut);
            dataMap.putString("Type", "GET");
            dataMap.putString("URL", this.url);
            return dataMap;
        }

        @Override // com.adobe.mobile.WearableDataRequest
        protected DataMap handle(Context context) {
            DataMap dataMap = new DataMap();
            dataMap.putByteArray("Result", RequestHandler.retrieveData(this.url, null, this.timeOut, logPrefix));
            dataMap.putString("ID", this.uuid);
            dataMap.putString("Type", "GET");
            return dataMap;
        }

        protected String getURL() {
            return this.url;
        }
    }

    class Post extends WearableDataRequest {
        protected static final String logPrefix = "Wearable POST Request Forward";
        protected String body;
        protected String url;
        private static String userAgent = null;
        private static final Object _userAgentMutex = new Object();

        protected Post() {
        }

        protected Post(String str, String str2, int i) {
            super(i);
            this.url = str;
            this.body = str2;
        }

        protected Post(DataMap dataMap) {
            this.timeOut = dataMap.getInt(HttpHeaders.TIMEOUT);
            this.url = dataMap.getString("URL");
            this.body = dataMap.getString("Body");
            this.uuid = dataMap.getString("ID");
        }

        @Override // com.adobe.mobile.WearableDataRequest
        protected DataMap getDataMap() {
            DataMap dataMap = new DataMap();
            dataMap.putString("ID", this.uuid);
            dataMap.putString("Type", "POST");
            dataMap.putString("URL", this.url);
            dataMap.putInt(HttpHeaders.TIMEOUT, this.timeOut);
            dataMap.putString("Body", this.body);
            return dataMap;
        }

        @Override // com.adobe.mobile.WearableDataRequest
        protected DataMap handle(Context context) {
            DataMap dataMap = new DataMap();
            HashMap map = new HashMap();
            map.put("Accept-Language", getDefaultAcceptLanguage(context));
            map.put("User-Agent", getDefaultUserAgent(context));
            dataMap.putByteArray("Result", RequestHandler.retrieveAnalyticsRequestData(this.url, this.body, map, this.timeOut, logPrefix));
            dataMap.putString("ID", this.uuid);
            dataMap.putString("Type", "POST");
            return dataMap;
        }

        protected static String getDefaultAcceptLanguage(Context context) {
            Resources resources;
            Configuration configuration;
            Locale locale;
            if (context == null || (resources = context.getResources()) == null || (configuration = resources.getConfiguration()) == null || (locale = configuration.locale) == null) {
                return null;
            }
            return locale.toString().replace('_', '-');
        }

        protected static String getDefaultUserAgent(Context context) {
            String str;
            synchronized (_userAgentMutex) {
                if (userAgent == null) {
                    userAgent = "Mozilla/5.0 (Linux; U; Android " + Build.VERSION.RELEASE + "; " + getDefaultAcceptLanguage(context) + "; " + Build.MODEL + " Build/" + Build.ID + ")";
                }
                str = userAgent;
            }
            return str;
        }

        protected String getURL() {
            return this.url;
        }
    }

    class ThirdPartyRequest extends Post {
        protected static final String logPrefix = "Wearable Third Party Request Forward";
        protected String postType;

        protected ThirdPartyRequest(String str, String str2, int i) {
            super(str, str2, i);
        }

        protected ThirdPartyRequest(String str, String str2, int i, String str3) {
            this(str, str2, i);
            this.postType = str3;
        }

        protected ThirdPartyRequest(DataMap dataMap) {
            super(dataMap);
            this.postType = dataMap.getString("PostType");
        }

        @Override // com.adobe.mobile.WearableDataRequest.Post, com.adobe.mobile.WearableDataRequest
        protected DataMap getDataMap() {
            DataMap dataMap = super.getDataMap();
            dataMap.putString("Type", "ThirdParty");
            dataMap.putString("PostType", this.postType);
            return dataMap;
        }

        @Override // com.adobe.mobile.WearableDataRequest.Post, com.adobe.mobile.WearableDataRequest
        protected DataMap handle(Context context) {
            DataMap dataMap = new DataMap();
            HashMap map = new HashMap();
            map.put("Accept-Language", getDefaultAcceptLanguage(context));
            map.put("User-Agent", getDefaultUserAgent(context));
            dataMap.putBoolean("Result", RequestHandler.sendThirdPartyRequest(this.url, this.body, map, this.timeOut, this.postType, logPrefix));
            dataMap.putString("ID", this.uuid);
            dataMap.putString("Type", "ThirdParty");
            return dataMap;
        }
    }

    class ShareConfig extends WearableDataRequest {
        protected ShareConfig(int i) {
            super(i);
        }

        protected ShareConfig(DataMap dataMap) {
            this.uuid = dataMap.getString("ID");
        }

        @Override // com.adobe.mobile.WearableDataRequest
        protected DataMap getDataMap() {
            DataMap dataMap = new DataMap();
            dataMap.putString("Type", "Config");
            dataMap.putString("ID", this.uuid);
            return dataMap;
        }

        @Override // com.adobe.mobile.WearableDataRequest
        protected DataMap handle(Context context) {
            DataMap dataMap = new DataMap();
            dataMap.putString("ID", this.uuid);
            dataMap.putString("Type", "Config");
            dataMap.putAll(ConfigSynchronizer.getSharedConfig());
            return dataMap;
        }
    }

    class Cache extends WearableDataRequest {
        protected String fileName;
        protected String url;

        protected Cache(String str, String str2, int i) {
            super(i);
            this.url = str;
            this.fileName = str2;
        }

        protected Cache(DataMap dataMap) {
            this.uuid = dataMap.getString("ID");
            this.fileName = dataMap.getString("FileName");
            this.url = dataMap.getString("URL");
        }

        @Override // com.adobe.mobile.WearableDataRequest
        protected DataMap getDataMap() {
            DataMap dataMap = new DataMap();
            dataMap.putString("Type", "File");
            dataMap.putString("ID", this.uuid);
            dataMap.putString("URL", this.url);
            dataMap.putString("FileName", this.fileName);
            return dataMap;
        }

        @Override // com.adobe.mobile.WearableDataRequest
        protected DataMap handle(Context context) throws Throwable {
            DataMap dataMap = new DataMap();
            dataMap.putString("ID", this.uuid);
            dataMap.putString("Type", "File");
            dataMap.putString("URL", this.url);
            File fileForCachedURL = RemoteDownload.getFileForCachedURL(this.url);
            if (fileForCachedURL == null) {
                dataMap.putBoolean("FileFound", false);
            } else {
                dataMap.putBoolean("FileFound", true);
                if (fileForCachedURL.getName().equals(this.fileName)) {
                    dataMap.putBoolean("Updated", false);
                } else {
                    dataMap.putBoolean("Updated", true);
                    dataMap.putString("FileName", fileForCachedURL.getName());
                    byte[] file = WearableDataRequest.readFile(fileForCachedURL);
                    if (file != null && file.length > 0) {
                        dataMap.putAsset("FileContent", Asset.createFromBytes(file));
                    }
                }
            }
            return dataMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0071 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [long] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] readFile(java.io.File r6) throws java.lang.Throwable {
        /*
            r0 = 0
            r5 = 0
            long r2 = r6.length()
            int r1 = (int) r2
            byte[] r1 = new byte[r1]
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.io.IOException -> L36 java.lang.Exception -> L51 java.lang.Throwable -> L6c
            r2.<init>(r6)     // Catch: java.io.IOException -> L36 java.lang.Exception -> L51 java.lang.Throwable -> L6c
            int r3 = r2.read(r1)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L84 java.io.IOException -> L86
            r4 = -1
            if (r3 != r4) goto L25
            if (r2 == 0) goto L1a
            r2.close()     // Catch: java.io.IOException -> L1b
        L1a:
            return r0
        L1b:
            r1 = move-exception
            java.lang.String r1 = "Wearable - Failed to close the file input stream"
            java.lang.Object[] r2 = new java.lang.Object[r5]
            com.adobe.mobile.StaticMethods.logDebugFormat(r1, r2)
            goto L1a
        L25:
            if (r2 == 0) goto L2a
            r2.close()     // Catch: java.io.IOException -> L2c
        L2a:
            r0 = r1
            goto L1a
        L2c:
            r0 = move-exception
            java.lang.String r0 = "Wearable - Failed to close the file input stream"
            java.lang.Object[] r2 = new java.lang.Object[r5]
            com.adobe.mobile.StaticMethods.logDebugFormat(r0, r2)
            goto L2a
        L36:
            r1 = move-exception
            r1 = r0
        L38:
            java.lang.String r2 = "Wearable - Failed to read cached file"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L81
            com.adobe.mobile.StaticMethods.logErrorFormat(r2, r3)     // Catch: java.lang.Throwable -> L81
            if (r1 == 0) goto L1a
            r1.close()     // Catch: java.io.IOException -> L47
            goto L1a
        L47:
            r1 = move-exception
            java.lang.String r1 = "Wearable - Failed to close the file input stream"
            java.lang.Object[] r2 = new java.lang.Object[r5]
            com.adobe.mobile.StaticMethods.logDebugFormat(r1, r2)
            goto L1a
        L51:
            r1 = move-exception
            r2 = r0
        L53:
            java.lang.String r1 = "Wearable - Failed to read cached file"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L7f
            com.adobe.mobile.StaticMethods.logErrorFormat(r1, r3)     // Catch: java.lang.Throwable -> L7f
            if (r2 == 0) goto L1a
            r2.close()     // Catch: java.io.IOException -> L62
            goto L1a
        L62:
            r1 = move-exception
            java.lang.String r1 = "Wearable - Failed to close the file input stream"
            java.lang.Object[] r2 = new java.lang.Object[r5]
            com.adobe.mobile.StaticMethods.logDebugFormat(r1, r2)
            goto L1a
        L6c:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L6f:
            if (r2 == 0) goto L74
            r2.close()     // Catch: java.io.IOException -> L75
        L74:
            throw r0
        L75:
            r1 = move-exception
            java.lang.String r1 = "Wearable - Failed to close the file input stream"
            java.lang.Object[] r2 = new java.lang.Object[r5]
            com.adobe.mobile.StaticMethods.logDebugFormat(r1, r2)
            goto L74
        L7f:
            r0 = move-exception
            goto L6f
        L81:
            r0 = move-exception
            r2 = r1
            goto L6f
        L84:
            r1 = move-exception
            goto L53
        L86:
            r1 = move-exception
            r1 = r2
            goto L38
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.mobile.WearableDataRequest.readFile(java.io.File):byte[]");
    }

    protected static WearableDataRequest createGetRequest(String str, int i) {
        return new Get(str, i);
    }

    protected static WearableDataRequest createPostRequest(String str, String str2, int i) {
        return new Post(str, str2, i);
    }

    protected static WearableDataRequest createThirdPartyRequest(String str, String str2, int i, String str3) {
        return new ThirdPartyRequest(str, str2, i, str3);
    }

    protected static WearableDataRequest createShareConfigRequest(int i) {
        return new ShareConfig(i);
    }

    protected static WearableDataRequest createFileRequest(String str, String str2, int i) {
        return new Cache(str, str2, i);
    }

    protected static WearableDataRequest createRequestFromDataMap(DataMap dataMap) {
        if (!dataMap.containsKey("Type")) {
            return null;
        }
        if (dataMap.getString("Type").equals("POST")) {
            return new Post(dataMap);
        }
        if (dataMap.getString("Type").equals("GET")) {
            return new Get(dataMap);
        }
        if (dataMap.getString("Type").equals("Config")) {
            return new ShareConfig(dataMap);
        }
        if (dataMap.getString("Type").equals("File")) {
            return new Cache(dataMap);
        }
        if (dataMap.getString("Type").equals("ThirdParty")) {
            return new ThirdPartyRequest(dataMap);
        }
        return null;
    }
}
