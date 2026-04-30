package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibrary;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetLibraryItemLayoutStyle extends AdobeAssetLibraryItem {
    private AdobeAssetFile layout;
    private AdobeAssetFile rendition;
    private float renditionHeight;
    private float renditionWidth;

    public float getRenditionWidth() {
        return this.renditionWidth;
    }

    public void setRenditionWidth(float f2) {
        this.renditionWidth = f2;
    }

    public float getRenditionHeight() {
        return this.renditionHeight;
    }

    public void setRenditionHeight(float f2) {
        this.renditionHeight = f2;
    }

    public AdobeAssetFile getRendition() {
        return this.rendition;
    }

    public void setRendition(AdobeAssetFile adobeAssetFile) {
        this.rendition = adobeAssetFile;
    }

    public AdobeAssetFile getLayout() {
        return this.layout;
    }

    public void setLayout(AdobeAssetFile adobeAssetFile) {
        this.layout = adobeAssetFile;
    }

    public AdobeAssetLibraryItemLayoutStyle(AdobeDCXManifestNode adobeDCXManifestNode, String str, AdobeAssetFile adobeAssetFile, AdobeAssetFile adobeAssetFile2, int i, int i2, AdobeAssetLibrary adobeAssetLibrary) {
        super(adobeDCXManifestNode, str, adobeAssetLibrary);
        this.layout = adobeAssetFile;
        this.rendition = adobeAssetFile2;
        this.renditionHeight = i;
        this.renditionWidth = i2;
    }
}
