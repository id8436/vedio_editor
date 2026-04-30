package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.storage.AdobeAssetCompFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDrawFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPSFixFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPSMixFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.AdobeAssetSketchbook;
import com.adobe.creativesdk.foundation.storage.AdobeSelection;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionCompFile;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionDrawAsset;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionPSFixFile;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionPSMixFile;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionSketchAsset;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetMobileCreationSelectionState {
    private static boolean _sIsSelectModeActive;
    private static AdobeAssetPackagePages _selectPackage;
    private static AdobeAssetFile _selectPackageItem;

    public static boolean isSelectModeActive() {
        return _sIsSelectModeActive;
    }

    public static void setSelectModeActive(boolean z) {
        _sIsSelectModeActive = z;
    }

    public static void selectPackageItem(AdobeAssetPackagePages adobeAssetPackagePages, AdobeAssetFile adobeAssetFile) {
        _selectPackageItem = adobeAssetFile;
        _selectPackage = adobeAssetPackagePages;
    }

    public static void resetSelection() {
        _selectPackageItem = null;
    }

    public static boolean hasSelection() {
        return (_selectPackageItem == null || _selectPackage == null) ? false : true;
    }

    public static AdobeAssetFile getSelectedPackageItem() {
        return _selectPackageItem;
    }

    public static AdobeAssetPackagePages getSelectedPackage() {
        return _selectPackage;
    }

    public static boolean isPackageItemSame(String str) {
        if (_selectPackageItem == null || str == null) {
            return false;
        }
        return str.equalsIgnoreCase(_selectPackageItem.getGUID());
    }

    public static AdobeSelection creationSelectionPackageFromCurrentSelection() {
        return creationSelectionPackage(_selectPackageItem, _selectPackage);
    }

    private static AdobeSelection creationSelectionPackage(AdobeAssetFile adobeAssetFile, AdobeAssetPackagePages adobeAssetPackagePages) {
        if (adobeAssetPackagePages == null || adobeAssetFile == null) {
            return null;
        }
        AdobeSelection adobeSelectionSketchAsset = adobeAssetPackagePages instanceof AdobeAssetSketchbook ? new AdobeSelectionSketchAsset((AdobeAssetSketchbook) adobeAssetPackagePages, adobeAssetPackagePages.getPages().indexOf(adobeAssetFile)) : null;
        if (adobeAssetPackagePages instanceof AdobeAssetDrawFile) {
            adobeSelectionSketchAsset = new AdobeSelectionDrawAsset((AdobeAssetDrawFile) adobeAssetPackagePages, adobeAssetPackagePages.getPages().indexOf(adobeAssetFile));
        }
        if (adobeAssetPackagePages instanceof AdobeAssetPSMixFile) {
            adobeSelectionSketchAsset = new AdobeSelectionPSMixFile((AdobeAssetPSMixFile) adobeAssetPackagePages, adobeAssetPackagePages.getPages().indexOf(adobeAssetFile));
        }
        if (adobeAssetPackagePages instanceof AdobeAssetCompFile) {
            adobeSelectionSketchAsset = new AdobeSelectionCompFile((AdobeAssetCompFile) adobeAssetPackagePages, adobeAssetPackagePages.getPages().indexOf(adobeAssetFile));
        }
        if (adobeAssetPackagePages instanceof AdobeAssetPSFixFile) {
            return new AdobeSelectionPSFixFile((AdobeAssetPSFixFile) adobeAssetPackagePages, adobeAssetPackagePages.getPages().indexOf(adobeAssetFile));
        }
        return adobeSelectionSketchAsset;
    }
}
