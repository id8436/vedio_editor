package com.adobe.mobile;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataMap;
import com.google.android.gms.wearable.Wearable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class WearableDataResponse {
    protected boolean success = false;

    WearableDataResponse() {
    }

    protected boolean isSuccess() {
        return this.success;
    }

    class GetResponse extends WearableDataResponse {
        protected byte[] result;

        protected GetResponse(DataMap dataMap) {
            this.result = dataMap.getByteArray("Result");
            if (this.result != null) {
                this.success = true;
            }
        }

        protected byte[] getResult() {
            return this.result;
        }
    }

    class PostResponse extends WearableDataResponse {
        protected byte[] result;

        protected PostResponse(DataMap dataMap) {
            this.result = dataMap.getByteArray("Result");
            if (this.result != null && this.result.length > 0) {
                this.success = true;
            }
        }

        protected byte[] getResult() {
            return this.result;
        }
    }

    class ThirdPartyResponse extends WearableDataResponse {
        protected ThirdPartyResponse(DataMap dataMap) {
            this.success = dataMap.getBoolean("Result");
        }
    }

    class ShareConfigResponse extends WearableDataResponse {
        final DataMap result;

        protected ShareConfigResponse(DataMap dataMap) {
            this.result = dataMap;
        }

        protected DataMap getResult() {
            return this.result;
        }
    }

    class CacheResponse extends WearableDataResponse {
        final boolean result;

        protected CacheResponse(DataMap dataMap, GoogleApiClient googleApiClient) throws Throwable {
            if (!dataMap.getBoolean("FileFound")) {
                RemoteDownload.deleteFilesInDirectory("adbdownloadcache");
                this.result = false;
                return;
            }
            this.result = dataMap.getBoolean("Updated");
            if (this.result) {
                RemoteDownload.deleteCachedDataForURL(dataMap.getString("URL"), "adbdownloadcache");
                Asset asset = dataMap.getAsset("FileContent");
                String string = dataMap.getString("FileName");
                File downloadCacheDirectory = RemoteDownload.getDownloadCacheDirectory("adbdownloadcache");
                if (downloadCacheDirectory != null) {
                    WearableDataResponse.saveFileFromAsset(asset, downloadCacheDirectory.getPath() + File.separator + string, googleApiClient);
                }
            }
        }

        protected boolean getResult() {
            return this.result;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.FileOutputStream, java.io.OutputStream] */
    public static void saveFileFromAsset(Asset asset, String str, GoogleApiClient googleApiClient) throws Throwable {
        ConnectionResult connectionResultBlockingConnect;
        ?? fileOutputStream;
        ?? r1 = 0;
        r1 = 0;
        if (asset == null || googleApiClient == null || (connectionResultBlockingConnect = GoogleApiClientWrapper.blockingConnect(googleApiClient, 15000L, TimeUnit.MILLISECONDS)) == null || !connectionResultBlockingConnect.isSuccess()) {
            return;
        }
        DataApi.GetFdForAssetResult getFdForAssetResultAwait = GoogleApiClientWrapper.await(Wearable.DataApi.getFdForAsset(googleApiClient, asset));
        ?? inputStream = getFdForAssetResultAwait instanceof DataApi.GetFdForAssetResult ? getFdForAssetResultAwait.getInputStream() : 0;
        GoogleApiClientWrapper.disconnect(googleApiClient);
        if (inputStream != 0) {
            try {
                try {
                    fileOutputStream = new FileOutputStream(new File(str));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e2) {
            }
            try {
                r1 = new byte[8192];
                while (true) {
                    int i = inputStream.read(r1);
                    if (i == -1) {
                        break;
                    } else {
                        fileOutputStream.write(r1, 0, i);
                    }
                }
                if (fileOutputStream != 0) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        r1 = new Object[0];
                        StaticMethods.logDebugFormat("Wearable - Failed to close file output stream", r1);
                    }
                }
            } catch (IOException e4) {
                r1 = fileOutputStream;
                StaticMethods.logErrorFormat("Wearable - Failed to save cache file", new Object[0]);
                if (r1 != 0) {
                    try {
                        r1.close();
                    } catch (IOException e5) {
                        r1 = new Object[0];
                        StaticMethods.logDebugFormat("Wearable - Failed to close file output stream", r1);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                r1 = fileOutputStream;
                if (r1 != 0) {
                    try {
                        r1.close();
                    } catch (IOException e6) {
                        StaticMethods.logDebugFormat("Wearable - Failed to close file output stream", new Object[0]);
                    }
                }
                throw th;
            }
        }
    }

    protected static WearableDataResponse createResponseFromDataMap(DataMap dataMap, GoogleApiClient googleApiClient) {
        if (!dataMap.containsKey("Type")) {
            return null;
        }
        if (dataMap.getString("Type").equals("POST")) {
            return new PostResponse(dataMap);
        }
        if (dataMap.getString("Type").equals("GET")) {
            return new GetResponse(dataMap);
        }
        if (dataMap.getString("Type").equals("Config")) {
            return new ShareConfigResponse(dataMap);
        }
        if (dataMap.getString("Type").equals("File")) {
            return new CacheResponse(dataMap, googleApiClient);
        }
        if (dataMap.getString("Type").equals("ThirdParty")) {
            return new ThirdPartyResponse(dataMap);
        }
        return null;
    }
}
