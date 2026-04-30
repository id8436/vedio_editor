package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetFileExtensions {
    public static final String kAdobeFileExtensionTypeAI = "ai";
    public static final String kAdobeFileExtensionTypeAIT = "ait";
    public static final String kAdobeFileExtensionTypeAdobeBrush = "abr";
    public static final String kAdobeFileExtensionTypeBMP = "bmp";
    public static final String kAdobeFileExtensionTypeDMG = "dmg";
    public static final String kAdobeFileExtensionTypeDNG = "dng";
    public static final String kAdobeFileExtensionTypeEPS = "eps";
    public static final String kAdobeFileExtensionTypeGIF = "gif";
    public static final String kAdobeFileExtensionTypeIDML = "idml";
    public static final String kAdobeFileExtensionTypeIDMS = "idms";
    public static final String kAdobeFileExtensionTypeINDD = "indd";
    public static final String kAdobeFileExtensionTypeINDT = "indt";
    public static final String kAdobeFileExtensionTypeJPEG = "jpg";
    public static final String kAdobeFileExtensionTypeMOV = "mov";
    public static final String kAdobeFileExtensionTypeMP4 = "mp4";
    public static final String kAdobeFileExtensionTypePDF = "pdf";
    public static final String kAdobeFileExtensionTypePNG = "png";
    public static final String kAdobeFileExtensionTypePSB = "psb";
    public static final String kAdobeFileExtensionTypePSD = "psd";
    public static final String kAdobeFileExtensionTypeSHAPE = "shape";
    public static final String kAdobeFileExtensionTypeSVG = "svg";
    public static final String kAdobeFileExtensionTypeTIFF = "tiff";
    public static final String kAdobeFileExtensionTypeXd = "xd";
    public static final String kAdobeFileExtensionTypeZip = "zip";
    public static final String kAdobeMimeTypeAdobeBrush = "image/x-adobe-photoshop-brush";
    public static final String kAdobeMimeTypeAdobeMuseCollection = "application/vnd.adobe.muse-collection";
    public static final String kAdobeMimeTypeBMP = "image/bmp";
    public static final String kAdobeMimeTypeDMG = "application/x-diskcopy";
    public static final String kAdobeMimeTypeDNG = "image/x-adobe-dng";
    public static final String kAdobeMimeTypeGIF = "image/gif";
    public static final String kAdobeMimeTypeIDML = "application/vnd.adobe.indesign-idml-package";
    public static final String kAdobeMimeTypeIDMS = "application/vnd.adobe.indesign-idms";
    public static final String kAdobeMimeTypeIllustrator = "application/illustrator";
    public static final String kAdobeMimeTypeInDesign = "application/x-indesign";
    public static final String kAdobeMimeTypeJPEG = "image/jpeg";
    public static final String kAdobeMimeTypeMP4 = "video/mp4";
    public static final String kAdobeMimeTypeOctetStream = "application/octet-stream";
    public static final String kAdobeMimeTypePDF = "application/pdf";
    public static final String kAdobeMimeTypePNG = "image/png";
    public static final String kAdobeMimeTypePhotoshop = "image/vnd.adobe.photoshop";
    public static final String kAdobeMimeTypePostscript = "application/postscript";
    public static final String kAdobeMimeTypeQuicktime = "video/quicktime";
    public static final String kAdobeMimeTypeRaw = "image/x-dcraw";
    public static final String kAdobeMimeTypeSVG = "image/svg+xml";
    public static final String kAdobeMimeTypeShape = "image/vnd.adobe.shape+svg";
    public static final String kAdobeMimeTypeTIFF = "image/tiff";
    public static final String kAdobeMimeTypeVideoMetadata = "application/vnd.adobe.ccv.videometadata";
    public static final String kAdobeMimeTypeXD = "application/vnd.adobe.sparkler.project+dcxucf";
    public static final String kAdobeMimeTypeZip = "application/zip";

    public static String getExtensionForMimeType(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals(kAdobeMimeTypeBMP)) {
            return kAdobeFileExtensionTypeBMP;
        }
        if (lowerCase.equals(kAdobeMimeTypeDMG)) {
            return kAdobeFileExtensionTypeDMG;
        }
        if (lowerCase.equals(kAdobeMimeTypeDNG)) {
            return kAdobeFileExtensionTypeDNG;
        }
        if (lowerCase.equals("image/gif")) {
            return kAdobeFileExtensionTypeGIF;
        }
        if (lowerCase.equals(kAdobeMimeTypeIDML)) {
            return kAdobeFileExtensionTypeIDML;
        }
        if (lowerCase.equals(kAdobeMimeTypeIDMS)) {
            return kAdobeFileExtensionTypeIDMS;
        }
        if (lowerCase.equals(kAdobeMimeTypeIllustrator)) {
            return kAdobeFileExtensionTypeAI;
        }
        if (lowerCase.equals(kAdobeMimeTypeInDesign)) {
            return kAdobeFileExtensionTypeINDD;
        }
        if (lowerCase.equals("image/jpeg")) {
            return "jpg";
        }
        if (lowerCase.equals("video/mp4")) {
            return kAdobeFileExtensionTypeMP4;
        }
        if (lowerCase.equals(kAdobeMimeTypePDF)) {
            return "pdf";
        }
        if (lowerCase.equals(kAdobeMimeTypePhotoshop)) {
            return kAdobeFileExtensionTypePSD;
        }
        if (lowerCase.equals("image/png")) {
            return "png";
        }
        if (lowerCase.equals(kAdobeMimeTypePostscript)) {
            return kAdobeFileExtensionTypeEPS;
        }
        if (lowerCase.equals(kAdobeMimeTypeQuicktime)) {
            return kAdobeFileExtensionTypeMOV;
        }
        if (lowerCase.equals(kAdobeMimeTypeShape)) {
            return kAdobeFileExtensionTypeSHAPE;
        }
        if (lowerCase.equals(kAdobeMimeTypeAdobeBrush)) {
            return kAdobeFileExtensionTypeAdobeBrush;
        }
        if (lowerCase.equals(kAdobeMimeTypeSVG)) {
            return kAdobeFileExtensionTypeSVG;
        }
        if (lowerCase.equals(kAdobeMimeTypeTIFF)) {
            return kAdobeFileExtensionTypeTIFF;
        }
        if (lowerCase.equals("application/zip")) {
            return kAdobeFileExtensionTypeZip;
        }
        if (lowerCase.equals(kAdobeMimeTypeXD)) {
            return kAdobeFileExtensionTypeXd;
        }
        return null;
    }

    public static String getMimeTypeForExtension(String str) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals(kAdobeFileExtensionTypeAI)) {
            return kAdobeMimeTypeIllustrator;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeAIT)) {
            return kAdobeMimeTypePDF;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeBMP)) {
            return kAdobeMimeTypeBMP;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeDMG)) {
            return kAdobeMimeTypeDMG;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeDNG)) {
            return kAdobeMimeTypeDNG;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeEPS)) {
            return kAdobeMimeTypePostscript;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeGIF)) {
            return "image/gif";
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeIDML)) {
            return kAdobeMimeTypeIDML;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeIDMS)) {
            return kAdobeMimeTypeIDMS;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeINDD)) {
            return kAdobeMimeTypeInDesign;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeINDT)) {
            return "application/octet-stream";
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeMOV)) {
            return kAdobeMimeTypeQuicktime;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeMP4)) {
            return "video/mp4";
        }
        if (lowerCase.equals("jpg")) {
            return "image/jpeg";
        }
        if (lowerCase.equals("pdf")) {
            return kAdobeMimeTypePDF;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypePSB) || lowerCase.equals(kAdobeFileExtensionTypePSD)) {
            return kAdobeMimeTypePhotoshop;
        }
        if (lowerCase.equals("png")) {
            return "image/png";
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeSHAPE)) {
            return kAdobeMimeTypeShape;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeSVG)) {
            return kAdobeMimeTypeSVG;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeTIFF)) {
            return kAdobeMimeTypeTIFF;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeZip)) {
            return "application/zip";
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeXd)) {
            return kAdobeMimeTypeXD;
        }
        if (lowerCase.equals(kAdobeFileExtensionTypeAdobeBrush)) {
            return kAdobeMimeTypeAdobeBrush;
        }
        return null;
    }
}
