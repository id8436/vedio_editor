package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.internal.common.AdobeCommonLearnedSettings;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdobeStorageSortIndexCollation {
    public AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState currentSortState = AdobeCommonLearnedSettings.lastSortState();
    public ArrayList<ArrayList<AdobeStorageItemSectionData>> sectionDataArray = new ArrayList<>();

    public abstract boolean createSectionDataFromMaster(ArrayList<AdobeAsset> arrayList);

    public abstract ArrayList<String> sectionIndexTitles();

    public abstract ArrayList<String> sectionTitles();

    public abstract String titleForHeaderInSection(int i);

    protected AdobeStorageSortIndexCollation() {
    }

    public int numberOfSections() {
        return this.sectionDataArray.size();
    }

    public ArrayList<AdobeAsset> flattenedItems() {
        ArrayList<AdobeAsset> arrayList = new ArrayList<>();
        for (int i = 0; i < this.sectionDataArray.size(); i++) {
            ArrayList<AdobeStorageItemSectionData> arrayList2 = this.sectionDataArray.get(i);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                arrayList.add(arrayList2.get(i2).item);
            }
        }
        return arrayList;
    }

    public ArrayList<AdobeAsset> getFlattenedAssetsItemsList() {
        ArrayList<AdobeAsset> arrayList = new ArrayList<>();
        for (int i = 0; i < this.sectionDataArray.size(); i++) {
            ArrayList<AdobeStorageItemSectionData> arrayList2 = this.sectionDataArray.get(i);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                arrayList.add(arrayList2.get(i2).item);
            }
        }
        return arrayList;
    }

    public int getPositionForSection(int i) {
        int size = 0;
        for (int i2 = 0; i2 < this.sectionDataArray.size() && i2 < i; i2++) {
            size += this.sectionDataArray.get(i2).size();
        }
        return size;
    }

    public int getSectionForPosition(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.sectionDataArray.size(); i3++) {
            int size = this.sectionDataArray.get(i3).size();
            if (i < i2 || i >= i2 + size) {
                i2 += size;
            } else {
                return i3;
            }
        }
        return -1;
    }

    public boolean checkIfLastInSection(int i) {
        int size = 0;
        for (int i2 = 0; i2 < this.sectionDataArray.size(); i2++) {
            size += this.sectionDataArray.get(i2).size();
            if (i == size - 1) {
                return true;
            }
            if (i < size - 1) {
                return false;
            }
        }
        return false;
    }
}
