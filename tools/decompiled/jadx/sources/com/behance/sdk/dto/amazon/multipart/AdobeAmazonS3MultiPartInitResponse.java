package com.behance.sdk.dto.amazon.multipart;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAmazonS3MultiPartInitResponse {

    @SerializedName("http_code")
    private int httpCode;

    @SerializedName("object")
    private AmazonS3keyResponse obj;

    @SerializedName("upload_id")
    private String uploadId;

    public String getUploadId() {
        return this.uploadId;
    }

    public AmazonS3keyResponse getObj() {
        return this.obj;
    }

    public int getHttpCode() {
        return this.httpCode;
    }
}
