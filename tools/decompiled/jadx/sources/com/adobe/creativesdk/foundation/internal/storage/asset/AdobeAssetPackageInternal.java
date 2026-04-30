package com.adobe.creativesdk.foundation.internal.storage.asset;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackage;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetPackageInternal extends AdobeAssetPackage {
    public AdobeAssetPackageInternal(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        super(adobeStorageResourceCollection, adobeStorageResourceCollection2);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public void setCloud(AdobeCloud adobeCloud) {
        super.setCloud(adobeCloud);
    }
}
