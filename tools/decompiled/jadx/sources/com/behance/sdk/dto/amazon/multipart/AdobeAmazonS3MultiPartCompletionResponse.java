package com.behance.sdk.dto.amazon.multipart;

import com.behance.sdk.dto.amazon.singlepart.AmazonS3KeyLocationResponse;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAmazonS3MultiPartCompletionResponse {

    @SerializedName("http_code")
    private int httpCode;

    @SerializedName("object")
    private AmazonS3KeyLocationResponse s3obj;

    @SerializedName("upload_id")
    private String uploadId;

    public String getUploadId() {
        return this.uploadId;
    }

    public int getHttpCode() {
        return this.httpCode;
    }

    public AmazonS3KeyLocationResponse getS3obj() {
        return this.s3obj;
    }
}
