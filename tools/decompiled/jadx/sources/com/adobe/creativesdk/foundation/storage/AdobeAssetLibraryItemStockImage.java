package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AdobeAssetLibraryItemStockImage extends AdobeAssetLibraryItemImage {
    private static final String AdobeAssetLibraryItemStockImageContentIDKey = "content_id";
    private static final String AdobeAssetLibraryItemStockImageExternalLinkKey = "library#linkurl";
    private static final String AdobeAssetLibraryItemStockImageExternalLinkTypeKey = "library#linktype";
    private static final String AdobeAssetLibraryItemStockImageNotPurchased = "not_purchased";
    private static final String AdobeAssetLibraryItemStockImagePurchaseStateKey = "state";
    private static final String AdobeAssetLibraryItemStockImagePurchased = "purchased";
    private static final String AdobeAssetLibraryItemStockImageStockIDKey = "stock_id";
    private static final String AdobeAssetLibraryItemStockImageTrackingDataKey = "adobestock#trackingdata";
    private String _assetURL;
    private boolean _bLicensed;
    private String _mediaType;
    private String _unlicensedURL;

    protected AdobeAssetLibraryItemStockImage(AdobeDCXManifestNode adobeDCXManifestNode, String str, AdobeAssetFile adobeAssetFile, int i, int i2, AdobeAssetFile adobeAssetFile2, int i3, int i4, String str2, AdobeAssetLibrary adobeAssetLibrary) {
        super(adobeDCXManifestNode, str, adobeAssetFile, i, i2, adobeAssetFile2, i3, i4, str2, adobeAssetLibrary);
        initWithNode(adobeDCXManifestNode);
    }

    private void initWithNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        AdobeDCXManifestNode adobeDCXManifestNode2;
        AdobeDCXManifestNode adobeDCXManifestNode3 = null;
        AdobeDCXManifestNode adobeDCXManifestNode4 = null;
        for (AdobeDCXManifestNode adobeDCXManifestNode5 : adobeDCXManifestNode.getManifest().getChildrenOf(adobeDCXManifestNode)) {
            if (adobeDCXManifestNode5.getType().equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType)) {
                String strOptString = ((JSONObject) adobeDCXManifestNode5.get(AdobeAssetLibraryItemStockImageTrackingDataKey)).optString("state");
                if (strOptString != null && strOptString.equals(AdobeAssetLibraryItemStockImagePurchased)) {
                    this._bLicensed = true;
                    adobeDCXManifestNode2 = adobeDCXManifestNode5;
                    adobeDCXManifestNode5 = adobeDCXManifestNode3;
                } else if (strOptString != null && strOptString.equals(AdobeAssetLibraryItemStockImageNotPurchased)) {
                    this._unlicensedURL = (String) adobeDCXManifestNode5.get("library#linkurl");
                    adobeDCXManifestNode2 = adobeDCXManifestNode4;
                } else {
                    AdobeLogger.log(Level.ERROR, "AdobeAssetLibraryItemStockImage", String.format("Invalid purchase_state for stock asset: %s", strOptString));
                    adobeDCXManifestNode5 = adobeDCXManifestNode3;
                    adobeDCXManifestNode2 = adobeDCXManifestNode4;
                }
                adobeDCXManifestNode3 = adobeDCXManifestNode5;
                adobeDCXManifestNode4 = adobeDCXManifestNode2;
            }
        }
        if (adobeDCXManifestNode4 == null) {
            adobeDCXManifestNode4 = adobeDCXManifestNode3;
        }
        this._mediaType = (String) adobeDCXManifestNode4.get("library#linktype");
        String str = (String) adobeDCXManifestNode4.get("library#linkurl");
        if (str != null) {
            this._assetURL = str;
        } else {
            AdobeLogger.log(Level.ERROR, "AdobeAssetLibraryItemStockImage", String.format("Could not find external link for child: %s", adobeDCXManifestNode4));
        }
    }

    public boolean isLicensed() {
        return this._bLicensed;
    }

    public String getAssetURL() {
        return this._assetURL;
    }

    public String getUnlicensedURL() {
        return this._unlicensedURL;
    }

    public String getMediaType() {
        return this._mediaType;
    }
}
