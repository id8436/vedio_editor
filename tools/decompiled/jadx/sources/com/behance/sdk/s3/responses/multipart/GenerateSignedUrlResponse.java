package com.behance.sdk.s3.responses.multipart;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class GenerateSignedUrlResponse {

    @SerializedName("expires_in")
    long expiresIn;

    @SerializedName("http_code")
    int httpCode;

    @SerializedName("object")
    com.behance.sdk.s3.responses.SignedObject signedObject;

    @SerializedName("upload_id")
    String uploadId;
    String uri;

    public String getUri() {
        return this.uri;
    }

    public long getExpiresIn() {
        return this.expiresIn;
    }

    public int getHttpCode() {
        return this.httpCode;
    }
}
