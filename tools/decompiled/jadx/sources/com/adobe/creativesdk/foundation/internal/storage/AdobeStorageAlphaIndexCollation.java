package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AdobeStorageAlphaIndexCollation extends AdobeStorageSortIndexCollation {
    ArrayList<String> indexTitles;

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeStorageSortIndexCollation
    public boolean createSectionDataFromMaster(ArrayList<AdobeAsset> arrayList) {
        this.sectionDataArray = new ArrayList<>();
        this.indexTitles = new ArrayList<>();
        if (arrayList == null) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            AdobeAsset adobeAsset = arrayList.get(i);
            AdobeStorageItemSectionData adobeStorageItemSectionData = new AdobeStorageItemSectionData();
            adobeStorageItemSectionData.item = adobeAsset;
            adobeStorageItemSectionData.name = adobeAsset.getName();
            adobeStorageItemSectionData.originalIndex = i;
            String str = "" + Character.toUpperCase(adobeAsset.getName().charAt(0));
            ArrayList<AdobeStorageItemSectionData> arrayList2 = new ArrayList<>();
            if (!this.indexTitles.contains(str)) {
                adobeStorageItemSectionData.sectionNumber = this.sectionDataArray.size();
                arrayList2.add(adobeStorageItemSectionData);
                this.sectionDataArray.add(arrayList2);
                this.indexTitles.add(str);
            } else {
                int iIndexOf = this.indexTitles.indexOf(str);
                ArrayList<AdobeStorageItemSectionData> arrayList3 = this.sectionDataArray.get(iIndexOf);
                adobeStorageItemSectionData.sectionNumber = arrayList3.size();
                arrayList3.add(adobeStorageItemSectionData);
                this.sectionDataArray.set(iIndexOf, arrayList3);
            }
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeStorageSortIndexCollation
    public String titleForHeaderInSection(int i) {
        if (i < this.indexTitles.size()) {
            return this.indexTitles.get(i);
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeStorageSortIndexCollation
    public ArrayList<String> sectionTitles() {
        return this.indexTitles;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeStorageSortIndexCollation
    public ArrayList<String> sectionIndexTitles() {
        return this.indexTitles;
    }
}
