package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public enum AdobeAssetFileRenditionType {
    ADOBE_ASSET_FILE_RENDITION_TYPE_JPEG(0),
    ADOBE_ASSET_FILE_RENDITION_TYPE_PNG(1),
    ADOBE_ASSET_FILE_RENDITION_TYPE_PDF(2),
    ADOBE_ASSET_FILE_RENDITION_TYPE_GIF(3),
    ADOBE_ASSET_FILE_RENDITION_TYPE_TIFF(4);

    private final int value;

    AdobeAssetFileRenditionType(int i) {
        this.value = i;
    }

    public int getIntVal() {
        return this.value;
    }
}
