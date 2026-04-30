package com.behance.sdk.dto.amazon.singlepart;

import com.google.gdata.data.codesearch.Package;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAmazonS3SinglePartPostResponse {

    @SerializedName("expires_in")
    private int expiry;

    @SerializedName("http_code")
    private int httpCode;

    @SerializedName("object")
    private AmazonS3KeyLocationResponse obj;

    @SerializedName(Package.ATTRIBUTE_URI)
    private String uri;

    public String getUri() {
        return this.uri;
    }

    public int getExpiry() {
        return this.expiry;
    }

    public AmazonS3KeyLocationResponse getObj() {
        return this.obj;
    }

    public int getHttpCode() {
        return this.httpCode;
    }
}
