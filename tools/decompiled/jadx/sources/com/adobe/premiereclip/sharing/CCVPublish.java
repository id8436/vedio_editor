package com.adobe.premiereclip.sharing;

import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.sharing.SharingManager;
import com.google.api.client.json.Json;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class CCVPublish {
    private static final String endpoint = "https://api.ccv.adobe.com/api/v1";
    private String description;
    private String title;
    private boolean unlisted;
    private SharingManager.SharingComponentListener mListener = null;
    private Handler mHandler = new Handler();
    private String s3VideoUrl = "";
    private String s3PosterUrl = "";
    private String uploadId = "";
    private boolean cancelled = false;
    private double ticketProgress = 0.0d;
    private double videoUploadProgress = 0.0d;
    private double posterUploadProgress = 0.0d;
    private double confirmProgress = 0.0d;

    public CCVPublish(String str, String str2, boolean z) {
        this.title = str;
        this.unlisted = z;
        this.description = str2;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean getUnlisted() {
        return this.unlisted;
    }

    public void cancel() {
        this.mListener = null;
        this.cancelled = true;
    }

    public void shareToCCV(final Uri uri, final String str, SharingManager.SharingComponentListener sharingComponentListener) {
        this.mListener = sharingComponentListener;
        new Thread(new Runnable() { // from class: com.adobe.premiereclip.sharing.CCVPublish.1
            @Override // java.lang.Runnable
            public void run() {
                if (CCVPublish.this.getUploadTicket()) {
                    CCVPublish.this.ticketProgress = 100.0d;
                    CCVPublish.this.updateProgress();
                    if (CCVPublish.this.uploadVideoToS3(uri) && CCVPublish.this.confirmUpload()) {
                        if (str != null) {
                            CCVPublish.this.uploadPosterToS3(Uri.parse(str));
                        }
                        CCVPublish.this.posterUploadProgress = 100.0d;
                        CCVPublish.this.updateProgress();
                        CCVPublish.this.notifyCompletion(true);
                        return;
                    }
                }
                CCVPublish.this.notifyCompletion(false);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCompletion(final boolean z) {
        this.mHandler.post(new Runnable() { // from class: com.adobe.premiereclip.sharing.CCVPublish.2
            @Override // java.lang.Runnable
            public void run() {
                if (CCVPublish.this.mListener != null) {
                    CCVPublish.this.mListener.onCompleted(z, PremiereClipApplication.getContext().getString(R.string.sharing_error_ccv_message));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress() {
        this.mHandler.post(new Runnable() { // from class: com.adobe.premiereclip.sharing.CCVPublish.3
            @Override // java.lang.Runnable
            public void run() {
                if (CCVPublish.this.mListener != null) {
                    CCVPublish.this.mListener.onProgress((CCVPublish.this.ticketProgress * 0.1d) + (0.6d * CCVPublish.this.videoUploadProgress) + (0.2d * CCVPublish.this.posterUploadProgress) + (CCVPublish.this.confirmProgress * 0.1d));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getUploadTicket() {
        boolean z;
        if (this.cancelled) {
            return false;
        }
        String str = "Bearer " + getAccessToken();
        Log.d("CCV", "starting upload ticket request");
        String strHttpTask = httpTask("https://api.ccv.adobe.com/api/v1/uploads", "application/json", str, "", "POST", null);
        if (strHttpTask.equals("")) {
            Log.d("CCV", "error in upload ticket request");
            return false;
        }
        Log.d("CCV", "response is : " + strHttpTask);
        try {
            JSONObject jSONObject = new JSONObject(strHttpTask);
            String string = jSONObject.getString(ProjectHostingService.PROJECTHOSTING_SERVICE);
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            Log.d("CCV", "response code : " + string + "  response data : " + jSONObject2);
            if (string == null || jSONObject2 == null || !string.equals("200")) {
                Log.d("CCV", "unexpected response for upload ticket request");
                z = false;
            } else {
                JSONObject jSONObject3 = new JSONObject(jSONObject.getString("data"));
                this.s3VideoUrl = jSONObject3.getString("url");
                this.s3PosterUrl = jSONObject3.getString("posterframe_url");
                this.uploadId = jSONObject3.getString("upload_id");
                if (this.s3PosterUrl == null || this.s3VideoUrl == null || this.uploadId == null) {
                    Log.d("CCV", "unexpected response for upload ticket request");
                    z = false;
                } else {
                    Log.d("CCV", "s3 video url : " + this.s3VideoUrl + "   upload id : " + this.uploadId + "   s3 poster url : " + this.s3PosterUrl);
                    z = true;
                }
            }
            return z;
        } catch (JSONException e2) {
            Log.d("CCV", "json not formed from response for upload ticket request");
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean uploadVideoToS3(Uri uri) {
        boolean z = true;
        if (this.cancelled) {
            return false;
        }
        Log.d("CCV", "starting video upload to s3");
        String strHttpFileUploadTask = httpFileUploadTask(this.s3VideoUrl, "", "", "application/octet-stream", "PUT", uri, true);
        if (strHttpFileUploadTask.equals("")) {
            Log.d("CCV", "error in video upload request");
            return false;
        }
        Log.d("CCV", "response is : " + strHttpFileUploadTask);
        try {
            JSONObject jSONObject = new JSONObject(strHttpFileUploadTask);
            Log.d("CCV", "video upload response : " + strHttpFileUploadTask);
            String string = jSONObject.getString(ProjectHostingService.PROJECTHOSTING_SERVICE);
            if (string == null || !string.equals("200")) {
                Log.d("CCV", "unexpected response for video upload request");
                z = false;
            } else {
                Log.d("CCV", "video upload to S3 successful");
            }
            return z;
        } catch (JSONException e2) {
            Log.d("CCV", "json not formed from response for video upload request");
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean uploadPosterToS3(Uri uri) {
        boolean z = false;
        if (!this.cancelled) {
            Log.d("CCV", "starting poster upload to s3");
            String strHttpFileUploadTask = httpFileUploadTask(this.s3PosterUrl, "", "", "application/octet-stream", "PUT", uri, false);
            if (strHttpFileUploadTask.equals("")) {
                Log.d("CCV", "error in poster upload request");
            } else {
                Log.d("CCV", "response is : " + strHttpFileUploadTask);
                try {
                    JSONObject jSONObject = new JSONObject(strHttpFileUploadTask);
                    Log.d("CCV", "poster upload response : " + strHttpFileUploadTask);
                    String string = jSONObject.getString(ProjectHostingService.PROJECTHOSTING_SERVICE);
                    if (string == null || !string.equals("200")) {
                        Log.d("CCV", "unexpected response for poster upload request");
                    } else {
                        Log.d("CCV", "poster upload to S3 successful");
                        z = true;
                    }
                } catch (JSONException e2) {
                    Log.d("CCV", "json not formed from response for poster upload request");
                    e2.printStackTrace();
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0118 -> B:30:0x0006). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x011f -> B:30:0x0006). Please report as a decompilation issue!!! */
    public boolean confirmUpload() {
        String str;
        boolean z;
        if (this.cancelled) {
            return false;
        }
        String str2 = "Bearer " + getAccessToken();
        Log.d("CCV", "starting video confirm request");
        if (this.unlisted) {
            str = "unlisted";
        } else {
            str = "public";
        }
        try {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("title", this.title);
                jSONObject.put("privacy", str);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("upload_id", this.uploadId);
                jSONObject2.put("info", jSONObject);
                String string = jSONObject2.toString();
                Log.d("CCV", "confirm video metadata : " + string);
                String strHttpTask = httpTask("https://api.ccv.adobe.com/api/v1/videos", Json.MEDIA_TYPE, str2, Json.MEDIA_TYPE, "POST", string.getBytes("UTF-8"));
                if (strHttpTask.equals("")) {
                    Log.d("CCV", "error in video confirm request");
                    z = false;
                } else {
                    Log.d("CCV", "response is : " + strHttpTask);
                    try {
                        JSONObject jSONObject3 = new JSONObject(strHttpTask);
                        String string2 = jSONObject3.getString(ProjectHostingService.PROJECTHOSTING_SERVICE);
                        JSONObject jSONObject4 = jSONObject3.getJSONObject("data");
                        Log.d("CCV", "response code : " + string2 + "  response data : " + jSONObject4);
                        if (string2 == null || jSONObject4 == null) {
                            Log.d("CCV", "unexpected response for video confirm request");
                            z = false;
                        } else {
                            z = true;
                        }
                    } catch (JSONException e2) {
                        Log.d("CCV", "json not formed from response for video confirm request");
                        e2.printStackTrace();
                        z = false;
                    }
                }
            } catch (JSONException e3) {
                e3.printStackTrace();
                z = false;
            }
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
            z = false;
        }
        return z;
    }

    private String getAccessToken() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken();
    }

    private String httpTask(String str, String str2, String str3, String str4, String str5, byte[] bArr) {
        HttpsURLConnection httpsURLConnection;
        InputStream errorStream;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer;
        String str6;
        try {
            try {
                try {
                    httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
                    httpsURLConnection.setRequestMethod(str5);
                    if (!str2.equals("")) {
                        httpsURLConnection.setRequestProperty("Accept", str2);
                    }
                    if (!str3.equals("")) {
                        httpsURLConnection.setRequestProperty("Authorization", str3);
                    }
                    if (!str4.equals("")) {
                        httpsURLConnection.setRequestProperty("Content-Type", str4);
                    }
                    httpsURLConnection.setDoOutput(true);
                    httpsURLConnection.setChunkedStreamingMode(0);
                    DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                    if (bArr != null) {
                        dataOutputStream.write(bArr);
                    }
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    if (httpsURLConnection.getResponseCode() < 400) {
                        errorStream = httpsURLConnection.getInputStream();
                    } else {
                        errorStream = httpsURLConnection.getErrorStream();
                    }
                    bufferedReader = new BufferedReader(new InputStreamReader(errorStream));
                    stringBuffer = new StringBuffer();
                } catch (UnknownHostException e2) {
                    e2.printStackTrace();
                    return "";
                }
            } catch (IOException e3) {
                e3.printStackTrace();
                return "";
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                stringBuffer.append(line);
                e3.printStackTrace();
                return "";
            }
            bufferedReader.close();
            String str7 = "{'code':" + String.valueOf(httpsURLConnection.getResponseCode());
            if (!stringBuffer.toString().equals("")) {
                str6 = str7 + ",'data':" + stringBuffer.toString() + "}";
            } else {
                str6 = str7 + "}";
            }
            httpsURLConnection.disconnect();
            return str6;
        } catch (MalformedURLException e4) {
            e4.printStackTrace();
            return "";
        }
    }

    private String httpFileUploadTask(String str, String str2, String str3, String str4, String str5, Uri uri, boolean z) {
        HttpsURLConnection httpsURLConnection;
        InputStream errorStream;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer;
        String str6;
        try {
            try {
                try {
                    httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
                    httpsURLConnection.setRequestMethod(str5);
                    if (!str2.equals("")) {
                        httpsURLConnection.setRequestProperty("Accept", str2);
                    }
                    if (!str3.equals("")) {
                        httpsURLConnection.setRequestProperty("Authorization", str3);
                    }
                    if (!str4.equals("")) {
                        httpsURLConnection.setRequestProperty("Content-Type", str4);
                    }
                    httpsURLConnection.setRequestProperty("Accept-Encoding", "");
                    httpsURLConnection.setDoInput(true);
                    httpsURLConnection.setDoOutput(true);
                    File file = new File(uri.getPath());
                    httpsURLConnection.setFixedLengthStreamingMode((int) file.length());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                    if (uri != null) {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        long length = file.length();
                        byte[] bArr = new byte[1024];
                        int i = 0;
                        while (true) {
                            int i2 = fileInputStream.read(bArr);
                            if (i2 == -1) {
                                break;
                            }
                            dataOutputStream.write(bArr, 0, i2);
                            i += i2;
                            if (z) {
                                this.videoUploadProgress = (((double) i) / length) * 100.0d;
                            } else {
                                this.posterUploadProgress = (((double) i) / length) * 100.0d;
                            }
                            updateProgress();
                        }
                    }
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    if (httpsURLConnection.getResponseCode() < 400) {
                        errorStream = httpsURLConnection.getInputStream();
                    } else {
                        errorStream = httpsURLConnection.getErrorStream();
                    }
                    bufferedReader = new BufferedReader(new InputStreamReader(errorStream));
                    stringBuffer = new StringBuffer();
                } catch (UnknownHostException e2) {
                    e2.printStackTrace();
                    return "";
                }
            } catch (IOException e3) {
                e3.printStackTrace();
                return "";
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                stringBuffer.append(line);
                e3.printStackTrace();
                return "";
            }
            bufferedReader.close();
            String str7 = "{'code':" + String.valueOf(httpsURLConnection.getResponseCode());
            if (!stringBuffer.toString().equals("")) {
                str6 = str7 + ",'data':" + stringBuffer.toString() + "}";
            } else {
                str6 = str7 + "}";
            }
            httpsURLConnection.disconnect();
            return str6;
        } catch (MalformedURLException e4) {
            e4.printStackTrace();
            return "";
        }
    }
}
