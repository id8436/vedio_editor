package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeSelectionCompFile extends AdobeSelection {
    AdobeAssetCompFile selectedItem;
    int selectedPageIndex;

    public int getSelectedPageIndex() {
        return this.selectedPageIndex;
    }

    public AdobeAssetCompFile getSelectedItem() {
        return this.selectedItem;
    }

    public AdobeSelectionCompFile(AdobeAssetCompFile adobeAssetCompFile, int i) {
        this.selectedItem = adobeAssetCompFile;
        this.selectedPageIndex = i;
    }
}
