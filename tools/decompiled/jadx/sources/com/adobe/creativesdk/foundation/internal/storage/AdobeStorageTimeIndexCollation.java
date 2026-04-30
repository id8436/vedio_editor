package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.utils.AdobeLocalizedMgr;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.xmp.XMPConst;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public class AdobeStorageTimeIndexCollation extends AdobeStorageSortIndexCollation {
    private ArrayList<String> sectionIndexTitlesArray;
    private ArrayList<String> sectionTitlesArray;

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeStorageSortIndexCollation
    public boolean createSectionDataFromMaster(ArrayList<AdobeAsset> arrayList) {
        this.sectionIndexTitlesArray = new ArrayList<>();
        this.sectionTitlesArray = new ArrayList<>();
        this.sectionDataArray = new ArrayList<>();
        ArrayList<AdobeStorageItemSectionData> arrayList2 = new ArrayList<>();
        if (arrayList == null) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            AdobeAsset adobeAsset = arrayList.get(i);
            AdobeStorageItemSectionData adobeStorageItemSectionData = new AdobeStorageItemSectionData();
            adobeStorageItemSectionData.originalIndex = i;
            adobeStorageItemSectionData.item = adobeAsset;
            adobeStorageItemSectionData.name = adobeAsset.getName();
            adobeStorageItemSectionData.modificationDate = adobeAsset.getModificationDate();
            if (adobeAsset.getModificationDate() == null) {
                adobeStorageItemSectionData.modificationDate = adobeAsset.getCreationDate();
            }
            arrayList2.add(adobeStorageItemSectionData);
        }
        createSectionTitlesAndAssignSectionsToData(arrayList2);
        int size = sectionTitles().size();
        ArrayList arrayList3 = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList3.add(new ArrayList());
        }
        for (AdobeStorageItemSectionData adobeStorageItemSectionData2 : arrayList2) {
            ((ArrayList) arrayList3.get(adobeStorageItemSectionData2.sectionNumber)).add(adobeStorageItemSectionData2);
        }
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            this.sectionDataArray.add((ArrayList) it.next());
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createSectionTitlesAndAssignSectionsToData(java.util.ArrayList<com.adobe.creativesdk.foundation.internal.storage.AdobeStorageItemSectionData> r28) {
        /*
            Method dump skipped, instruction units count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.AdobeStorageTimeIndexCollation.createSectionTitlesAndAssignSectionsToData(java.util.ArrayList):void");
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeStorageSortIndexCollation
    public String titleForHeaderInSection(int i) {
        if (numberOfSections() <= 0) {
            return null;
        }
        if (i == sectionTitles().size()) {
            return AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_IDS_CAPTION_COLLATION_FOLDERS_HEADER);
        }
        return sectionTitles().get(i);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeStorageSortIndexCollation
    public ArrayList<String> sectionIndexTitles() {
        ArrayList<String> arrayList = new ArrayList<>(this.sectionIndexTitlesArray);
        arrayList.add(XMPConst.ARRAY_ITEM_NAME);
        return arrayList;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeStorageSortIndexCollation
    public ArrayList<String> sectionTitles() {
        return this.sectionTitlesArray;
    }

    private long calcDifferenceInDaysFromToday(Date date, Calendar calendar) {
        Date time = calendar.getTime();
        return (time.getTime() - date.getTime()) / DateUtils.MILLIS_PER_DAY;
    }

    private String ConvertDateToFormat(String str, Date date) {
        return new SimpleDateFormat(str).format(date);
    }
}
