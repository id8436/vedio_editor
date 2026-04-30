package com.adobe.creativesdk.foundation.internal.storage.asset;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibrary;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.google.common.base.Ascii;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetLibraryInternal extends AdobeAssetLibrary {
    public AdobeAssetLibraryInternal(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        super(adobeStorageResourceCollection, adobeStorageResourceCollection2);
    }

    public AdobeAssetLibraryInternal(AdobeDCXManifest adobeDCXManifest) {
        setManifest(adobeDCXManifest);
        setName(adobeDCXManifest.getName());
        setGUID(adobeDCXManifest.getCompositeId());
        setHref(adobeDCXManifest.getCompositeHref());
        setEtag(adobeDCXManifest.getEtag());
    }

    public void loadMetadataForLibrary() {
        super.loadLibraryMetadata();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public AdobeAssetLibraryItem getItemFromId(String str, String str2) {
        byte b2 = -1;
        switch (str2.hashCode()) {
            case -1988296473:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DMaterialElementType)) {
                    b2 = 9;
                }
                break;
            case -1484987521:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType)) {
                    b2 = 1;
                }
                break;
            case -1323798689:
                if (str2.equals("application/vnd.adobe.element.look+dcx")) {
                    b2 = 6;
                }
                break;
            case -848656710:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryTemplateElementType)) {
                    b2 = 8;
                }
                break;
            case -523642159:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DModelElementType)) {
                    b2 = Ascii.VT;
                }
                break;
            case -49110665:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType)) {
                    b2 = 0;
                }
                break;
            case -15971864:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType)) {
                    b2 = 4;
                }
                break;
            case 30270912:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryLayerStyleElementType)) {
                    b2 = 5;
                }
                break;
            case 511986694:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType)) {
                    b2 = 2;
                }
                break;
            case 758810582:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType)) {
                    b2 = 3;
                }
                break;
            case 1514723250:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DLightElementType)) {
                    b2 = 10;
                }
                break;
            case 1658750380:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryPatternElementType)) {
                    b2 = 7;
                }
                break;
            case 1719943200:
                if (str2.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType)) {
                    b2 = Ascii.FF;
                }
                break;
        }
        switch (b2) {
            case 0:
                if (getImages() != null && getImages().containsKey(str)) {
                    break;
                }
                break;
            case 1:
                if (getColors() != null && getColors().containsKey(str)) {
                    break;
                }
                break;
            case 2:
                if (getColorThemes() != null && getColorThemes().containsKey(str)) {
                    break;
                }
                break;
            case 3:
                if (getBrushes() != null && getBrushes().containsKey(str)) {
                    break;
                }
                break;
            case 4:
                if (getCharacterStyles() != null && getCharacterStyles().containsKey(str)) {
                    break;
                }
                break;
            case 5:
                if (getLayoutStyles() != null && getLayoutStyles().containsKey(str)) {
                    break;
                }
                break;
            case 6:
                if (getLooks() != null && getLooks().containsKey(str)) {
                    break;
                }
                break;
            case 7:
                if (getPatterns() != null && getPatterns().containsKey(str)) {
                    break;
                }
                break;
            case 8:
                if (getTemplates() != null && getTemplates().containsKey(str)) {
                    break;
                }
                break;
            case 9:
                if (get3DMaterials() != null && get3DMaterials().containsKey(str)) {
                    break;
                }
                break;
            case 10:
                if (get3DLight() != null && get3DLight().containsKey(str)) {
                    break;
                }
                break;
            case 11:
                if (get3DModels() != null && get3DModels().containsKey(str)) {
                    break;
                }
                break;
            case 12:
                if (getAnimations() != null && getAnimations().containsKey(str)) {
                    break;
                }
                break;
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public void setCloud(AdobeCloud adobeCloud) {
        super.setCloud(adobeCloud);
    }
}
