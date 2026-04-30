package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AdobeAssetLibraryItem3DLight extends AdobeAssetLibraryItem {
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

    protected AdobeAssetLibraryItem3DLight(AdobeDCXManifestNode adobeDCXManifestNode, String str, AdobeAssetFile adobeAssetFile, int i, int i2, AdobeAssetLibrary adobeAssetLibrary) {
        super(adobeDCXManifestNode, str, adobeAssetLibrary);
        this.rendition = adobeAssetFile;
        this.renditionHeight = i;
        this.renditionWidth = i2;
    }
}
