package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public enum AdobeAssetMimeTypes {
    MIMETYPE_OCTETSTREAM("application/octet-stream"),
    MIMETYPE_SPARKLER("application/vnd.adobe.sparkler.project+dcx"),
    MIMETYPE_SPARKLER_DCXUCF(AdobeAssetFileExtensions.kAdobeMimeTypeXD),
    MIMETYPE_PHOTOSHOP(AdobeAssetFileExtensions.kAdobeMimeTypePhotoshop),
    MIMETYPE_JPEG("image/jpeg"),
    MIMETYPE_JPG(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRenditionContentTypeJPG),
    MIMETYPE_ILLUSTRATOR(AdobeAssetFileExtensions.kAdobeMimeTypeIllustrator),
    MIMETYPE_GIF("image/gif"),
    MIMETYPE_PNG("image/png"),
    MIMETYPE_TIFF(AdobeAssetFileExtensions.kAdobeMimeTypeTIFF),
    MIMETYPE_BMP(AdobeAssetFileExtensions.kAdobeMimeTypeBMP),
    MIMETYPE_PDF(AdobeAssetFileExtensions.kAdobeMimeTypePDF),
    MIMETYPE_DMG(AdobeAssetFileExtensions.kAdobeMimeTypeDMG),
    MIMETYPE_DNG(AdobeAssetFileExtensions.kAdobeMimeTypeDNG),
    MIMETYPE_RAW(AdobeAssetFileExtensions.kAdobeMimeTypeRaw),
    MIMETYPE_IMAGE_RAW("image/raw"),
    MIMETYPE_MP4("video/mp4"),
    MIMETYPE_M4V("video/x-m4v"),
    MIMETYPE_QUICKTIME(AdobeAssetFileExtensions.kAdobeMimeTypeQuicktime),
    MIMETYPE_GROOVE_TOOL_TEMPLATE("application/vnd.groove-tool-template");

    private String mimeType;

    AdobeAssetMimeTypes(String str) {
        this.mimeType = str;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public static EnumSet<AdobeAssetMimeTypes> basicImagesSet() {
        return EnumSet.of(MIMETYPE_TIFF, MIMETYPE_JPEG, MIMETYPE_GIF, MIMETYPE_PNG, MIMETYPE_BMP);
    }

    public static EnumSet<AdobeAssetMimeTypes> ImageMimeTypeSet() {
        return EnumSet.of(MIMETYPE_TIFF, MIMETYPE_JPEG, MIMETYPE_GIF, MIMETYPE_PNG, MIMETYPE_BMP, MIMETYPE_JPG, MIMETYPE_DNG, MIMETYPE_RAW, MIMETYPE_IMAGE_RAW, MIMETYPE_PHOTOSHOP);
    }

    public static EnumSet<AdobeAssetMimeTypes> VideoMimeTypeSet() {
        return EnumSet.of(MIMETYPE_MP4, MIMETYPE_M4V, MIMETYPE_QUICKTIME);
    }

    public static EnumSet<AdobeAssetMimeTypes> PdfMimeTypeSet() {
        return EnumSet.of(MIMETYPE_PDF);
    }

    public static EnumSet<AdobeAssetMimeTypes> adobeContent() {
        return EnumSet.of(MIMETYPE_ILLUSTRATOR);
    }
}
