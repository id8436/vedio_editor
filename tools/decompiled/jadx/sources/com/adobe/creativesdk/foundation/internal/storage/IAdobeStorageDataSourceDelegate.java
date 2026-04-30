package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeListIndexPath;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeListSectionsIndexSet;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeStorageDataSourceDelegate {
    void didClearFilterString();

    void didFailToLoadMoreDataWithError(AdobeAssetException adobeAssetException);

    void didFilterResults();

    void didLoadMoreDataWithCount(int i, AdobeListSectionsIndexSet adobeListSectionsIndexSet, ArrayList<AdobeListIndexPath> arrayList);

    void didSortByType(AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType adobeUXAssetBrowserSortType, AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState adobeUXAssetBrowserSortState);

    void didStartLoadingMorePagesToFilter();

    void didStopLoadingMorePagesToFilter();

    void startedLoadingMoreFolders();

    void stoppedLoadingMoreFolders();

    void willExecuteSearchWithString(String str);

    void willLoadDataFromScratch();

    void willLoadNextPageForExistingCollection();

    void willLoadNextPageForNonExistingCollection();
}
