package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.storage.AdobeAssetLibrary;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionLibraryAsset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AdobeSelectionLibraryAssetInternal extends AdobeSelectionLibraryAsset {
    public AdobeSelectionLibraryAssetInternal(AdobeAssetLibrary adobeAssetLibrary) {
        super(adobeAssetLibrary);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeSelectionLibraryAsset
    public void setSelectedColorIDs(ArrayList<String> arrayList) {
        this.selectedColorIDs = arrayList;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeSelectionLibraryAsset
    public void setSelectedColorThemeIDs(ArrayList<String> arrayList) {
        this.selectedColorThemeIDs = arrayList;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeSelectionLibraryAsset
    public void setSelectedImageIDs(ArrayList<String> arrayList) {
        this.selectedImageIDs = arrayList;
    }

    public void setSelectedPatternIDs(ArrayList<String> arrayList) {
        this.selectedPatternIDs = arrayList;
    }
}
