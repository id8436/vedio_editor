package com.adobe.premiereclip.prexport;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;

/* JADX INFO: loaded from: classes2.dex */
public class PrExportTransfer {
    private float progress;
    private String sourcePath;
    private String targetFolder;
    private String targetName;
    private String targetType;
    private boolean result = false;
    private AdobeNetworkHttpTaskHandle request = null;

    public PrExportTransfer(String str, String str2, String str3, String str4) {
        this.targetName = str;
        this.sourcePath = str2;
        this.targetFolder = str3;
        this.targetType = str4;
    }

    public float getProgress() {
        if (this.request != null) {
            return this.request.getProgress();
        }
        return 0.0f;
    }

    public boolean getResult() {
        return this.result;
    }

    public void setResult(boolean z) {
        this.result = z;
    }

    public String getSourcePath() {
        return this.sourcePath;
    }

    public String getTargetFolder() {
        return this.targetFolder;
    }

    public String getTargetName() {
        return this.targetName;
    }

    public String getTargetType() {
        return this.targetType;
    }

    public AdobeNetworkHttpTaskHandle getRequest() {
        return this.request;
    }

    public void setRequest(AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        this.request = adobeNetworkHttpTaskHandle;
    }

    public void cancelTransfer() {
        if (this.request != null) {
            this.request.cancel();
        }
    }
}
