package com.adobe.sync.database;

/* JADX INFO: loaded from: classes2.dex */
public class ComponentWaitingModel {
    private String UCID;
    private String adobeId;
    private String assetSyncStatus;
    private String cloudId;
    private String componentId;
    private String compositeId;
    private String serverHref;

    public enum SYNC_STATUS {
        PENDING,
        DONE
    }

    public String getCompositeId() {
        return this.compositeId;
    }

    public void setCompositeId(String str) {
        this.compositeId = str;
    }

    public String getComponentId() {
        return this.componentId;
    }

    public void setComponentId(String str) {
        this.componentId = str;
    }

    public String getUCID() {
        return this.UCID;
    }

    public void setUCID(String str) {
        this.UCID = str;
    }

    public String getServerHref() {
        return this.serverHref;
    }

    public void setServerHref(String str) {
        this.serverHref = str;
    }

    public String getAssetSyncStatus() {
        return this.assetSyncStatus;
    }

    public void setAssetSyncStatus(String str) {
        this.assetSyncStatus = str;
    }

    public String getCloudId() {
        return this.cloudId;
    }

    public void setCloudId(String str) {
        this.cloudId = str;
    }

    public String getAdobeId() {
        return this.adobeId;
    }

    public void setAdobeId(String str) {
        this.adobeId = str;
    }
}
