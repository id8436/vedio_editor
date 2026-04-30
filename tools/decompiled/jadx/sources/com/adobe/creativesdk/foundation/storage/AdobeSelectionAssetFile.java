package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeSelectionAssetFile extends AdobeSelectionAsset {
    protected AdobeSelectionAssetFile(AdobeAssetFile adobeAssetFile) {
        this.selectedItem = adobeAssetFile;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeSelectionAsset
    public AdobeAssetFile getSelectedItem() {
        return (AdobeAssetFile) this.selectedItem;
    }
}
