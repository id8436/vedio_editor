package com.adobe.sync.database;

/* JADX INFO: loaded from: classes2.dex */
public class ComponentInfoModel {
    private String UCID;
    private String assetSyncStatus;
    private String assetURL;
    private String createdDate;
    private String localPath;

    public enum ASSET_SYNC_STATUS {
        PENDING,
        DONE
    }

    public String getUCID() {
        return this.UCID;
    }

    public void setUCID(String str) {
        this.UCID = str;
    }

    public String getAssetURL() {
        return this.assetURL;
    }

    public void setAssetURL(String str) {
        this.assetURL = str;
    }

    public String getCreatedDate() {
        return this.createdDate;
    }

    public void setCreatedDate(String str) {
        this.createdDate = str;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public String getAssetSyncStatus() {
        return this.assetSyncStatus;
    }

    public void setAssetSyncStatus(String str) {
        this.assetSyncStatus = str;
    }
}
