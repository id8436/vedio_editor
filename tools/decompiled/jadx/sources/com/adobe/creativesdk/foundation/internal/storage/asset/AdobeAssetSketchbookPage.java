package com.adobe.creativesdk.foundation.internal.storage.asset;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import java.net.URI;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetSketchbookPage extends AdobeAssetFile {
    static final /* synthetic */ boolean $assertionsDisabled;
    public AdobeAssetPackagePages _package;
    public int pageNumber;

    static {
        $assertionsDisabled = !AdobeAssetSketchbookPage.class.desiredAssertionStatus();
    }

    public AdobeAssetSketchbookPage(String str, int i, AdobeDCXComponent adobeDCXComponent, AdobeAssetPackagePages adobeAssetPackagePages) {
        this.name = str;
        this.pageNumber = i;
        this.GUID = adobeDCXComponent.getComponentId();
        this.href = (adobeAssetPackagePages.getHref() == null || adobeDCXComponent.getComponentId() == null) ? null : URI.create(adobeAssetPackagePages.getHref().getPath() + adobeDCXComponent.getComponentId());
        this.parentHref = adobeAssetPackagePages.getHref();
        this.type = adobeDCXComponent.getType();
        this.etag = adobeDCXComponent.getEtag();
        this.md5Hash = adobeDCXComponent.getMd5();
        this.creationDate = adobeAssetPackagePages.getCreationDate();
        this.modificationDate = adobeAssetPackagePages.getModificationDate();
        this._package = adobeAssetPackagePages;
    }

    public AdobeAssetSketchbookPage() {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetFile, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetSketchbookPage) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetFile, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        if ($assertionsDisabled) {
            return 42;
        }
        throw new AssertionError("hashCode not designed");
    }
}
