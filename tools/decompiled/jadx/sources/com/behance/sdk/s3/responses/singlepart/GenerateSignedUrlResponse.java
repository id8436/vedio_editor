package com.behance.sdk.s3.responses.singlepart;

import com.behance.sdk.s3.responses.SignedObject;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class GenerateSignedUrlResponse {

    @SerializedName("expires_in")
    long expiresIn;

    @SerializedName("http_code")
    int httpCode;

    @SerializedName("object")
    SignedObject signedObject;
    String uri;

    public String getUri() {
        return this.uri;
    }

    public long getExpiresIn() {
        return this.expiresIn;
    }

    public SignedObject getSignedObject() {
        return this.signedObject;
    }

    public int getHttpCode() {
        return this.httpCode;
    }
}
