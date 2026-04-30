package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeSelectionPhotoAsset extends AdobeSelection {
    protected AdobePhotoAsset selectedItem;

    public AdobePhotoAsset getSelectedItem() {
        return this.selectedItem;
    }

    protected void setSelectedItem(AdobePhotoAsset adobePhotoAsset) {
        this.selectedItem = adobePhotoAsset;
    }

    protected AdobeSelectionPhotoAsset(AdobePhotoAsset adobePhotoAsset) {
        this.selectedItem = adobePhotoAsset;
    }
}
