package com.adobe.creativesdk.foundation.internal.storage.asset;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.AdobeAssetSketchbook;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetSketchbookInternal extends AdobeAssetSketchbook {
    public AdobeAssetSketchbookInternal(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        super(adobeStorageResourceCollection, adobeStorageResourceCollection2);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public void setCloud(AdobeCloud adobeCloud) {
        super.setCloud(adobeCloud);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages
    public boolean supportsSharedProjectType(AdobeAssetPackagePages.AdobeAssetPackageSharedProjectType adobeAssetPackageSharedProjectType) {
        switch (adobeAssetPackageSharedProjectType) {
            case AdobeAssetPackageSharedProjectTypeMultiPage:
            case AdobeAssetPackageSharedProjectTypeMaxDemo:
                return true;
            default:
                return false;
        }
    }
}
