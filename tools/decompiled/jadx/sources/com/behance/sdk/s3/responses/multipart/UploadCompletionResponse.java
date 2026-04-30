package com.behance.sdk.s3.responses.multipart;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class UploadCompletionResponse {

    @SerializedName("http_code")
    int httpCode;

    @SerializedName("object")
    com.behance.sdk.s3.responses.SignedObject signedObject;

    @SerializedName("upload_id")
    String uploadId;

    public int getHttpCode() {
        return this.httpCode;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public com.behance.sdk.s3.responses.SignedObject getSignedObject() {
        return this.signedObject;
    }
}
