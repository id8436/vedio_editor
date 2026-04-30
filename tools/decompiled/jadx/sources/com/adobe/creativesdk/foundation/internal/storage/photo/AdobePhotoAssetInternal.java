package com.adobe.creativesdk.foundation.internal.storage.photo;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileInfo;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePhotoAssetInternal extends AdobePhotoAsset {
    AdobePhotoCollection parentCollection;

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhotoAsset, com.adobe.creativesdk.foundation.storage.AdobePhoto
    public AdobeCloud getCloud() {
        return super.getCloud();
    }

    public AdobePhotoCollection getPhotoCollection() {
        return this.parentCollection;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto
    public void setCloud(AdobeCloud adobeCloud) {
        super.setCloud(adobeCloud);
    }

    public AdobePhotoAssetInternal(AdobePhotoCollection adobePhotoCollection) {
        this.parentCollection = adobePhotoCollection;
    }

    public AdobePhotoAssetInternal() {
    }

    public AdobePhotoAssetInternal(String str, String str2, AdobePhotoCatalog adobePhotoCatalog) {
        super(str, str2, adobePhotoCatalog);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhotoAsset
    public void setName(String str) {
        super.setName(str);
    }

    public static AdobePhotoAsset AdobeAssePhotoFromInfo(AdobeStorageAssetFileInfo adobeStorageAssetFileInfo) {
        AdobePhotoAssetInternal adobePhotoAssetInternal = new AdobePhotoAssetInternal();
        adobePhotoAssetInternal.setName(adobeStorageAssetFileInfo.name);
        adobePhotoAssetInternal.setGUID(adobeStorageAssetFileInfo.GUID);
        adobePhotoAssetInternal.setHref(adobeStorageAssetFileInfo.href.toString());
        adobePhotoAssetInternal.setCreationDate(adobeStorageAssetFileInfo.creationDate);
        adobePhotoAssetInternal.setModificationDate(adobeStorageAssetFileInfo.modificationDate);
        adobePhotoAssetInternal.setRenditions(adobeStorageAssetFileInfo.photoAssetRenditionMap);
        adobePhotoAssetInternal.setCloud(adobeStorageAssetFileInfo.cloud);
        return adobePhotoAssetInternal;
    }
}
