package com.adobe.creativesdk.foundation.internal.storage.asset;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetSharedProject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetSharedProjectInternal extends AdobeAssetSharedProject {
    public AdobeAssetSharedProjectInternal(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        super(adobeStorageResourceCollection, adobeStorageResourceCollection2);
    }

    public AdobeAssetSharedProjectInternal() {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public void setCloud(AdobeCloud adobeCloud) {
        super.setCloud(adobeCloud);
    }
}
