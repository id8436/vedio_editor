package com.behance.sdk.dto.amazon.multipart;

import com.behance.sdk.dto.amazon.singlepart.AmazonS3KeyLocationResponse;
import com.google.gdata.data.codesearch.Package;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAmazonS3MultiPartPresignedUrlResponse {

    @SerializedName("expires_in")
    private String expiry;

    @SerializedName("http_code")
    private String httpCode;

    @SerializedName("object")
    private AmazonS3KeyLocationResponse object;

    @SerializedName("upload_id")
    private String uploadId;

    @SerializedName(Package.ATTRIBUTE_URI)
    private String uri;

    public String getAmazonUri() {
        return this.uri;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public String getExpiry() {
        return this.expiry;
    }

    public AmazonS3KeyLocationResponse getObject() {
        return this.object;
    }

    public String getHttpCode() {
        return this.httpCode;
    }
}
