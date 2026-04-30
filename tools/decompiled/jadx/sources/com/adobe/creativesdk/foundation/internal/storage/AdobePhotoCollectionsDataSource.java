package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAssetRendition;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.adobe.creativesdk.foundation.storage.AdobePhotoPage;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.adobe.creativesdk.foundation.storage.IAdobePhotoAssetsListRequestCompletionHandler;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobePhotoCollectionsDataSource implements IAdobeAssetDataSource {
    private static final int kNumberOfPhotoCollectionsPerPage = 20;
    private AdobePhotoCatalog _catalog;
    private boolean _catalogLoaded;
    private AdobeCloud _cloud;
    private ArrayList<AdobePhotoCollection> _collections;
    private boolean _collectionsLoaded;
    private IAdobePhotoCollectionsDataSourceDelegate _delegate;
    private boolean _emptyCatalog;
    private boolean _initialQueryRequested;
    private String _lastCollectionNameRequested;
    private boolean _queryForMoreData;

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public int getCount() {
        if (this._collections != null) {
            return this._collections.size();
        }
        return 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public boolean loadItemsFromScratch() {
        loadCatalog();
        return true;
    }

    public ArrayList<AdobePhotoCollection> getCollections() {
        return this._collections;
    }

    public boolean getCollectionsLoaded() {
        return this._collectionsLoaded;
    }

    public boolean getCatalogLoaded() {
        return this._catalogLoaded;
    }

    public boolean isCatalogEmpty() {
        return this._emptyCatalog;
    }

    public AdobePhotoCollectionsDataSource(IAdobePhotoCollectionsDataSourceDelegate iAdobePhotoCollectionsDataSourceDelegate, AdobeCloud adobeCloud) {
        this._delegate = null;
        this._catalog = null;
        this._catalogLoaded = false;
        this._queryForMoreData = false;
        this._collectionsLoaded = false;
        this._initialQueryRequested = false;
        this._lastCollectionNameRequested = null;
        this._emptyCatalog = false;
        this._collections = null;
        this._delegate = iAdobePhotoCollectionsDataSourceDelegate;
        this._catalog = null;
        this._catalogLoaded = false;
        this._queryForMoreData = false;
        this._collectionsLoaded = false;
        this._initialQueryRequested = false;
        this._lastCollectionNameRequested = null;
        this._emptyCatalog = false;
        this._collections = null;
        this._cloud = adobeCloud;
    }

    public void setDataSourceDelegate(IAdobePhotoCollectionsDataSourceDelegate iAdobePhotoCollectionsDataSourceDelegate) {
        this._delegate = iAdobePhotoCollectionsDataSourceDelegate;
    }

    public ArrayList<AdobePhotoCollection> searchCollections(String str) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return this._collections;
        }
        ArrayList<AdobePhotoCollection> arrayList = new ArrayList<>();
        if (this._collections != null) {
            for (AdobePhotoCollection adobePhotoCollection : this._collections) {
                if (adobePhotoCollection.getName() != null && adobePhotoCollection.getName().toLowerCase().contains(str.toLowerCase())) {
                    arrayList.add(adobePhotoCollection);
                }
            }
        }
        return arrayList;
    }

    public void loadCatalog() {
        if (this._collections != null) {
            this._collections.clear();
        }
        if (this._delegate != null) {
            this._delegate.willLoadCatalog();
        }
        AdobePhotoCatalog.listCatalogOfType(AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom, this._cloud, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCatalog>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoCatalog> arrayList) {
                if (arrayList.size() > 1) {
                    AdobeLogger.log(Level.WARN, AdobePhotoCollectionsDataSource.class.getSimpleName(), "More than one catalog was unexpected.");
                } else {
                    AdobeLogger.log(Level.DEBUG, AdobePhotoCollectionsDataSource.class.getSimpleName(), "Loaded photo catalog.");
                }
                AdobePhotoCollectionsDataSource.this._catalog = arrayList.get(0);
                AdobePhotoCollectionsDataSource.this._catalogLoaded = true;
                if (AdobePhotoCollectionsDataSource.this._delegate != null) {
                    AdobePhotoCollectionsDataSource.this._delegate.loadCatalogSucceeded(AdobePhotoCollectionsDataSource.this._catalog);
                }
                AdobePhotoCollectionsDataSource.this.loadFirstPage();
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                AdobeLogger.log(Level.ERROR, AdobePhotoCollectionsDataSource.class.getSimpleName(), "Failed to retrive the catalog.");
                if (AdobePhotoCollectionsDataSource.this._delegate != null) {
                    AdobePhotoCollectionsDataSource.this._delegate.loadCatalogFailed(adobeCSDKException);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadFirstPage() {
        if (this._delegate != null) {
            this._delegate.willLoadFirstPage();
        }
        this._queryForMoreData = true;
        this._collectionsLoaded = false;
        this._initialQueryRequested = false;
        this._lastCollectionNameRequested = null;
        if (this._queryForMoreData) {
            AdobeLogger.log(Level.DEBUG, AdobePhotoCollectionsDataSource.class.getSimpleName(), "Show first page of collections.");
        }
        loadCollectionsAfterName(null, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoCollection> arrayList) {
                if (arrayList != null) {
                    AdobePhotoCollectionsDataSource.this._collections = arrayList;
                    AdobePhotoCollectionsDataSource.this._emptyCatalog = AdobePhotoCollectionsDataSource.this._collections.size() == 0;
                    AdobePhotoCollectionsDataSource.this._queryForMoreData = true;
                }
                if (AdobePhotoCollectionsDataSource.this._delegate != null) {
                    AdobePhotoCollectionsDataSource.this._delegate.loadFirstPageSucceeded();
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.4
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                AdobePhotoCollectionsDataSource.this._queryForMoreData = true;
                if (AdobePhotoCollectionsDataSource.this._delegate != null) {
                    AdobePhotoCollectionsDataSource.this._delegate.loadFirstPageFailed(adobeCSDKException);
                }
            }
        });
    }

    private void loadCollectionsAfterName(final String str, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (this._queryForMoreData) {
            this._queryForMoreData = false;
            if (this._initialQueryRequested && this._lastCollectionNameRequested == null) {
                this._queryForMoreData = true;
                if (iAdobeGenericCompletionCallback != null) {
                    iAdobeGenericCompletionCallback.onCompletion(null);
                    return;
                }
                return;
            }
            this._catalog.listCollectionsAfterName(str, 20, false, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.5
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoCollection> arrayList) {
                    AdobePhotoCollectionsDataSource.this._initialQueryRequested = true;
                    AdobePhotoCollectionsDataSource.this._lastCollectionNameRequested = str;
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.6
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    } else {
                        AdobeLogger.log(Level.ERROR, AdobePhotoCollectionsDataSource.class.getSimpleName(), "Failed to retrieve the collection");
                    }
                }
            });
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void loadNextPageOfData() {
        if (!this._collectionsLoaded) {
            if (this._queryForMoreData) {
                AdobeLogger.log(Level.DEBUG, AdobePhotoCollectionsDataSource.class.getSimpleName(), "Show next page of collections.");
            }
            if (this._delegate != null) {
                this._delegate.willLoadNextPage();
            }
            loadCollectionsAfterName(this._lastCollectionNameRequested, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.7
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoCollection> arrayList) {
                    if (arrayList != null) {
                        AdobePhotoCollectionsDataSource.this._collections.addAll(arrayList);
                        AdobePhotoCollectionsDataSource.this._queryForMoreData = true;
                    } else {
                        AdobePhotoCollectionsDataSource.this._collectionsLoaded = true;
                    }
                    if (AdobePhotoCollectionsDataSource.this._delegate != null) {
                        AdobePhotoCollectionsDataSource.this._delegate.loadNextPageOfDataSucceeded();
                    }
                    AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobePhotoCollectionsDataSourceDidLoadNewPageNotification, null));
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.8
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobePhotoCollectionsDataSource.this._queryForMoreData = true;
                    if (AdobePhotoCollectionsDataSource.this._delegate != null) {
                        AdobePhotoCollectionsDataSource.this._delegate.loadNextPageOfDataFailed(adobeCSDKException);
                    }
                    AdobeLogger.log(Level.ERROR, AdobePhotoCollectionsDataSource.class.getSimpleName(), "Failed to get more collctions");
                }
            });
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void resetDelegate() {
        setDataSourceDelegate(null);
    }

    public static void getRenditionForCollection(final AdobePhotoCollection adobePhotoCollection, final IAdobeGenericRequestCallback<byte[], AdobePhotoException> iAdobeGenericRequestCallback) {
        if (adobePhotoCollection.getCoverAsset() != null) {
            Map<String, AdobePhotoAssetRendition> renditions = adobePhotoCollection.getCoverAsset().getRenditions();
            if (renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x) != null) {
                adobePhotoCollection.getCoverAsset().downloadRendition(renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x), iAdobeGenericRequestCallback);
                return;
            } else {
                iAdobeGenericRequestCallback.onCompletion(null);
                return;
            }
        }
        adobePhotoCollection.listAssetsOnPage(null, AdobePhotoCollection.AdobePhotoCollectionSort.ADOBE_PHOTO_COLLECTION_SORT_BY_DATE, 1, AdobePhotoCollection.AdobePhotoCollectionFlag.ADOBE_PHOTO_COLLECTION_FLAG_ALL, new IAdobePhotoAssetsListRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.9
            @Override // com.adobe.creativesdk.foundation.storage.IAdobePhotoAssetsListRequestCompletionHandler
            public void onCompletion(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoPage adobePhotoPage, AdobePhotoPage adobePhotoPage2) {
                if (arrayList != null && arrayList.size() >= 1) {
                    AdobePhotoAsset adobePhotoAsset = arrayList.get(0);
                    adobePhotoCollection.setCoverAsset(adobePhotoAsset);
                    Map<String, AdobePhotoAssetRendition> renditions2 = adobePhotoAsset.getRenditions();
                    if (renditions2.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x) != null) {
                        adobePhotoAsset.downloadRendition(renditions2.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x), iAdobeGenericRequestCallback);
                    } else {
                        iAdobeGenericRequestCallback.onCompletion(null);
                    }
                }
                if (arrayList != null && arrayList.size() == 0) {
                    iAdobeGenericRequestCallback.onCompletion(null);
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource.10
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                iAdobeGenericRequestCallback.onError((AdobePhotoException) adobeCSDKException);
            }
        });
    }
}
