package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeSelectionDrawAsset extends AdobeSelection {
    AdobeAssetDrawFile selectedItem;
    int selectedPageIndex;

    public int getSelectedPageIndex() {
        return this.selectedPageIndex;
    }

    public AdobeAssetDrawFile getSelectedItem() {
        return this.selectedItem;
    }

    public AdobeSelectionDrawAsset(AdobeAssetDrawFile adobeAssetDrawFile, int i) {
        this.selectedItem = adobeAssetDrawFile;
        this.selectedPageIndex = i;
    }
}
