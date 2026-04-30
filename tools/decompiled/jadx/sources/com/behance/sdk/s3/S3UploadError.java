package com.behance.sdk.s3;

/* JADX INFO: loaded from: classes2.dex */
public class S3UploadError {
    public static final int IO_ERROR = 0;
    public static final int NETWORK_ERROR = 1;
    public static final int UNKNOWN_ERROR = 2;
    private int errorCode;
    private String errorMessage;

    public S3UploadError(int i, String str) {
        this.errorCode = i;
        this.errorMessage = str;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }
}
