package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AdobeAssetLibraryItemImage extends AdobeAssetLibraryItem {
    private AdobeAssetFile image;
    private float imageHeight;
    private float imageWidth;
    private String primaryComponentType;
    private AdobeAssetFile rendition;
    private float renditionHeight;
    private float renditionWidth;

    protected void setImage(AdobeAssetFile adobeAssetFile) {
        this.image = adobeAssetFile;
    }

    protected void setImageHeight(float f2) {
        this.imageHeight = f2;
    }

    protected void setImageWidth(float f2) {
        this.imageWidth = f2;
    }

    protected void setRendition(AdobeAssetFile adobeAssetFile) {
        this.rendition = adobeAssetFile;
    }

    protected void setRenditionHeight(float f2) {
        this.renditionHeight = f2;
    }

    protected void setRenditionWidth(float f2) {
        this.renditionWidth = f2;
    }

    protected void setPrimaryComponentType(String str) {
        this.primaryComponentType = str;
    }

    public AdobeAssetFile getImage() {
        return this.image;
    }

    public float getImageHeight() {
        return this.imageHeight;
    }

    public float getImageWidth() {
        return this.imageWidth;
    }

    public AdobeAssetFile getRendition() {
        return this.rendition;
    }

    public float getRenditionHeight() {
        return this.renditionHeight;
    }

    public float getRenditionWidth() {
        return this.renditionWidth;
    }

    public String getPrimaryComponentType() {
        return this.primaryComponentType;
    }

    protected AdobeAssetLibraryItemImage(AdobeDCXManifestNode adobeDCXManifestNode, String str, AdobeAssetFile adobeAssetFile, int i, int i2, AdobeAssetFile adobeAssetFile2, int i3, int i4, String str2, AdobeAssetLibrary adobeAssetLibrary) {
        super(adobeDCXManifestNode, str, adobeAssetLibrary);
        this.image = adobeAssetFile;
        this.imageHeight = i;
        this.imageWidth = i2;
        this.rendition = adobeAssetFile2;
        this.renditionHeight = i3;
        this.renditionWidth = i4;
        this.primaryComponentType = str2;
    }
}
