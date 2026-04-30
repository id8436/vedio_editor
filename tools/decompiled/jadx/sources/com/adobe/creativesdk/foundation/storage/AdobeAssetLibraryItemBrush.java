package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AdobeAssetLibraryItemBrush extends AdobeAssetLibraryItem {
    private AdobeAssetFile brush;
    private AdobeAssetFile rendition;
    private float renditionHeight;
    private float renditionWidth;

    public float getRenditionWidth() {
        return this.renditionWidth;
    }

    public float getRenditionHeight() {
        return this.renditionHeight;
    }

    public AdobeAssetFile getRendition() {
        return this.rendition;
    }

    public AdobeAssetFile getBrush() {
        return this.brush;
    }

    protected AdobeAssetLibraryItemBrush(AdobeDCXManifestNode adobeDCXManifestNode, String str, AdobeAssetFile adobeAssetFile, AdobeAssetFile adobeAssetFile2, int i, int i2, AdobeAssetLibrary adobeAssetLibrary) {
        super(adobeDCXManifestNode, str, adobeAssetLibrary);
        this.brush = adobeAssetFile;
        this.rendition = adobeAssetFile2;
        this.renditionHeight = i;
        this.renditionWidth = i2;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem
    public String nameOrIdForDisplay() {
        return this.name != null ? this.name : this.itemID;
    }
}
