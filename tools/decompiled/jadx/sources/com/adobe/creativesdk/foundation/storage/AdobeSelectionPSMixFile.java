package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeSelectionPSMixFile extends AdobeSelection {
    AdobeAssetPSMixFile selectedItem;
    int selectedPageIndex;

    public int getSelectedPageIndex() {
        return this.selectedPageIndex;
    }

    public AdobeAssetPSMixFile getSelectedItem() {
        return this.selectedItem;
    }

    public AdobeSelectionPSMixFile(AdobeAssetPSMixFile adobeAssetPSMixFile, int i) {
        this.selectedItem = adobeAssetPSMixFile;
        this.selectedPageIndex = i;
    }
}
