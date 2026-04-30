package com.adobe.creativesdk.foundation.storage;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetDesignLibraryItemFilter {
    private EnumSet<AdobeAssetDesignLibraryItemType> designLibraryItemTypes;
    private AdobeAssetDesignLibraryItemFilterType filterType;

    public static AdobeAssetDesignLibraryItemFilter createFromDesignLibraryItems(EnumSet<AdobeAssetDesignLibraryItemType> enumSet, AdobeAssetDesignLibraryItemFilterType adobeAssetDesignLibraryItemFilterType) {
        AdobeAssetDesignLibraryItemFilter adobeAssetDesignLibraryItemFilter = new AdobeAssetDesignLibraryItemFilter();
        adobeAssetDesignLibraryItemFilter.designLibraryItemTypes = enumSet;
        adobeAssetDesignLibraryItemFilter.filterType = adobeAssetDesignLibraryItemFilterType;
        return adobeAssetDesignLibraryItemFilter;
    }

    public boolean isInclusive() {
        return this.filterType == AdobeAssetDesignLibraryItemFilterType.ADOBE_ASSET_DESIGNLIBRARYITEM_FILTER_INCLUSION;
    }

    public EnumSet<AdobeAssetDesignLibraryItemType> getDesignLibraryItems() {
        return this.designLibraryItemTypes;
    }

    public AdobeAssetDesignLibraryItemFilterType getFilterType() {
        return this.filterType;
    }

    public EnumSet<AdobeAssetDesignLibraryItemType> getInclusiveDesignLibraryItems() {
        if (isInclusive()) {
            return this.designLibraryItemTypes;
        }
        EnumSet<AdobeAssetDesignLibraryItemType> enumSetAllOf = EnumSet.allOf(AdobeAssetDesignLibraryItemType.class);
        if (this.designLibraryItemTypes == null || this.designLibraryItemTypes.size() == 0) {
            return enumSetAllOf;
        }
        Iterator it = this.designLibraryItemTypes.iterator();
        while (it.hasNext()) {
            enumSetAllOf.remove((AdobeAssetDesignLibraryItemType) it.next());
        }
        return enumSetAllOf;
    }
}
