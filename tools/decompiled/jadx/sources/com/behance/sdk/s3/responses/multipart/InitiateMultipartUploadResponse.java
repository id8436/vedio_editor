package com.behance.sdk.s3.responses.multipart;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class InitiateMultipartUploadResponse {

    @SerializedName("http_code")
    private int httpCode;
    private SignedObject object;

    @SerializedName("upload_id")
    private String uploadId;

    public String getUploadId() {
        return this.uploadId;
    }

    public SignedObject getObject() {
        return this.object;
    }

    public int getHttpCode() {
        return this.httpCode;
    }
}
