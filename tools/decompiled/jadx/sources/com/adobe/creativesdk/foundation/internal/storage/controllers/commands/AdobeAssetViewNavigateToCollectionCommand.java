package com.adobe.creativesdk.foundation.internal.storage.controllers.commands;

import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewNavigateToCollectionCommand extends AdobeAssetViewCommandData {
    private AdobeStorageResourceCollection collection;
    private AdobeAssetDataSourceType dataSourceType;
    private boolean isReadOnly;

    public AdobeStorageResourceCollection getCollection() {
        return this.collection;
    }

    public void setCollection(AdobeStorageResourceCollection adobeStorageResourceCollection) {
        this.collection = adobeStorageResourceCollection;
    }

    public AdobeAssetDataSourceType getDataSourceType() {
        return this.dataSourceType;
    }

    public void setDataSourceType(AdobeAssetDataSourceType adobeAssetDataSourceType) {
        this.dataSourceType = adobeAssetDataSourceType;
    }

    public boolean isReadOnly() {
        return this.isReadOnly;
    }

    public void setReadOnly(boolean z) {
        this.isReadOnly = z;
    }
}
