package com.behance.sdk.dto.amazon.singlepart;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class AmazonS3KeyLocationResponse {

    @SerializedName("location")
    String fileLocation;

    @SerializedName("key")
    String s3key;

    public String getS3key() {
        return this.s3key;
    }

    public String getFileLocation() {
        return this.fileLocation;
    }
}
