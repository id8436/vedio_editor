package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewEditSelectedAssetsController {
    private static AdobeAssetViewEditSelectedAssetsController _editController;
    private ArrayList<AdobeAsset> _targetAssets;

    private AdobeAssetViewEditSelectedAssetsController() {
    }

    public static AdobeAssetViewEditSelectedAssetsController sharedController() {
        if (_editController == null) {
            _editController = new AdobeAssetViewEditSelectedAssetsController();
        }
        return _editController;
    }

    public void setTargetAssets(ArrayList<AdobeAsset> arrayList) {
        this._targetAssets = arrayList;
    }

    public void setTargetAssets(AdobeAsset adobeAsset) {
        this._targetAssets = new ArrayList<>();
        this._targetAssets.add(adobeAsset);
    }

    public ArrayList<AdobeAsset> getTargetAssets() {
        return this._targetAssets;
    }

    public static void clearSelection() {
        _editController = null;
    }
}
