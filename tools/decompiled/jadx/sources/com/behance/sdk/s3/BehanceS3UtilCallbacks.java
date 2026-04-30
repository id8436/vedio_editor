package com.behance.sdk.s3;

/* JADX INFO: loaded from: classes.dex */
public interface BehanceS3UtilCallbacks {
    void onUploadComplete(String str, int i);

    void onUploadError(Exception exc, int i);

    void onUploadProgress(float f2, int i);
}
