package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonLearnedSettings;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAssetRendition;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.adobe.creativesdk.foundation.storage.AdobePhotoPage;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.adobe.creativesdk.foundation.storage.IAdobePhotoAssetsListRequestCompletionHandler;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobePhotoAssetsDataSource implements IAdobeAssetDataSource {
    private static final int kNumberOfPhotoAssetsPerPage = 20;
    private AdobePhotoCollection _collection;
    private IAdobePhotoAssetsDataSourceDelegate _delegate;
    private boolean _loadingItems;
    private AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType _sortType = AdobeCommonLearnedSettings.lastCollectionSortType();
    private boolean _assetsLoaded = false;
    private boolean _queryForMoreData = false;
    private boolean _initialQueryRequested = false;
    private boolean _emptyCollection = false;
    private AdobePhotoPage _nextRequestedPage = null;
    private int _totalNumberOfPhotos = 0;
    private ArrayList<AdobePhotoAsset> _assets = null;
    private HashSet<String> _uniqueAssets = null;

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public int getCount() {
        if (this._assets != null) {
            return this._assets.size();
        }
        return 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public boolean loadItemsFromScratch() {
        loadFirstPage();
        return true;
    }

    public int getTotalAssetsCount() {
        return this._totalNumberOfPhotos;
    }

    public ArrayList<AdobePhotoAsset> getAssets() {
        return this._assets;
    }

    public boolean getAssetsLoaded() {
        return this._assetsLoaded;
    }

    public boolean isCollectionEmpty() {
        return this._emptyCollection;
    }

    public AdobePhotoAssetsDataSource(AdobePhotoCollection adobePhotoCollection, IAdobePhotoAssetsDataSourceDelegate iAdobePhotoAssetsDataSourceDelegate) {
        this._delegate = iAdobePhotoAssetsDataSourceDelegate;
        this._collection = adobePhotoCollection;
    }

    public ArrayList<AdobePhotoAsset> searchPhotoAssets(String str) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return this._assets;
        }
        ArrayList<AdobePhotoAsset> arrayList = new ArrayList<>();
        if (this._assets != null) {
            for (AdobePhotoAsset adobePhotoAsset : this._assets) {
                if (adobePhotoAsset.getName() != null && adobePhotoAsset.getName().toLowerCase().contains(str.toLowerCase())) {
                    arrayList.add(adobePhotoAsset);
                }
            }
        }
        return arrayList;
    }

    public void setDataSourceDelegate(IAdobePhotoAssetsDataSourceDelegate iAdobePhotoAssetsDataSourceDelegate) {
        this._delegate = iAdobePhotoAssetsDataSourceDelegate;
    }

    public void setSortType(AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType adobePhotoSortType) {
        this._sortType = adobePhotoSortType;
    }

    public void loadFirstPage() {
        if (!this._loadingItems) {
            if (this._assets != null) {
                this._assets.clear();
            }
            if (this._delegate != null) {
                this._delegate.willLoadFirstPage();
            }
            this._loadingItems = true;
            this._assetsLoaded = false;
            this._queryForMoreData = true;
            this._initialQueryRequested = false;
            this._emptyCollection = false;
            this._nextRequestedPage = null;
            this._totalNumberOfPhotos = 0;
            AdobeLogger.log(Level.DEBUG, AdobePhotoAssetsDataSource.class.getSimpleName(), "Show first page for photos with sorting by " + (this._sortType == AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType.ADOBE_PHOTO_SORT_TYPE_TIME ? "time" : "custom order"));
            this._collection.assetCount(new IAdobeGenericCompletionCallback<Integer>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(Integer num) {
                    AdobePhotoAssetsDataSource.this._totalNumberOfPhotos = num.intValue();
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                }
            });
            loadAssetsOnPage(null, this._sortType, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource.3
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoAsset> arrayList) {
                    if (arrayList == null) {
                        AdobePhotoAssetsDataSource.this._emptyCollection = true;
                    } else {
                        AdobePhotoAssetsDataSource.this._emptyCollection = arrayList.size() == 0;
                        AdobePhotoAssetsDataSource.this._assets = arrayList;
                        if (AdobePhotoAssetsDataSource.this._totalNumberOfPhotos == 0) {
                            AdobePhotoAssetsDataSource.this._totalNumberOfPhotos = AdobePhotoAssetsDataSource.this._assets.size();
                        }
                        AdobePhotoAssetsDataSource.this._uniqueAssets = new HashSet(AdobePhotoAssetsDataSource.this._assets.size());
                        Iterator it = AdobePhotoAssetsDataSource.this._assets.iterator();
                        while (it.hasNext()) {
                            AdobePhotoAssetsDataSource.this._uniqueAssets.add(((AdobePhotoAsset) it.next()).getGUID());
                        }
                    }
                    AdobePhotoAssetsDataSource.this._queryForMoreData = true;
                    if (AdobePhotoAssetsDataSource.this._delegate != null) {
                        AdobePhotoAssetsDataSource.this._delegate.loadFirstPageSucceeded();
                    }
                    AdobePhotoAssetsDataSource.this._loadingItems = false;
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource.4
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobePhotoAssetsDataSource.this._queryForMoreData = true;
                    if (AdobePhotoAssetsDataSource.this._delegate != null) {
                        AdobePhotoAssetsDataSource.this._delegate.loadFirstPageFailed(adobeCSDKException);
                    }
                    AdobePhotoAssetsDataSource.this._loadingItems = false;
                }
            });
        }
    }

    public boolean hasMorePages() {
        return (this._initialQueryRequested && this._nextRequestedPage == null) ? false : true;
    }

    private void loadAssetsOnPage(AdobePhotoPage adobePhotoPage, AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType adobePhotoSortType, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (this._queryForMoreData) {
            this._queryForMoreData = false;
            if (this._initialQueryRequested && this._nextRequestedPage == null) {
                this._queryForMoreData = true;
                if (iAdobeGenericCompletionCallback != null) {
                    iAdobeGenericCompletionCallback.onCompletion(null);
                    return;
                }
                return;
            }
            AdobePhotoCollection.AdobePhotoCollectionSort adobePhotoCollectionSort = AdobePhotoCollection.AdobePhotoCollectionSort.ADOBE_PHOTO_COLLECTION_SORT_BY_DATE;
            if (adobePhotoSortType == AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType.ADOBE_PHOTO_SORT_TYPE_CUSTOM) {
                adobePhotoCollectionSort = AdobePhotoCollection.AdobePhotoCollectionSort.ADOBE_PHOTO_COLLECTION_SORT_BY_CUSTOM_ORDER;
            }
            this._collection.listAssetsOnPage(adobePhotoPage, adobePhotoCollectionSort, 20, AdobePhotoCollection.AdobePhotoCollectionFlag.ADOBE_PHOTO_COLLECTION_FLAG_ALL, new IAdobePhotoAssetsListRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource.5
                @Override // com.adobe.creativesdk.foundation.storage.IAdobePhotoAssetsListRequestCompletionHandler
                public void onCompletion(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoPage adobePhotoPage2, AdobePhotoPage adobePhotoPage3) {
                    AdobePhotoAssetsDataSource.this._initialQueryRequested = true;
                    if (AdobePhotoAssetsDataSource.this._nextRequestedPage == null) {
                        AdobePhotoAssetsDataSource.this._nextRequestedPage = adobePhotoPage3;
                        if (iAdobeGenericCompletionCallback != null) {
                            iAdobeGenericCompletionCallback.onCompletion(arrayList);
                            return;
                        }
                        return;
                    }
                    if ((adobePhotoPage3 == null || adobePhotoPage3.isEqualToPage(AdobePhotoAssetsDataSource.this._nextRequestedPage)) && adobePhotoPage3 != null) {
                        AdobePhotoAssetsDataSource.this._nextRequestedPage = null;
                        if (iAdobeGenericCompletionCallback != null) {
                            iAdobeGenericCompletionCallback.onCompletion(null);
                            return;
                        }
                        return;
                    }
                    if (adobePhotoPage2 == null && adobePhotoPage3 == null) {
                        AdobeLogger.log(Level.ERROR, AdobePhotoAssetsDataSource.class.getSimpleName(), "Unexpected state returned from server: no paging history.");
                    }
                    AdobePhotoAssetsDataSource.this._nextRequestedPage = adobePhotoPage3;
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource.6
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    } else {
                        AdobeLogger.log(Level.ERROR, AdobePhotoAssetsDataSource.class.getSimpleName(), "Failed to retrieve the assets.");
                    }
                }
            });
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void loadNextPageOfData() {
        if (!this._loadingItems && !this._assetsLoaded) {
            if (this._queryForMoreData) {
                AdobeLogger.log(Level.DEBUG, AdobePhotoAssetsDataSource.class.getSimpleName(), "Show first page for photos with sorting by " + (this._sortType == AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType.ADOBE_PHOTO_SORT_TYPE_TIME ? "time" : "custom order"));
            }
            if (this._delegate != null) {
                this._delegate.willLoadNextPage();
            }
            loadAssetsOnPage(this._nextRequestedPage, this._sortType, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource.7
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoAsset> arrayList) {
                    if (!AdobePhotoAssetsDataSource.this.appendAssets(arrayList)) {
                        AdobePhotoAssetsDataSource.this._queryForMoreData = true;
                    } else {
                        AdobePhotoAssetsDataSource.this._assetsLoaded = true;
                    }
                    if (AdobePhotoAssetsDataSource.this._delegate != null) {
                        AdobePhotoAssetsDataSource.this._delegate.loadNextPageSucceeded();
                    }
                    AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobePhotoAssetsDataSourceDidLoadNewPageNotification, null));
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource.8
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobePhotoAssetsDataSource.this._queryForMoreData = true;
                    if (AdobePhotoAssetsDataSource.this._delegate != null) {
                        AdobePhotoAssetsDataSource.this._delegate.loadNextPageFailed(adobeCSDKException);
                    }
                    AdobeLogger.log(Level.ERROR, AdobePhotoAssetsDataSource.class.getSimpleName(), "Failed to get more assets");
                }
            });
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void resetDelegate() {
        setDataSourceDelegate(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean appendAssets(ArrayList<AdobePhotoAsset> arrayList) {
        float f2;
        boolean z;
        float f3 = 0.0f;
        if (arrayList == null) {
            return false;
        }
        Iterator<AdobePhotoAsset> it = arrayList.iterator();
        while (true) {
            f2 = f3;
            if (!it.hasNext()) {
                break;
            }
            AdobePhotoAsset next = it.next();
            if (!this._uniqueAssets.contains(next.getGUID())) {
                this._assets.add(next);
                f3 = f2;
            } else {
                f3 = 1.0f + f2;
            }
        }
        if (this._totalNumberOfPhotos == 0) {
            this._totalNumberOfPhotos = this._assets.size();
        }
        if (f2 / arrayList.size() < 0.7d) {
            z = false;
        } else {
            AdobeLogger.log(Level.WARN, AdobePhotoAssetsDataSource.class.getSimpleName(), "More than 70% of the last page had duplicate values. Pulling the next page.");
            this._queryForMoreData = true;
            loadNextPageOfData();
            z = true;
        }
        return z;
    }

    public static void getRenditionForAsset(AdobePhotoAsset adobePhotoAsset, IAdobeGenericRequestCallback<byte[], AdobePhotoException> iAdobeGenericRequestCallback) {
        Map<String, AdobePhotoAssetRendition> renditions = adobePhotoAsset.getRenditions();
        if (renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x) != null) {
            adobePhotoAsset.downloadRendition(renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x), iAdobeGenericRequestCallback);
        } else {
            iAdobeGenericRequestCallback.onCompletion(null);
        }
    }
}
