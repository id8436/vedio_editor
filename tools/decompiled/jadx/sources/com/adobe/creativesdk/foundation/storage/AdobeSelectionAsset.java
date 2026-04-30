package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeSelectionAsset extends AdobeSelection {
    protected AdobeAsset selectedItem;

    public AdobeAsset getSelectedItem() {
        return this.selectedItem;
    }

    protected void setSelectedItem(AdobeAsset adobeAsset) {
        this.selectedItem = adobeAsset;
    }

    protected AdobeSelectionAsset(AdobeAsset adobeAsset) {
        this.selectedItem = adobeAsset;
    }

    protected AdobeSelectionAsset() {
    }
}
