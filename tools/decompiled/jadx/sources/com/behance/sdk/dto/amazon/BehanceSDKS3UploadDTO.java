package com.behance.sdk.dto.amazon;

import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKS3UploadDTO {
    private Uri localLocation;
    private String remoteFileName;
    private String remoteLocation;

    public Uri getLocalLocation() {
        return this.localLocation;
    }

    public void setLocalLocation(Uri uri) {
        this.localLocation = uri;
    }

    public String getRemoteLocation() {
        return this.remoteLocation;
    }

    public void setRemoteLocation(String str) {
        this.remoteLocation = str;
    }

    public String getRemoteFileName() {
        return this.remoteFileName;
    }

    public void setRemoteFileName(String str) {
        this.remoteFileName = str;
    }
}
