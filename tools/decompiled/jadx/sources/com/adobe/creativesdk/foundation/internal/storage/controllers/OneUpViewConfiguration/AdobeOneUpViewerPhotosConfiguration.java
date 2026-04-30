package com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration;

import com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpViewerPhotosConfiguration extends AdobeOneUpViewerBaseConfiguration {
    private AdobePhotoAsset adobePhotoAsset;
    private AdobePhotoAssetsDataSource dataSource;

    public void setAdobePhotoAsset(AdobePhotoAsset adobePhotoAsset) {
        this.adobePhotoAsset = adobePhotoAsset;
    }

    public void setAdobePhotoDataSource(AdobePhotoAssetsDataSource adobePhotoAssetsDataSource) {
        this.dataSource = adobePhotoAssetsDataSource;
    }

    public AdobePhotoAssetsDataSource getAdobePhotoAssetDataSource() {
        return this.dataSource;
    }

    public AdobePhotoAsset getAdobePhotoAsset() {
        return this.adobePhotoAsset;
    }
}
