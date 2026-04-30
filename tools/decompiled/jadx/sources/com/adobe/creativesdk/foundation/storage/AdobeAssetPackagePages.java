package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetPackagePages extends AdobeAssetPackage {
    static final /* synthetic */ boolean $assertionsDisabled;
    ArrayList<AdobeAssetFile> pages;

    public enum AdobeAssetPackageSharedProjectType {
        AdobeAssetPackageSharedProjectTypeSinglePage,
        AdobeAssetPackageSharedProjectTypeMultiPage,
        AdobeAssetPackageSharedProjectTypeMaxDemo
    }

    static {
        $assertionsDisabled = !AdobeAssetPackagePages.class.desiredAssertionStatus();
    }

    protected AdobeAssetPackagePages(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        super(adobeStorageResourceCollection, adobeStorageResourceCollection2);
    }

    protected AdobeAssetPackagePages() {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAssetFolder, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetPackagePages) {
            return super.equals(obj);
        }
        return false;
    }

    public ArrayList<AdobeAssetFile> getPages() {
        return this.pages;
    }

    void setPages(ArrayList arrayList) {
        this.pages = arrayList;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAssetFolder, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        if ($assertionsDisabled) {
            return 42;
        }
        throw new AssertionError("hashCode not designed");
    }

    List<String> getRasterTypes() {
        return Arrays.asList(AdobeAssetMimeTypes.MIMETYPE_PNG.getMimeType(), AdobeAssetMimeTypes.MIMETYPE_JPEG.getMimeType());
    }

    public boolean supportsSharedProjectType(AdobeAssetPackageSharedProjectType adobeAssetPackageSharedProjectType) {
        return false;
    }
}
