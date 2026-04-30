package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.os.Bundle;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDesignLibraryItemFilter;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDesignLibraryItemFilterType;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDesignLibraryCollectionConfiguration extends AdobeAssetsViewContainerConfiguration {
    public static final String DESIGNLIBRARYITEMS_FILTER_KEY = "design_library_items_key";
    public static final String DESIGNLIBRARYITEMS_FILTER_TYPE_KEY = "design_library_items_filtertype";
    public static final String TARGET_LIBRARY_COMPOSITE_ID = "designLibraryID";
    private AdobeAssetDesignLibraryItemFilter designLibraryItemFilter;
    private String targetLibraryCompositeID;

    public String getTargetLibraryCompositeID() {
        return this.targetLibraryCompositeID;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetsViewContainerConfiguration
    public void createFromBundle(Bundle bundle) {
        super.createFromBundle(bundle);
        this.targetLibraryCompositeID = (String) bundle.get(TARGET_LIBRARY_COMPOSITE_ID);
        this.designLibraryItemFilter = AdobeAssetDesignLibraryItemFilter.createFromDesignLibraryItems((EnumSet) bundle.getSerializable(DESIGNLIBRARYITEMS_FILTER_KEY), (AdobeAssetDesignLibraryItemFilterType) bundle.getSerializable(DESIGNLIBRARYITEMS_FILTER_TYPE_KEY));
    }

    AdobeAssetDesignLibraryItemFilter getDesignLibraryItemFilter() {
        return this.designLibraryItemFilter;
    }

    public String getTargetLibraryCompositeId() {
        return this.targetLibraryCompositeID;
    }
}
