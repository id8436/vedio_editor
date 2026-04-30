package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeStorageSortProtocol {
    AdobeStorageSortIndexCollation getAdobeStorageSortIndexCollation();

    void sortCollectionByType(AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType adobeUXAssetBrowserSortType, AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState adobeUXAssetBrowserSortState);
}
