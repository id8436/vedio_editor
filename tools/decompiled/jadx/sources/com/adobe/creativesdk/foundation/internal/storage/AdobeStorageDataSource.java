package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.internal.common.AdobeCommonLearnedSettings;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeListIndexPath;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeListSectionsIndexSet;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderBy;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderDirection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.adobe.creativesdk.foundation.storage.IAdobeAssetFolderNextPageCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AdobeStorageDataSource implements IAdobeAssetDataSource, IAdobeStorageSearchProtocol, IAdobeStorageSortProtocol {
    private static final String AdobeStorageDataSourceDidLoadNewPageNotification = "kAdobeStorageDataSourceDidLoadNewPageNotification";
    private static int kItemsPerPageLimit = 20;
    private WeakReference<IAdobeStorageDataSourceDelegate> _delegate;
    private DataSourceInternalFilters _internalFilters;
    private AdobeAssetFolder _targetCollection;
    boolean abortLoadingMorePages;
    boolean abortLoadingMorePagesWhileFiltering;
    ArrayList<AdobeAsset> displayAssets;
    EnumSet<AdobeAssetMimeTypes> filter;
    boolean filterInclusive;
    String filterString;
    ArrayList<AdobeAsset> filteredDisplayAssets;
    ArrayList<AdobeAsset> items;
    boolean loadingItems;
    boolean loadingItemsWhileFiltering;
    boolean recreateFilteredAssets;
    public AdobeStorageSortIndexCollation sortIndexCollator;
    AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType sortType;
    private boolean _loadingItemsFromScratch = false;
    private int _totalAssetsLoaded = 0;
    private int _pageLimit = 0;

    public enum DataSourceInternalFilters {
        FilterOnlyFolders,
        FilterOnlyFiles
    }

    boolean shouldRecreateFilteredAssets() {
        return this.recreateFilteredAssets;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public int getCount() {
        return count();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public boolean loadItemsFromScratch() {
        return loadItemsFromScratch(true);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void loadNextPageOfData() {
        loadItemsFromScratch(false);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void resetDelegate() {
        setAdobeStorageDataSourceDelegate(null);
    }

    public AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType getSortType() {
        return this.sortType;
    }

    protected void setPageLimit(int i) {
        this._pageLimit = i;
    }

    public void setAdobeStorageDataSourceDelegate(IAdobeStorageDataSourceDelegate iAdobeStorageDataSourceDelegate) {
        this._delegate = iAdobeStorageDataSourceDelegate != null ? new WeakReference<>(iAdobeStorageDataSourceDelegate) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IAdobeStorageDataSourceDelegate getDelegate() {
        if (this._delegate != null) {
            return this._delegate.get();
        }
        return null;
    }

    public void setDataInternalFilters(DataSourceInternalFilters dataSourceInternalFilters) {
        this._internalFilters = dataSourceInternalFilters;
    }

    public DataSourceInternalFilters getDataInternalFilters() {
        return this._internalFilters;
    }

    public boolean isFilterInclusive() {
        return this.filterInclusive;
    }

    public void setFilter(EnumSet<AdobeAssetMimeTypes> enumSet) {
        this.filter = enumSet;
    }

    public void setInclusiveFilter(boolean z) {
        this.filterInclusive = z;
    }

    public void setTargetCollection(AdobeAssetFolder adobeAssetFolder) {
        this._targetCollection = adobeAssetFolder;
    }

    public AdobeStorageDataSource() {
        createFreshSortIndexCollator();
    }

    boolean shouldFilterOutAsset(AdobeAssetFile adobeAssetFile) {
        return AdobeStorageUtils.shouldFilterAssetMimeType(this.filter, adobeAssetFile.getType(), this.filterInclusive);
    }

    public void setAbortLoadingMorePages(boolean z) {
        this.abortLoadingMorePages = z;
    }

    public ArrayList<AdobeAsset> assetsToDisplay() {
        return this.displayAssets;
    }

    public ArrayList<AdobeAsset> purifiedAssetsToDisplay() {
        if (this.displayAssets == null) {
            return null;
        }
        setDataInternalFilters(DataSourceInternalFilters.FilterOnlyFiles);
        ArrayList<AdobeAsset> arrayListRunInternalFilters = RunInternalFilters(this.displayAssets);
        setDataInternalFilters(null);
        if (this.filter == null) {
            return arrayListRunInternalFilters;
        }
        ArrayList<AdobeAsset> arrayList = new ArrayList<>();
        Iterator<AdobeAsset> it = arrayListRunInternalFilters.iterator();
        while (it.hasNext()) {
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) it.next();
            if (!shouldFilterOutAsset(adobeAssetFile)) {
                arrayList.add(adobeAssetFile);
            }
        }
        return arrayList;
    }

    public int count() {
        if (this.displayAssets != null) {
            return this.displayAssets.size();
        }
        return 0;
    }

    public void loadItems() {
        loadItemsFromScratch(false);
    }

    public boolean loadItemsFromScratch(boolean z) {
        AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection;
        AdobeAssetFolderOrderBy adobeAssetFolderOrderBy;
        if (this.loadingItems && !this.abortLoadingMorePages) {
            return false;
        }
        if (this._targetCollection != null) {
            this._loadingItemsFromScratch = z;
            if (z) {
                resetFilterString();
                this._targetCollection.resetPaging();
                this.items = new ArrayList<>();
                this.displayAssets = new ArrayList<>();
                this._totalAssetsLoaded = 0;
                IAdobeStorageDataSourceDelegate delegate = getDelegate();
                if (delegate != null) {
                    delegate.willLoadDataFromScratch();
                }
            }
            if (this._targetCollection.hasNextPage()) {
                IAdobeStorageDataSourceDelegate delegate2 = getDelegate();
                if (delegate2 != null) {
                    delegate2.willLoadNextPageForExistingCollection();
                }
                return loadNextPage();
            }
            return true;
        }
        IAdobeStorageDataSourceDelegate delegate3 = getDelegate();
        if (delegate3 != null) {
            delegate3.willLoadNextPageForNonExistingCollection();
        }
        this.items = new ArrayList<>();
        this.displayAssets = new ArrayList<>();
        if (this.sortIndexCollator.currentSortState == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState.SORT_STATE_ASCENDING) {
            adobeAssetFolderOrderDirection = AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_ASCENDING;
        } else {
            adobeAssetFolderOrderDirection = AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_DESCENDING;
        }
        if (this.sortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA) {
            adobeAssetFolderOrderBy = AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_NAME;
        } else {
            adobeAssetFolderOrderBy = AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED;
        }
        this._targetCollection = AdobeAssetFolder.getRootOrderedByField(adobeAssetFolderOrderBy, adobeAssetFolderOrderDirection);
        return loadNextPage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<AdobeAsset> RunInternalFilters(ArrayList<AdobeAsset> arrayList) {
        if (this._internalFilters != null) {
            ArrayList<AdobeAsset> arrayList2 = new ArrayList<>();
            for (AdobeAsset adobeAsset : arrayList) {
                if (this._internalFilters == DataSourceInternalFilters.FilterOnlyFolders) {
                    if (adobeAsset instanceof AdobeAssetFolder) {
                        arrayList2.add(adobeAsset);
                    }
                } else if (this._internalFilters == DataSourceInternalFilters.FilterOnlyFiles && (adobeAsset instanceof AdobeAssetFile)) {
                    arrayList2.add(adobeAsset);
                }
            }
            return arrayList2;
        }
        return arrayList;
    }

    public boolean loadNextPage() {
        if ((this.loadingItems && !this.abortLoadingMorePages) || !this._targetCollection.hasNextPage()) {
            return false;
        }
        this.loadingItems = true;
        if (this._pageLimit == 0) {
            this._pageLimit = kItemsPerPageLimit;
        }
        final int i = this._pageLimit;
        this._targetCollection.getNextPage(this._pageLimit, new IAdobeAssetFolderNextPageCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeStorageDataSource.1
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeAssetFolderNextPageCallback
            public void onCompletion(ArrayList<AdobeAsset> arrayList, int i2) {
                ArrayList<AdobeListIndexPath> arrayList2;
                AdobeListSectionsIndexSet adobeListSectionsIndexSet;
                IAdobeStorageDataSourceDelegate delegate;
                int size;
                int i3;
                int size2;
                if (AdobeStorageDataSource.this.abortLoadingMorePages) {
                    AdobeStorageDataSource.this.abortLoadingMorePages = false;
                    return;
                }
                if (AdobeStorageDataSource.this.items == null) {
                    AdobeStorageDataSource.this.items = new ArrayList<>(i2);
                }
                if (arrayList.size() > 0) {
                    arrayList = AdobeStorageDataSource.this.RunInternalFilters(arrayList);
                }
                AdobeStorageDataSource.this._totalAssetsLoaded += arrayList.size();
                if (arrayList.size() > 0) {
                    ArrayList arrayList3 = new ArrayList();
                    if (AdobeStorageDataSource.this._loadingItemsFromScratch) {
                        AdobeStorageDataSource.this.createFreshSortIndexCollator();
                        size = 0;
                        i3 = 0;
                    } else {
                        arrayList3.addAll(AdobeStorageDataSource.this.items);
                        if (AdobeStorageDataSource.this.sortIndexCollator.numberOfSections() > 0) {
                            int iNumberOfSections = AdobeStorageDataSource.this.sortIndexCollator.numberOfSections();
                            i3 = iNumberOfSections;
                            size = AdobeStorageDataSource.this.sortIndexCollator.sectionDataArray.get(iNumberOfSections - 1).size();
                        } else {
                            size = 0;
                            i3 = 0;
                        }
                    }
                    ArrayList<AdobeAsset> arrayList4 = new ArrayList<>(arrayList3);
                    arrayList4.addAll(arrayList);
                    if (AdobeStorageDataSource.this.sortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA) {
                        Collections.sort(arrayList4, new Comparator<AdobeAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeStorageDataSource.1.1
                            @Override // java.util.Comparator
                            public int compare(AdobeAsset adobeAsset, AdobeAsset adobeAsset2) {
                                return AdobeStorageDataSource.this.sortIndexCollator.currentSortState == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState.SORT_STATE_ASCENDING ? adobeAsset.getName().toLowerCase().compareTo(adobeAsset2.getName().toLowerCase()) : adobeAsset2.getName().toLowerCase().compareTo(adobeAsset.getName().toLowerCase());
                            }
                        });
                    }
                    AdobeStorageDataSource.this.sortIndexCollator.createSectionDataFromMaster(arrayList4);
                    if (arrayList3.size() > 0) {
                        ArrayList<ArrayList<AdobeStorageItemSectionData>> arrayList5 = AdobeStorageDataSource.this.sortIndexCollator.sectionDataArray;
                        AdobeListSectionsIndexSet adobeListSectionsIndexSet2 = new AdobeListSectionsIndexSet();
                        ArrayList<AdobeListIndexPath> arrayList6 = new ArrayList<>();
                        if (arrayList5.size() == i3) {
                            int size3 = arrayList5.get(i3 - 1).size();
                            for (int i4 = 0; i4 < size3; i4++) {
                                arrayList6.add(new AdobeListIndexPath(i3 - 1, i4));
                            }
                            arrayList2 = arrayList6;
                            adobeListSectionsIndexSet = adobeListSectionsIndexSet2;
                        } else {
                            if (i3 == 0) {
                                size2 = arrayList5.get(i3).size();
                            } else {
                                size2 = arrayList5.get(i3 - 1).size();
                            }
                            if (size2 > size) {
                                while (size < size2) {
                                    arrayList6.add(new AdobeListIndexPath(i3 - 1, size));
                                    size++;
                                }
                            }
                            int size4 = arrayList5.size();
                            while (i3 < size4) {
                                adobeListSectionsIndexSet2.add(i3);
                                int size5 = arrayList5.get(i3).size();
                                for (int i5 = 0; i5 < size5; i5++) {
                                    arrayList6.add(new AdobeListIndexPath(i3, i5));
                                }
                                i3++;
                            }
                            arrayList2 = arrayList6;
                            adobeListSectionsIndexSet = adobeListSectionsIndexSet2;
                        }
                    } else {
                        arrayList2 = null;
                        adobeListSectionsIndexSet = null;
                    }
                    AdobeStorageDataSource.this.items = arrayList4;
                    AdobeStorageDataSource.this.displayAssets = AdobeStorageDataSource.this.items;
                    AdobeStorageDataSource.this.recreateFilteredAssets = true;
                } else {
                    arrayList2 = null;
                    adobeListSectionsIndexSet = null;
                }
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.CCContainerViewControllerEndRefreshNotification, null));
                if (AdobeStorageAssetSelectionState.isMultiSelectModeActive) {
                }
                if ((AdobeStorageDataSource.this._totalAssetsLoaded != 0 || arrayList.size() != 0 || !AdobeStorageDataSource.this._targetCollection.hasNextPage()) && (delegate = AdobeStorageDataSource.this.getDelegate()) != null) {
                    delegate.didLoadMoreDataWithCount(arrayList.size(), adobeListSectionsIndexSet, arrayList2);
                }
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeStorageDataSourceDidLoadNewPageNotification, null));
                AdobeStorageDataSource.this.loadingItems = false;
                AdobeStorageDataSource.this._loadingItemsFromScratch = false;
                if (AdobeStorageDataSource.this._totalAssetsLoaded >= i || !AdobeStorageDataSource.this._targetCollection.hasNextPage() || AdobeStorageDataSource.this.abortLoadingMorePages) {
                    AdobeStorageDataSource.this._totalAssetsLoaded = 0;
                    IAdobeStorageDataSourceDelegate delegate2 = AdobeStorageDataSource.this.getDelegate();
                    if (delegate2 != null) {
                        delegate2.stoppedLoadingMoreFolders();
                    }
                } else {
                    AdobeStorageDataSource.this.loadNextPage();
                    IAdobeStorageDataSourceDelegate delegate3 = AdobeStorageDataSource.this.getDelegate();
                    if (delegate3 != null) {
                        delegate3.startedLoadingMoreFolders();
                    }
                }
                if (AdobeStorageDataSource.this.filterString != null && AdobeStorageDataSource.this.filterString.length() > 0) {
                    AdobeStorageDataSource.this.filterWithSearchString(AdobeStorageDataSource.this.filterString);
                }
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                IAdobeStorageDataSourceDelegate delegate = AdobeStorageDataSource.this.getDelegate();
                if (delegate != null) {
                    delegate.didFailToLoadMoreDataWithError(adobeAssetException);
                }
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.CCContainerViewControllerEndRefreshNotification, null));
                AdobeStorageDataSource.this.loadingItems = false;
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createFreshSortIndexCollator() {
        this.sortType = AdobeCommonLearnedSettings.lastSortType();
        if (this.sortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA) {
            this.sortIndexCollator = new AdobeStorageAlphaIndexCollation();
            this.sortIndexCollator.currentSortState = AdobeCommonLearnedSettings.lastSortState();
        } else {
            this.sortIndexCollator = new AdobeStorageTimeIndexCollation();
            this.sortIndexCollator.currentSortState = AdobeCommonLearnedSettings.lastSortState();
        }
    }

    public void resetFilterString() {
        this.filterString = null;
    }

    public boolean resetSortIndexCollator() {
        AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType adobeUXAssetBrowserSortTypeLastSortType = AdobeCommonLearnedSettings.lastSortType();
        if (this.sortType == adobeUXAssetBrowserSortTypeLastSortType) {
            return false;
        }
        sortCollectionByType(adobeUXAssetBrowserSortTypeLastSortType, AdobeCommonLearnedSettings.lastSortState());
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageSortProtocol
    public void sortCollectionByType(AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType adobeUXAssetBrowserSortType, AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState adobeUXAssetBrowserSortState) {
        AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection;
        AdobeAssetFolderOrderBy adobeAssetFolderOrderBy;
        if (adobeUXAssetBrowserSortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA) {
            if (!(this.sortIndexCollator instanceof AdobeStorageAlphaIndexCollation)) {
                this.sortIndexCollator = new AdobeStorageAlphaIndexCollation();
            }
        } else if (adobeUXAssetBrowserSortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_TIME && !(this.sortIndexCollator instanceof AdobeStorageTimeIndexCollation)) {
            this.sortIndexCollator = new AdobeStorageTimeIndexCollation();
        }
        this.sortType = adobeUXAssetBrowserSortType;
        this.sortIndexCollator.currentSortState = adobeUXAssetBrowserSortState;
        if (adobeUXAssetBrowserSortState == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState.SORT_STATE_ASCENDING) {
            adobeAssetFolderOrderDirection = AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_ASCENDING;
        } else {
            adobeAssetFolderOrderDirection = AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_DESCENDING;
        }
        if (this.sortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA) {
            adobeAssetFolderOrderBy = AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_NAME;
        } else {
            adobeAssetFolderOrderBy = AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED;
        }
        this._targetCollection.resetPagingOrderedByField(adobeAssetFolderOrderBy, adobeAssetFolderOrderDirection);
        IAdobeStorageDataSourceDelegate delegate = getDelegate();
        if (delegate != null) {
            delegate.didSortByType(adobeUXAssetBrowserSortType, adobeUXAssetBrowserSortState);
        }
        this.filterString = null;
        if (this.loadingItems) {
            this.abortLoadingMorePages = true;
        }
        if (this.loadingItemsWhileFiltering) {
            this.abortLoadingMorePagesWhileFiltering = true;
            IAdobeStorageDataSourceDelegate delegate2 = getDelegate();
            if (delegate2 != null) {
                delegate2.didStopLoadingMorePagesToFilter();
            }
        }
        loadItemsFromScratch(true);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageSearchProtocol
    public void filterWithSearchString(String str) {
        ArrayList<AdobeAsset> arrayList;
        boolean z = false;
        if (this.loadingItems) {
            this.filterString = str;
            return;
        }
        if (str != null && str.length() > 0) {
            if (this.filterString != null && str.length() == this.filterString.length() && !str.contentEquals(this.filterString)) {
                z = true;
            }
            if ((this.filterString != null && str.length() < this.filterString.length()) || z) {
                arrayList = this.items;
            } else {
                arrayList = this.displayAssets;
            }
            this.displayAssets = new ArrayList<>();
            String lowerCase = str.toLowerCase();
            for (AdobeAsset adobeAsset : arrayList) {
                if (adobeAsset.getName().toLowerCase().contains(lowerCase)) {
                    this.displayAssets.add(adobeAsset);
                }
            }
            this.recreateFilteredAssets = true;
            this.filterString = str;
            IAdobeStorageDataSourceDelegate delegate = getDelegate();
            if (delegate != null) {
                delegate.didClearFilterString();
            }
            fetchAndFilterAllAdditionalPages();
            return;
        }
        this.filterString = null;
        this.displayAssets = this.items;
        this.recreateFilteredAssets = true;
        IAdobeStorageDataSourceDelegate delegate2 = getDelegate();
        if (delegate2 != null) {
            delegate2.didClearFilterString();
        }
    }

    public void fetchAndFilterAllAdditionalPages() {
        if (!this.loadingItemsWhileFiltering) {
            if (this._targetCollection.hasNextPage()) {
                this.loadingItemsWhileFiltering = true;
                int i = kItemsPerPageLimit;
                IAdobeStorageDataSourceDelegate delegate = getDelegate();
                if (delegate != null) {
                    delegate.didStartLoadingMorePagesToFilter();
                }
                this._targetCollection.getNextPage(i, new IAdobeAssetFolderNextPageCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeStorageDataSource.2
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeAssetFolderNextPageCallback
                    public void onCompletion(ArrayList<AdobeAsset> arrayList, int i2) {
                        if (AdobeStorageDataSource.this.abortLoadingMorePagesWhileFiltering) {
                            IAdobeStorageDataSourceDelegate delegate2 = AdobeStorageDataSource.this.getDelegate();
                            if (delegate2 != null) {
                                delegate2.didStopLoadingMorePagesToFilter();
                            }
                            AdobeStorageDataSource.this.abortLoadingMorePagesWhileFiltering = false;
                            AdobeStorageDataSource.this.loadingItemsWhileFiltering = false;
                            return;
                        }
                        AdobeStorageDataSource.this.items.addAll(arrayList);
                        AdobeStorageDataSource.this.displayAssets = AdobeStorageDataSource.this.items;
                        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeStorageDataSourceDidLoadNewPageNotification, null));
                        AdobeStorageDataSource.this.loadingItemsWhileFiltering = false;
                        AdobeStorageDataSource.this.filterWithSearchString(AdobeStorageDataSource.this.filterString);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        AdobeStorageDataSource.this.loadingItemsWhileFiltering = false;
                        IAdobeStorageDataSourceDelegate delegate2 = AdobeStorageDataSource.this.getDelegate();
                        if (delegate2 != null) {
                            delegate2.didStopLoadingMorePagesToFilter();
                        }
                    }
                });
                return;
            }
            IAdobeStorageDataSourceDelegate delegate2 = getDelegate();
            if (delegate2 != null) {
                delegate2.didStopLoadingMorePagesToFilter();
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageSearchProtocol
    public void executeSearch(String str) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageSortProtocol
    public AdobeStorageSortIndexCollation getAdobeStorageSortIndexCollation() {
        return this.sortIndexCollator;
    }

    public ArrayList<AdobeAssetFolder> filterForFolders() {
        ArrayList<AdobeAssetFolder> arrayList = new ArrayList<>();
        if (this.displayAssets.size() > 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.displayAssets.size()) {
                    break;
                }
                AdobeAsset adobeAsset = this.displayAssets.get(i2);
                if (adobeAsset instanceof AdobeAssetFolder) {
                    arrayList.add((AdobeAssetFolder) adobeAsset);
                }
                i = i2 + 1;
            }
        }
        return arrayList;
    }
}
