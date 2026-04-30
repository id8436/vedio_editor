package com.adobe.sync.s3utils;

import android.util.Base64;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.customextractor.Util.Media.MimeTypes;
import com.adobe.sync.ComponentUtils;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.security.MessageDigest;
import java.security.SignatureException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.HttpsURLConnection;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class S3TransferManager {
    private static final String HMAC_SHA1_ALGORITHM = "HmacSHA1";
    private static final int MAX_RETRY_INTERVAL = 15000;
    private static final int NUM_MAX_RETRY = 20;
    private static final int initial_cores = 1;
    private static S3TransferManager instance = null;
    private static final long keep_alive_time = 1;
    private static final TimeUnit keep_alive_time_unit = TimeUnit.SECONDS;
    private static final int max_cores = 1;
    private final BlockingQueue<Runnable> mQueue = new LinkedBlockingDeque();
    private ThreadPoolExecutor mExecutor = new ThreadPoolExecutor(1, 1, 1, keep_alive_time_unit, this.mQueue);
    private boolean cancel = false;

    public interface S3TransferListener {
        void onCancel();

        void onCompletion();

        void onError();

        void onProgress(int i);
    }

    public static S3TransferManager getInstance() {
        if (instance == null) {
            instance = new S3TransferManager();
        }
        return instance;
    }

    private S3TransferManager() {
    }

    public void cancelTransfers() {
        this.cancel = true;
    }

    public void setReadyForTransfers() {
        this.cancel = false;
    }

    public void transferBigAsset(final String str, String str2, String str3, String str4, final String str5, final S3TransferListener s3TransferListener) {
        this.mExecutor.execute(new Runnable() { // from class: com.adobe.sync.s3utils.S3TransferManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (S3TransferManager.this.cancel) {
                        s3TransferListener.onCancel();
                        return;
                    }
                    long length = new File(str).length();
                    String extensionFromFilePath = ComponentUtils.getExtensionFromFilePath(str);
                    if (!new JSONObject(S3TransferManager.this.directS3InitializeTemp(s3TransferListener)).getString(ProjectHostingService.PROJECTHOSTING_SERVICE).equals("200")) {
                        Log.d("S3Transfer", "s3 initialize temp failed");
                        S3TransferManager.this.postCancelOrError(s3TransferListener);
                        return;
                    }
                    JSONObject jSONObject = new JSONObject(S3TransferManager.this.directS3Initialize(str5, String.valueOf(length), extensionFromFilePath, false, s3TransferListener));
                    if (!jSONObject.getString(ProjectHostingService.PROJECTHOSTING_SERVICE).equals("202")) {
                        jSONObject = new JSONObject(S3TransferManager.this.directS3Initialize(str5, String.valueOf(length), extensionFromFilePath, true, s3TransferListener));
                    }
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    String string = jSONObject2.getString("assetARN");
                    String string2 = jSONObject2.getString("multipart-href");
                    String string3 = jSONObject2.getString("accessKey");
                    String string4 = jSONObject2.getString("secretKey");
                    String string5 = jSONObject2.getString("sessionToken");
                    String string6 = jSONObject2.getString("uploadId");
                    URL url = new URL(string2);
                    String host = url.getHost();
                    String strSubstring = host.substring(0, host.indexOf("."));
                    String strSubstring2 = host.substring(host.indexOf(".") + 1);
                    String strSubstring3 = url.getPath().substring(1);
                    Log.d("S3Transfer", "bucket : " + strSubstring + "   host : " + strSubstring2 + "   key : " + strSubstring3);
                    String string7 = new JSONObject(S3TransferManager.this.uploadToS3(string3, string4, string5, strSubstring2, strSubstring, strSubstring3, string6, str, length, s3TransferListener)).getJSONObject("headers").getString("ETag");
                    String assetMd5 = S3TransferManager.getAssetMd5(str);
                    if (new JSONObject(S3TransferManager.this.directS3Finalize(str5, length, extensionFromFilePath, string3, string4, string5, string, string6, assetMd5, string7, str, string2, false, s3TransferListener)).getString(ProjectHostingService.PROJECTHOSTING_SERVICE).equals("409")) {
                        S3TransferManager.this.directS3Finalize(str5, length, extensionFromFilePath, string3, string4, string5, string, string6, assetMd5, string7, str, string2, true, s3TransferListener);
                    }
                    for (int i = 20; i > 0; i--) {
                        if (!S3TransferManager.this.getResponseCode(S3TransferManager.this.checkDirectS3Asset(str5)).equals("200")) {
                            Thread.sleep(15000L);
                        } else {
                            s3TransferListener.onCompletion();
                            return;
                        }
                    }
                    S3TransferManager.this.postCancelOrError(s3TransferListener);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    S3TransferManager.this.postCancelOrError(s3TransferListener);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postCancelOrError(S3TransferListener s3TransferListener) {
        if (this.cancel) {
            s3TransferListener.onCancel();
        } else {
            s3TransferListener.onError();
        }
    }

    private int getProgress(int i, int i2) {
        return (int) ((0.9d * ((double) i)) + (0.1d * ((double) i2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getResponseCode(String str) {
        try {
            return new JSONObject(str).getString(ProjectHostingService.PROJECTHOSTING_SERVICE);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String checkDirectS3Asset(String str) {
        try {
            HttpsURLConnection httpsURLConnectionInitDirectS3WebRequest = initDirectS3WebRequest(getTempLocation() + URIUtil.SLASH + str, "HEAD", getAccessToken());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("X-api-key", getClientId());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("X-request-id", UUID.randomUUID().toString());
            String response = getResponse(httpsURLConnectionInitDirectS3WebRequest);
            Log.d("S3Transfer", "check directS3 asset response : " + response);
            return response;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String uploadToS3(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, long j, S3TransferListener s3TransferListener) {
        try {
            HttpsURLConnection httpsURLConnectionCreateSignedAWSURLRequest = createSignedAWSURLRequest(str, str2, str3, str4, str5, str6, "PUT", 1, str7, getMimeTypeFromExtension(ComponentUtils.getExtensionFromFilePath(str8)), j);
            httpsURLConnectionCreateSignedAWSURLRequest.setUseCaches(false);
            httpsURLConnectionCreateSignedAWSURLRequest.setDoInput(true);
            httpsURLConnectionCreateSignedAWSURLRequest.setDoOutput(true);
            httpsURLConnectionCreateSignedAWSURLRequest.setFixedLengthStreamingMode((int) j);
            DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnectionCreateSignedAWSURLRequest.getOutputStream());
            FileInputStream fileInputStream = new FileInputStream(new File(str8));
            byte[] bArr = new byte[1024];
            int i = 0;
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 != -1) {
                    if (this.cancel) {
                        s3TransferListener.onCancel();
                        return "";
                    }
                    dataOutputStream.write(bArr, 0, i2);
                    i += i2;
                    s3TransferListener.onProgress(getProgress(i2, 0));
                } else {
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    String response = getResponse(httpsURLConnectionCreateSignedAWSURLRequest);
                    Log.d("S3Transfer", "upload response is " + response);
                    return response;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private HttpsURLConnection createSignedAWSURLRequest(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, String str8, String str9, long j) {
        try {
            String str10 = "partNumber=" + i + "&uploadId=" + str8;
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(getUrlForAsset(str4, str5, str6, str10)).openConnection();
            httpsURLConnection.setRequestMethod(str7);
            setAWSHeaders(httpsURLConnection, str7, str6, str5, str, str2, str3, str4, str9, str10, j);
            return httpsURLConnection;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void setAWSHeaders(HttpsURLConnection httpsURLConnection, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, long j) throws Exception {
        String str10;
        if (str.equalsIgnoreCase("PUT") || str.equalsIgnoreCase("GET") || str.equalsIgnoreCase("HEAD")) {
            if (str.equalsIgnoreCase("PUT")) {
                str10 = (str + "\n\n") + str8 + IOUtils.LINE_SEPARATOR_UNIX;
            } else {
                str10 = str + "\n\n\n";
            }
            String str11 = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss Z", Locale.US).format(new Date());
            String str12 = str10 + str11 + IOUtils.LINE_SEPARATOR_UNIX;
            String str13 = URIUtil.SLASH + str3 + URIUtil.SLASH;
            String str14 = "AWS " + str4 + ":" + calculateRFC2104HMAC(str12 + ("x-amz-security-token:" + str6 + IOUtils.LINE_SEPARATOR_UNIX) + (str13 + str2 + "?" + str9), str5);
            if (str7 == null) {
                str7 = "s3.amazonaws.com";
            }
            httpsURLConnection.setRequestProperty("User-Agent", "Hammersmith");
            httpsURLConnection.setRequestProperty("Host", str3 + "." + str7);
            httpsURLConnection.setRequestProperty("Date", str11);
            httpsURLConnection.setRequestProperty("Authorization", str14);
            httpsURLConnection.setRequestProperty("x-amz-security-token", str6);
            if (str.equalsIgnoreCase("PUT")) {
                httpsURLConnection.setRequestProperty("Content-Type", str8);
            }
            httpsURLConnection.setRequestProperty("Content-Length", String.valueOf(j));
        }
    }

    private String getUrlForAsset(String str, String str2, String str3, String str4) {
        String str5 = "https://" + str2 + "." + str + URIUtil.SLASH + str3;
        if (str4 != null) {
            return str5 + "?" + str4;
        }
        return str5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String directS3Initialize(String str, String str2, String str3, boolean z, S3TransferListener s3TransferListener) {
        if (this.cancel) {
            s3TransferListener.onCancel();
            return "";
        }
        try {
            HttpsURLConnection httpsURLConnectionInitDirectS3WebRequest = initDirectS3WebRequest(getTempLocation() + URIUtil.SLASH + str + "/:raw?mode=s3_initiate", "PUT", getAccessToken());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("X-api-key", getClientId());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("X-request-id", UUID.randomUUID().toString());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty(AdobeCommunityConstants.AdobeCommunityRequestXContentLength, str2);
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("Content-Type", getMimeTypeFromExtension(str3));
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("Accept", "application/vnd.adobe.s3credentials+json");
            if (z) {
                httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("If-Match", "*");
            }
            String response = getResponse(httpsURLConnectionInitDirectS3WebRequest);
            Log.d("S3TransferManager", "directs3init response : " + response);
            return response;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String directS3InitializeTemp(S3TransferListener s3TransferListener) {
        if (this.cancel) {
            s3TransferListener.onCancel();
            return "";
        }
        try {
            HttpsURLConnection httpsURLConnectionInitDirectS3WebRequest = initDirectS3WebRequest(getTempLocation(), "HEAD", getAccessToken());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("X-api-key", getClientId());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("X-request-id", UUID.randomUUID().toString());
            String response = getResponse(httpsURLConnectionInitDirectS3WebRequest);
            Log.d("S3TransferManager", "directs3inittemp response : " + response);
            return response;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String directS3Finalize(String str, long j, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, boolean z, S3TransferListener s3TransferListener) {
        if (this.cancel) {
            s3TransferListener.onCancel();
            return "";
        }
        try {
            HttpsURLConnection httpsURLConnectionInitDirectS3WebRequest = initDirectS3WebRequest(getTempLocation() + URIUtil.SLASH + str + "/:raw?mode=s3_finalize", "PUT", getAccessToken());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("X-api-key", getClientId());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("X-request-id", UUID.randomUUID().toString());
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty(AdobeCommunityConstants.AdobeCommunityRequestXContentLength, String.valueOf(j));
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("Content-Type", "application/hal+json");
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("Content-MD5", str8);
            httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("Accept", "application/vnd.adobe.s3credentials+json");
            if (z) {
                httpsURLConnectionInitDirectS3WebRequest.setRequestProperty("If-Match", "*");
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("segmentNumber", 1);
            jSONObject2.put("entityTag", str9);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("segments", jSONArray);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("accessKey", str3);
            jSONObject3.put("secretKey", str4);
            jSONObject3.put("sessionToken", str5);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("authentication", jSONObject3);
            jSONObject4.put("assetARN", str6);
            jSONObject4.put("uploadId", str7);
            jSONObject.put("s3AccessDetails", jSONObject4);
            jSONObject.put(AdobeCommunityConstants.AdobeCommunityResourceMD5Key, str8);
            jSONObject.put("type", getMimeTypeFromExtension(str2));
            jSONObject.put("contentLength", j);
            byte[] bytes = jSONObject.toString().getBytes("UTF-8");
            httpsURLConnectionInitDirectS3WebRequest.setDoInput(true);
            httpsURLConnectionInitDirectS3WebRequest.setDoOutput(true);
            httpsURLConnectionInitDirectS3WebRequest.setChunkedStreamingMode(0);
            DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnectionInitDirectS3WebRequest.getOutputStream());
            if (bytes != null) {
                dataOutputStream.write(bytes);
            }
            dataOutputStream.flush();
            dataOutputStream.close();
            String response = getResponse(httpsURLConnectionInitDirectS3WebRequest);
            Log.d("S3TransferManager", "for asset " + str10 + "    directs3finalize response : " + response);
            return response;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private HttpsURLConnection initDirectS3WebRequest(String str, String str2, String str3) {
        try {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(getEndPoint() + str).openConnection();
            httpsURLConnection.setRequestMethod(str2);
            if (!str3.equals("")) {
                httpsURLConnection.setRequestProperty("Authorization", "Bearer " + str3);
            }
            httpsURLConnection.setRequestProperty("User-Agent", "Hammersmith");
            return httpsURLConnection;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String getResponse(HttpsURLConnection httpsURLConnection) {
        InputStream errorStream;
        try {
            if (httpsURLConnection.getResponseCode() < 400) {
                errorStream = httpsURLConnection.getInputStream();
            } else {
                errorStream = httpsURLConnection.getErrorStream();
            }
            StringBuffer stringBuffer = new StringBuffer();
            if (errorStream != null) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    stringBuffer.append(line);
                }
                bufferedReader.close();
            }
            Map headerFields = httpsURLConnection.getHeaderFields();
            JSONObject jSONObject = new JSONObject();
            if (headerFields != null) {
                for (Map.Entry entry : headerFields.entrySet()) {
                    String string = (String) entry.getKey();
                    String str = (String) ((List) entry.getValue()).get(0);
                    if (string == null) {
                        string = UUID.randomUUID().toString();
                    }
                    jSONObject.put(string, str);
                }
            }
            String str2 = "{'code':" + String.valueOf(httpsURLConnection.getResponseCode());
            if (!stringBuffer.toString().equals("")) {
                str2 = str2 + ",'data':" + stringBuffer.toString();
            }
            if (jSONObject.length() > 0) {
                str2 = str2 + ",'headers':" + jSONObject.toString();
            }
            String str3 = str2 + "}";
            httpsURLConnection.disconnect();
            return str3;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private String getTempLocation() {
        return "/temp";
    }

    private String getEndPoint() {
        return AdobeCollaborationSession.HTTPS_CC_API_STORAGE_ADOBE_IO;
    }

    private String getAccessToken() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken();
    }

    private String getClientId() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getClientID();
    }

    private String getMimeTypeFromExtension(String str) {
        if (str == null) {
            return null;
        }
        if (str.equalsIgnoreCase(AdobeAssetFileExtensions.kAdobeFileExtensionTypeMOV)) {
            return AdobeAssetFileExtensions.kAdobeMimeTypeQuicktime;
        }
        if (str.equalsIgnoreCase("mpg") || str.equalsIgnoreCase("mpeg")) {
            return "video/mpeg";
        }
        if (str.equalsIgnoreCase(AdobeAssetFileExtensions.kAdobeFileExtensionTypeMP4)) {
            return "video/mp4";
        }
        if (str.equalsIgnoreCase("ogg") || str.equalsIgnoreCase("ogv")) {
            return "video/ogg";
        }
        if (str.equalsIgnoreCase("webm")) {
            return "video/webm";
        }
        if (str.equalsIgnoreCase("mkv")) {
            return "video/x-matroska";
        }
        if (str.equalsIgnoreCase("wmv")) {
            return "video/x-ms-wmv";
        }
        if (str.equalsIgnoreCase("flv")) {
            return "video/x-flv";
        }
        if (str.equalsIgnoreCase("aif")) {
            return "audio/aiff";
        }
        if (str.equalsIgnoreCase("wav")) {
            return "audio/wav";
        }
        if (str.equalsIgnoreCase("mp3")) {
            return MimeTypes.AUDIO_MPEG;
        }
        if (str.equalsIgnoreCase("m4a") || str.equalsIgnoreCase("aac")) {
            return "audio/mp4";
        }
        if (str.equalsIgnoreCase("jpg") || str.equalsIgnoreCase("jpeg")) {
            return "image/jpeg";
        }
        if (str.equalsIgnoreCase("png")) {
            return "image/png";
        }
        if (str.equalsIgnoreCase(AdobeAssetFileExtensions.kAdobeFileExtensionTypeTIFF)) {
            return AdobeAssetFileExtensions.kAdobeMimeTypeTIFF;
        }
        if (!str.equalsIgnoreCase(AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF)) {
            return null;
        }
        return "image/gif";
    }

    String calculateRFC2104HMAC(String str, String str2) throws SignatureException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), HMAC_SHA1_ALGORITHM);
            Mac mac = Mac.getInstance(HMAC_SHA1_ALGORITHM);
            mac.init(secretKeySpec);
            return Base64.encodeToString(mac.doFinal(str.getBytes()), 0);
        } catch (Exception e2) {
            throw new SignatureException("Failed to generate HMAC : " + e2.getMessage());
        }
    }

    public static String getAssetMd5(String str) throws Exception {
        FileInputStream fileInputStream = new FileInputStream(new File(str));
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.reset();
        byte[] bArr = new byte[2048];
        while (true) {
            int i = fileInputStream.read(bArr);
            if (i != -1) {
                messageDigest.update(bArr, 0, i);
            } else {
                return Base64.encodeToString(messageDigest.digest(), 2);
            }
        }
    }
}
