package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibrary;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionLibraryAsset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AdobeStorageLibrarySelectionState {
    private static boolean _sIsSelectModeActive;
    private static AdobeAssetLibrary _selectLibrary;
    private static AdobeLibraryComposite _selectLibraryComposite;
    private static AdobeLibraryElement _selectLibraryElement;
    private static AdobeAssetLibraryItem _selectLibraryItem;

    public static boolean isSelectModeActive() {
        return _sIsSelectModeActive;
    }

    public static void setSelectModeActive(boolean z) {
        _sIsSelectModeActive = z;
    }

    public static void selectLibraryItem(AdobeAssetLibraryItem adobeAssetLibraryItem, AdobeAssetLibrary adobeAssetLibrary) {
        _selectLibraryItem = adobeAssetLibraryItem;
        _selectLibrary = adobeAssetLibrary;
    }

    public static void selectLibrary(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        _selectLibraryElement = adobeLibraryElement;
        _selectLibraryComposite = adobeLibraryComposite;
    }

    public static void resetSelection() {
        _selectLibraryItem = null;
        _selectLibraryElement = null;
    }

    public static boolean hasSelection() {
        return (_selectLibraryElement == null || _selectLibraryComposite == null) ? false : true;
    }

    public static AdobeAssetLibraryItem getSelectedLibraryItem() {
        return _selectLibraryItem;
    }

    public static AdobeLibraryElement getSelectedLibraryElement() {
        return _selectLibraryElement;
    }

    public static AdobeAssetLibrary getSelectedLibrary() {
        return _selectLibrary;
    }

    public static boolean isLibraryItemSame(String str) {
        if (_selectLibraryElement == null || str == null) {
            return false;
        }
        return str.equalsIgnoreCase(_selectLibraryElement.getElementId());
    }

    public static AdobeSelectionLibraryAsset creationSelectionLibraryFromCurrentSelection() {
        return creationSelectionLibrary(_selectLibraryElement, _selectLibraryComposite);
    }

    private static AdobeSelectionLibraryAsset creationSelectionLibrary(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        if (adobeLibraryElement == null || adobeLibraryComposite == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(adobeLibraryElement.getElementId());
        if (adobeLibraryComposite.isPublic()) {
            return new AdobeSelectionLibraryAsset(adobeLibraryComposite, arrayList, null);
        }
        return new AdobeSelectionLibraryAsset(adobeLibraryComposite, arrayList, AdobeLibraryUtils.getAssetLibraryItemObject(adobeLibraryElement, adobeLibraryComposite).getLibrary());
    }
}
