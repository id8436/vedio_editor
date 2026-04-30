package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Intent;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMobileCreationSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageLibrarySelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStoragePhotoAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileInfo;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetViewBrowserSelectFilesHelper {
    public static final String ASSETBROWSER_ASSETS_SELECTION_LIST = "ADOBE_ASSETBROWSER_ASSETFILE_SELECTION_LIST";
    public static final String ASSETBROWSER_LIBRARY_SELECTION_LIST = "ADOBE_ASSETBROWSER_LIBRARY_SELECTION_LIST";
    public static final String ASSETBROWSER_MOBILE_PACKAGE_SELECTION_ITEM = "ASSETBROWSER_MOBILE_PACKAGE_SELECTION_ITEM";
    public static final String ASSETBROWSER_PHOTOS_SELECTION_LIST = "ADOBE_ASSETBROWSER_PHOTOASSET_SELECTION_LIST";

    public static Intent getCurrentSelectedFilesAsIntentResultData() {
        ArrayList<AdobeAsset> arrayListSelectedAssets = AdobeStorageAssetSelectionState.selectedAssets();
        ArrayList arrayList = new ArrayList();
        if (arrayListSelectedAssets != null && arrayListSelectedAssets.size() > 0) {
            Iterator<AdobeAsset> it = arrayListSelectedAssets.iterator();
            while (it.hasNext()) {
                arrayList.add(new AdobeStorageAssetFileInfo((AdobeAssetFile) it.next()));
            }
        }
        AdobeStorageAssetSelectionState.resetSelectedAssets();
        AdobeStoragePhotoAssetSelectionState.resetSelectedAssets();
        Intent intent = new Intent();
        intent.putExtra(ASSETBROWSER_ASSETS_SELECTION_LIST, arrayList);
        if (AdobeStorageLibrarySelectionState.hasSelection()) {
            intent.putExtra(ASSETBROWSER_LIBRARY_SELECTION_LIST, AdobeStorageLibrarySelectionState.getSelectedLibraryElement().getElementId());
        }
        if (AdobeAssetMobileCreationSelectionState.hasSelection()) {
            intent.putExtra(ASSETBROWSER_MOBILE_PACKAGE_SELECTION_ITEM, AdobeAssetMobileCreationSelectionState.getSelectedPackageItem().getGUID());
        }
        return intent;
    }

    public static Intent getCurrentSelectedPhotosAsIntentResultData() {
        AdobeStorageAssetSelectionState.resetSelectedAssets();
        Intent intent = new Intent();
        ArrayList<AdobePhotoAsset> arrayListSelectedAssets = AdobeStoragePhotoAssetSelectionState.selectedAssets();
        ArrayList arrayList = new ArrayList();
        if (arrayListSelectedAssets != null && arrayListSelectedAssets.size() > 0) {
            Iterator<AdobePhotoAsset> it = arrayListSelectedAssets.iterator();
            while (it.hasNext()) {
                arrayList.add(new AdobeStorageAssetFileInfo(it.next()));
            }
        }
        AdobeStoragePhotoAssetSelectionState.resetSelectedAssets();
        AdobeStorageAssetSelectionState.resetSelectedAssets();
        intent.putExtra(ASSETBROWSER_PHOTOS_SELECTION_LIST, arrayList);
        return intent;
    }
}
