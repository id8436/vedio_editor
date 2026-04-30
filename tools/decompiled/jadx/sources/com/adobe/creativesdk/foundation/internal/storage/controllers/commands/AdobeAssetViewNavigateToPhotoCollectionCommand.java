package com.adobe.creativesdk.foundation.internal.storage.controllers.commands;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewNavigateToPhotoCollectionCommand extends AdobeAssetViewCommandData {
    private String catalogGUID;
    private String catalogName;
    private String collectionGUID;
    private String collectionName;

    public String getCollectionGUID() {
        return this.collectionGUID;
    }

    public void setCollectionGUID(String str) {
        this.collectionGUID = str;
    }

    public String getCollectionName() {
        return this.collectionName;
    }

    public void setCollectionName(String str) {
        this.collectionName = str;
    }

    public String getCatalogGUID() {
        return this.catalogGUID;
    }

    public void setCatalogGUID(String str) {
        this.catalogGUID = str;
    }

    public String getCatalogName() {
        return this.catalogName;
    }

    public void setCatalogName(String str) {
        this.catalogName = str;
    }
}
