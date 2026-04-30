package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeSelectionPSFixFile extends AdobeSelection {
    AdobeAssetPSFixFile selectedItem;
    int selectedPageIndex;

    public int getSelectedPageIndex() {
        return this.selectedPageIndex;
    }

    public AdobeAssetPSFixFile getSelectedItem() {
        return this.selectedItem;
    }

    public AdobeSelectionPSFixFile(AdobeAssetPSFixFile adobeAssetPSFixFile, int i) {
        this.selectedItem = adobeAssetPSFixFile;
        this.selectedPageIndex = i;
    }
}
