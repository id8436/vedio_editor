package com.adobe.creativesdk.foundation.storage;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeSelectionSketchAsset extends AdobeSelection {
    AdobeAssetSketchbook selectedItem;
    int selectedPageIndex;

    public int getSelectedPageIndex() {
        return this.selectedPageIndex;
    }

    public AdobeAssetSketchbook getSelectedItem() {
        return this.selectedItem;
    }

    public AdobeSelectionSketchAsset(AdobeAssetSketchbook adobeAssetSketchbook, int i) {
        this.selectedItem = adobeAssetSketchbook;
        this.selectedPageIndex = i;
    }
}
