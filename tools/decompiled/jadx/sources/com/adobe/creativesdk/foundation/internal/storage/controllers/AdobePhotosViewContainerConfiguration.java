package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class AdobePhotosViewContainerConfiguration extends AdobeAssetsViewContainerConfiguration {
    public static final String TARGET_COLLECTION_CATALOG_GUID = "ASSET_CONTAINER_TARGET_COLLECTION_CATALOG_GUID";
    public static final String TARGET_COLLECTION_CATALOG_NAME = "ASSET_CONTAINER_TARGET_COLLECTION_CATALOG_NAME";
    public static final String TARGET_COLLECTION_GUID = "ASSET_CONTAINER_TARGET_COLLECTION_GUID";
    public static final String TARGET_COLLECTION_NAME = "ASSET_CONTAINER_TARGET_COLLECTION_NAME";
    private String getTargetCollectionCatalogGuid;
    private String getTargetCollectionCatalogName;
    private String targetCollectionGUID;
    private String targetCollectionName;

    public String getTargetCollectionGUID() {
        return this.targetCollectionGUID;
    }

    public String getTargetCollectionName() {
        return this.targetCollectionName;
    }

    public String getTargetCollectionCatalogGUID() {
        return this.getTargetCollectionCatalogGuid;
    }

    public String getTargetCollectionCatalogName() {
        return this.getTargetCollectionCatalogName;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetsViewContainerConfiguration
    public void createFromBundle(Bundle bundle) {
        if (bundle != null) {
            super.createFromBundle(bundle);
            this.targetCollectionGUID = (String) bundle.get(TARGET_COLLECTION_GUID);
            this.targetCollectionName = (String) bundle.get(TARGET_COLLECTION_NAME);
            this.getTargetCollectionCatalogGuid = (String) bundle.get(TARGET_COLLECTION_CATALOG_GUID);
            this.getTargetCollectionCatalogName = (String) bundle.get(TARGET_COLLECTION_CATALOG_NAME);
        }
    }
}
